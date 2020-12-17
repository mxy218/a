.class public Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "DataUsageController"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 58
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "netstats"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 78
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    return-void
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 7

    .line 184
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_8

    goto :goto_23

    .line 185
    :cond_8
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 187
    :cond_f
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_23

    .line 189
    aget-object v3, p0, v2

    if-eqz v3, :cond_20

    .line 190
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    :goto_23
    return-object v0
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .registers 16

    .line 272
    sget-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v0

    .line 273
    :try_start_3
    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 274
    iget-object v3, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v9, 0x10010

    const/4 v10, 0x0

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 276
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private getUsageLevel(Landroid/net/NetworkTemplate;JJ)J
    .registers 13

    const-string v0, "DataUsageController"

    .line 172
    :try_start_2
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 174
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1

    :cond_17
    const-string p0, "Failed to get data usage, no entry data"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    const-string p0, "Failed to get data usage, remote call failed"

    .line 178
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 3

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get data usage, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataUsageController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    invoke-static {v0, v1}, Lcom/android/settingslib/net/DataUsageUtils;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 15

    .line 124
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_f

    .line 127
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_3c

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 130
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 131
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    move-wide v11, v4

    goto :goto_45

    :cond_3c
    const-wide v3, 0x90321000L

    sub-long v3, v1, v3

    move-wide v11, v1

    move-wide v2, v3

    :goto_45
    move-object v5, p0

    move-object v6, p1

    move-wide v7, v2

    move-wide v9, v11

    .line 137
    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/net/DataUsageController;->getUsageLevel(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gez p1, :cond_5a

    const-string p1, "no entry data"

    .line 139
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    return-object p0

    .line 141
    :cond_5a
    new-instance p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct {p1}, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 142
    iput-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 143
    iput-wide v4, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 144
    invoke-direct {p0, v2, v3, v11, v12}, Lcom/android/settingslib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 145
    iput-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    .line 146
    iput-wide v11, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    if-eqz v0, :cond_84

    .line 149
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v3, v1, v6

    if-lez v3, :cond_76

    goto :goto_77

    :cond_76
    move-wide v1, v6

    :goto_77
    iput-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 150
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_80

    goto :goto_81

    :cond_80
    move-wide v0, v6

    :goto_81
    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    goto :goto_8a

    .line 152
    :cond_84
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 154
    :goto_8a
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    if-eqz p0, :cond_94

    .line 155
    invoke-interface {p0}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    :cond_94
    return-object p1
.end method

.method public getDefaultWarningLevel()J
    .registers 5

    .line 99
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00fb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J
    .registers 8

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/net/DataUsageController;->getUsageLevel(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    iget v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    .line 213
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 214
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 218
    :cond_c
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 219
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v0, 0x0

    .line 221
    aget v0, v1, v0

    .line 225
    :cond_25
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public getWifiDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 2

    .line 119
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    return-object p0
.end method

.method public setSubscriptionId(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    return-void
.end method
