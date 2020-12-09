.class public Lcom/android/server/connectivity/MultipathPolicyTracker;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final OPQUOTA_USER_SETTING_DIVIDER:I = 0x14

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mClock:Ljava/time/Clock;

.field private final mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mNPM:Landroid/net/NetworkPolicyManager;

.field private mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

.field private final mResolver:Landroid/content/ContentResolver;

.field final mSettingsObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-class v0, Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 130
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;)V
    .registers 5

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-virtual {p3}, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;->getClock()Ljava/time/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 137
    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mDeps:Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

    .line 138
    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    .line 139
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;

    iget-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 140
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Lcom/android/server/connectivity/MultipathPolicyTracker$1;)V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/content/Context;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->updateAllMultipathBudgets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/net/NetworkPolicyManager;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method static synthetic access$600(Landroid/net/NetworkPolicy;J)J
    .registers 3

    .line 93
    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getActiveWarning(Landroid/net/NetworkPolicy;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Landroid/net/NetworkPolicy;J)J
    .registers 3

    .line 93
    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getActiveLimit(Landroid/net/NetworkPolicy;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/MultipathPolicyTracker;)J
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getDefaultDailyMultipathQuotaBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static getActiveLimit(Landroid/net/NetworkPolicy;J)J
    .registers 5

    .line 418
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_9

    .line 419
    iget-wide p0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_b

    .line 420
    :cond_9
    const-wide/16 p0, -0x1

    .line 418
    :goto_b
    return-wide p0
.end method

.method private static getActiveWarning(Landroid/net/NetworkPolicy;J)J
    .registers 5

    .line 412
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_9

    .line 413
    iget-wide p0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_b

    .line 414
    :cond_9
    const-wide/16 p0, -0x1

    .line 412
    :goto_b
    return-wide p0
.end method

.method private getDefaultDailyMultipathQuotaBytes()J
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_15

    .line 433
    :try_start_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_14

    return-wide v0

    .line 434
    :catch_14
    move-exception v0

    .line 439
    :cond_15
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private maybeUnregisterTrackMobileCallback()V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_9

    .line 495
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 497
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 498
    return-void
.end method

.method private registerNetworkPolicyListener()V
    .registers 3

    .line 501
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    .line 508
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 509
    return-void
.end method

.method private registerTrackMobileCallback()V
    .registers 5

    .line 448
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 449
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 452
    new-instance v1, Lcom/android/server/connectivity/MultipathPolicyTracker$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 481
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 482
    return-void
.end method

.method private unregisterNetworkPolicyListener()V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 513
    return-void
.end method

.method private updateAllMultipathBudgets()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 489
    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 490
    goto :goto_a

    .line 491
    :cond_1a
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 546
    const-string v0, "MultipathPolicyTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 548
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 549
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 550
    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getQuota()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathBudget()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/net/ConnectivityManager;

    .line 552
    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathPreference()I

    move-result v1

    .line 551
    const-string v5, "MULTIPATH_PREFERENCE_"

    invoke-static {v4, v5, v1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 549
    const-string v1, "Network %s: quota %d, budget %d. Preference: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 553
    goto :goto_12

    .line 554
    :cond_55
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 555
    return-void
.end method

.method public getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;
    .registers 4

    .line 175
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 176
    return-object v0

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 179
    if-eqz p1, :cond_17

    .line 180
    invoke-virtual {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathPreference()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 182
    :cond_17
    return-object v0
.end method

.method public shutdown()V
    .registers 3

    .line 163
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->maybeUnregisterTrackMobileCallback()V

    .line 164
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->unregisterNetworkPolicyListener()V

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 166
    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->shutdown()V

    .line 167
    goto :goto_10

    .line 168
    :cond_20
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 169
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    return-void
.end method

.method public start()V
    .registers 11

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    .line 147
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 150
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->registerTrackMobileCallback()V

    .line 151
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->registerNetworkPolicyListener()V

    .line 152
    nop

    .line 153
    const-string/jumbo v0, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    return-void
.end method
