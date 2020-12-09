.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mConfig:Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mConfigs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected mDefaultConfig:Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsBootComplete:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field protected final mNotificationManager:Landroid/app/NotificationManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field protected final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mSuppressedEffects:J

.field private mUser:I

.field protected mZenMode:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 7

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 129
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 130
    new-instance v2, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 131
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 132
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 133
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 135
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 136
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 137
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 138
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    new-instance p1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 141
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 142
    new-instance p1, Lcom/android/server/notification/ZenModeFiltering;

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 143
    new-instance p1, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {p1, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 144
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 145
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 5

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object p0
.end method

.method private applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 8

    .line 866
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 868
    invoke-virtual {p0, p2, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 869
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 870
    return-void
.end method

.method private applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 5

    .line 945
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 946
    new-instance p2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p2}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 947
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p2

    .line 948
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    .line 946
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_3a

    .line 949
    :cond_16
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 950
    new-instance p2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p2}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 951
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p2

    .line 952
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p2

    .line 953
    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p2

    .line 954
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    .line 950
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_3a

    .line 956
    :cond_35
    iget-object p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 958
    :goto_3a
    return-void
.end method

.method private cleanUpZenRules()V
    .registers 11

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 772
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 773
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 774
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v4, :cond_4b

    .line 775
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_19
    if-ltz v4, :cond_4b

    .line 776
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 777
    const-wide/32 v6, 0xf731400

    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_53

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_48

    .line 779
    :try_start_34
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v6, :cond_41

    .line 780
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/high16 v7, 0x400000

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_41} :catch_42
    .catchall {:try_start_34 .. :try_end_41} :catchall_53

    .line 784
    :cond_41
    goto :goto_48

    .line 782
    :catch_42
    move-exception v5

    .line 783
    :try_start_43
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 775
    :cond_48
    :goto_48
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 788
    :cond_4b
    const/4 v0, 0x0

    const-string v1, "cleanUpZenRules"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 789
    monitor-exit v2

    .line 790
    return-void

    .line 789
    :catchall_53
    move-exception v0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_53

    throw v0
.end method

.method private computeZenMode()I
    .registers 7

    .line 923
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 924
    :cond_6
    monitor-enter v0

    .line 925
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return v1

    .line 926
    :cond_15
    nop

    .line 927
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 928
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 929
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v4, v5, :cond_5e

    .line 931
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "zen_settings_suggestion_viewed"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5c

    .line 933
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_zen_settings_suggestion"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 936
    :cond_5c
    iget v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 939
    :cond_5e
    goto :goto_22

    .line 940
    :cond_5f
    monitor-exit v0

    return v1

    .line 941
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_61

    throw v1
.end method

.method private dispatchOnConfigChanged()V
    .registers 3

    .line 1099
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1100
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    .line 1101
    goto :goto_6

    .line 1102
    :cond_16
    return-void
.end method

.method private dispatchOnConsolidatedPolicyChanged()V
    .registers 3

    .line 1111
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1112
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged()V

    .line 1113
    goto :goto_6

    .line 1114
    :cond_16
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .registers 3

    .line 1105
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1106
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    .line 1107
    goto :goto_6

    .line 1108
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 3

    .line 1117
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1118
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    .line 1119
    goto :goto_6

    .line 1120
    :cond_16
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 8

    .line 650
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 651
    if-nez p3, :cond_11

    .line 652
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 653
    return-void

    .line 655
    :cond_11
    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Object;

    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 657
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x3

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 658
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x4

    iget v3, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x5

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 659
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x6

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x7

    iget v3, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 660
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    const/16 v0, 0x8

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 661
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/16 v0, 0x9

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    .line 655
    const-string v0, "allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,events=%b,reminders=%b)\n"

    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 662
    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p3, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, " disallow(visualEffects=%s)\n"

    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 663
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  manualRule="

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 664
    iget-object p2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9b

    return-void

    .line 665
    :cond_9b
    iget-object p2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 666
    nop

    :goto_a2
    if-ge v1, p2, :cond_bd

    .line 667
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_ac

    const-string v0, "  automaticRules="

    goto :goto_ae

    :cond_ac
    const-string v0, "                 "

    :goto_ae
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 670
    :cond_bd
    return-void
.end method

.method private findMatchingRule(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 6

    .line 424
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 425
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-object p1

    .line 427
    :cond_b
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 428
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 429
    return-object v0

    .line 431
    :cond_28
    goto :goto_15

    .line 433
    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 538
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 535
    const/16 v2, 0x81

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 539
    if-eqz p1, :cond_26

    .line 540
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 541
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 542
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p1

    .line 545
    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 1

    .line 752
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private getPreviousRingerModeSetting()I
    .registers 4

    .line 883
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 515
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 516
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 519
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 516
    const/16 v2, 0x84

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 520
    if-eqz p1, :cond_35

    .line 521
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1b
    if-ge v0, v1, :cond_35

    .line 522
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 523
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 524
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 525
    return-object v2

    .line 521
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 529
    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method

.method private getZenModeSetting()I
    .registers 4

    .line 873
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isSystemRule(Landroid/app/AutomaticZenRule;)Z
    .registers 3

    .line 509
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 510
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 509
    :goto_19
    return p1
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .registers 5

    .line 224
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_64

    if-gez p1, :cond_7

    goto :goto_64

    .line 225
    :cond_7
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 226
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 228
    if-nez v0, :cond_55

    .line 229
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " generating default config for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4d
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 231
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 233
    :cond_55
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter p1

    .line 234
    const/4 v1, 0x0

    :try_start_59
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 235
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_61

    .line 236
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 237
    return-void

    .line 235
    :catchall_61
    move-exception p2

    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p2

    .line 224
    :cond_64
    :goto_64
    return-void
.end method

.method private populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .registers 6

    .line 549
    if-eqz p3, :cond_2d

    .line 550
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 552
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p3

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 553
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p3

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 554
    iget-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p3, :cond_25

    .line 555
    iget-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2b

    .line 556
    :cond_25
    iget-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :goto_2b
    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 559
    :cond_2d
    iget-boolean p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_38

    .line 560
    iput-boolean v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 562
    :cond_38
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 563
    const/4 p3, 0x0

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 564
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 565
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p3

    iput-boolean p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 566
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result p3

    iput-boolean p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 567
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p3

    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 568
    nop

    .line 569
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result p1

    .line 568
    invoke-static {p1, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result p1

    iput p1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 570
    return-void
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 5

    .line 1123
    nop

    .line 1125
    const v0, 0x1170007

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1126
    :goto_9
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    .line 1127
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_21
    .catchall {:try_start_5 .. :try_end_14} :catchall_1f

    .line 1128
    if-eqz p1, :cond_1a

    .line 1133
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1128
    return-object p1

    .line 1129
    :cond_1a
    goto :goto_9

    .line 1133
    :cond_1b
    :goto_1b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1134
    goto :goto_2a

    .line 1133
    :catchall_1f
    move-exception p1

    goto :goto_30

    .line 1130
    :catch_21
    move-exception p1

    .line 1131
    :try_start_22
    const-string v0, "ZenModeHelper"

    const-string v2, "Error reading default zen mode config from resource"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    goto :goto_1b

    .line 1135
    :goto_2a
    new-instance p1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {p1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object p1

    .line 1133
    :goto_30
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 6

    .line 437
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    if-eqz p3, :cond_1e

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_a

    goto :goto_1e

    .line 438
    :cond_a
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v0

    .line 439
    :cond_13
    iget-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v0

    .line 440
    :cond_1c
    const/4 p1, 0x1

    return p1

    .line 437
    :cond_1e
    :goto_1e
    return v0
.end method

.method private setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V
    .registers 4

    .line 416
    if-nez p2, :cond_3

    return-void

    .line 418
    :cond_3
    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 419
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 420
    iget-object p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string p3, "conditionChanged"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 421
    return-void
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z
    .registers 12

    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 826
    const/4 v2, 0x0

    const-string v3, "ZenModeHelper"

    if-eqz p1, :cond_a5

    :try_start_9
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_a5

    .line 830
    :cond_11
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3f

    .line 832
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget p3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    sget-boolean p2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p2, :cond_3a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setConfigLocked: store config for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_3a} :catch_a3
    .catchall {:try_start_9 .. :try_end_3a} :catchall_a1

    .line 834
    :cond_3a
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    return v6

    .line 837
    :cond_3f
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 839
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 840
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_6a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    :cond_6a
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v4, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 844
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 845
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 844
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    move v4, v6

    goto :goto_82

    :cond_81
    move v4, v2

    .line 846
    :goto_82
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v5}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    .line 847
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 848
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 849
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 851
    :cond_92
    if-eqz v4, :cond_97

    .line 852
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 854
    :cond_97
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v4, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$H;->access$300(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    :try_end_9c
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_9c} :catch_a3
    .catchall {:try_start_3f .. :try_end_9c} :catchall_a1

    .line 855
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    return v6

    .line 860
    :catchall_a1
    move-exception p1

    goto :goto_c8

    .line 856
    :catch_a3
    move-exception p1

    goto :goto_be

    .line 827
    :cond_a5
    :goto_a5
    :try_start_a5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid config in setConfigLocked; "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/SecurityException; {:try_start_a5 .. :try_end_b9} :catch_a3
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_a1

    .line 828
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    return v2

    .line 857
    :goto_be
    :try_start_be
    const-string p2, "Invalid rule in config"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_a1

    .line 858
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 858
    return v2

    .line 860
    :goto_c8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 588
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 589
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 590
    :cond_9
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 591
    :cond_11
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setManualZenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setRingerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_48
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 595
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_74

    .line 596
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 597
    iget-object p1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 598
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result p4

    if-eqz p4, :cond_72

    .line 599
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 601
    :cond_72
    goto :goto_5e

    :cond_73
    goto :goto_83

    .line 603
    :cond_74
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 604
    iput-boolean v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 605
    iput p1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 606
    iput-object p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 607
    iput-object p4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 608
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 610
    :goto_83
    invoke-direct {p0, v1, p3, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_88
    move-exception p1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 4

    .line 888
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 889
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 890
    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_12

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 888
    :goto_12
    const-string/jumbo v1, "zen_mode_ringer_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 891
    return-void
.end method

.method private showZenUpgradeNotification(I)V
    .registers 7

    .line 1304
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1306
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    const/4 v2, 0x1

    const-string/jumbo v3, "show_zen_upgrade_notification"

    const/4 v4, 0x0

    if-eqz v1, :cond_35

    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1311
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "zen_settings_updated"

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_35

    goto :goto_36

    :cond_35
    move v2, v4

    .line 1314
    :goto_36
    if-eqz v0, :cond_41

    .line 1315
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1319
    :cond_41
    if-eqz v2, :cond_59

    .line 1320
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x30

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->createZenUpgradeNotification()Landroid/app/Notification;

    move-result-object v1

    .line 1320
    const-string v2, "ZenModeHelper"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1322
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1325
    :cond_59
    return-void
.end method

.method private updateConsolidatedPolicy(Ljava/lang/String;)V
    .registers 7

    .line 961
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_5

    return-void

    .line 962
    :cond_5
    monitor-enter v0

    .line 963
    :try_start_6
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 964
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_18

    .line 965
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 968
    :cond_18
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 969
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 970
    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 972
    :cond_39
    goto :goto_24

    .line 973
    :cond_3a
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 974
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 975
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 976
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged()V

    .line 977
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v1, p1}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 979
    :cond_52
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_54

    throw p1
.end method

.method private updateDefaultAutomaticRuleNames()V
    .registers 5

    .line 983
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 984
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 985
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407c1

    .line 986
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_4b

    .line 987
    :cond_32
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 988
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407c2

    .line 989
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 991
    :cond_4b
    :goto_4b
    goto :goto_c

    .line 992
    :cond_4c
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .registers 2

    .line 917
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_7

    .line 918
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 920
    :cond_7
    return-void
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 4

    .line 444
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 445
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 446
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snoozing reset for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2b
    const/4 p1, 0x1

    return p1

    .line 449
    :cond_2d
    return v0
.end method

.method private static zenSeverity(I)I
    .registers 3

    .line 1139
    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_b

    .line 1143
    const/4 p0, 0x0

    return p0

    .line 1141
    :cond_b
    return v1

    .line 1142
    :cond_c
    return v0

    .line 1140
    :cond_d
    return v0
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isSystemRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_50

    .line 293
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 294
    if-nez v0, :cond_19

    .line 295
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 297
    :cond_19
    if-eqz v0, :cond_48

    .line 300
    nop

    .line 301
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 v3, -0x1

    if-eqz v2, :cond_29

    .line 302
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.service.zen.automatic.ruleInstanceLimit"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 305
    :cond_29
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v0

    .line 306
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 308
    if-lez v3, :cond_50

    if-lt v3, v0, :cond_40

    goto :goto_50

    .line 309
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rule instance limit exceeded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Lacking enabled CPS or config activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 316
    :try_start_53
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_a2

    .line 319
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_79

    .line 320
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAutomaticZenRule rule= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_79
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 323
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 324
    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 325
    iget-object p1, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {p0, v2, p2, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 327
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 329
    :cond_9a
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Could not create rule"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_a2
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Could not create rule"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :catchall_aa
    move-exception p1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_53 .. :try_end_ac} :catchall_aa

    throw p1
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method protected applyRestrictions()V
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 996
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    .line 997
    :goto_b
    iget v4, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v2

    .line 998
    :goto_13
    iget v6, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1a

    move v6, v3

    goto :goto_1b

    :cond_1a
    move v6, v2

    .line 999
    :goto_1b
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    .line 1000
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v9

    .line 1001
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v10

    .line 1002
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v11

    .line 1003
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v12

    .line 1006
    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_46

    move v13, v3

    goto :goto_47

    :cond_46
    move v13, v2

    .line 1009
    :goto_47
    if-nez v6, :cond_5c

    if-eqz v1, :cond_4f

    if-nez v8, :cond_4f

    if-eqz v9, :cond_5c

    :cond_4f
    iget-wide v8, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v17, 0x2

    and-long v8, v8, v17

    cmp-long v8, v8, v15

    if-eqz v8, :cond_5a

    goto :goto_5c

    :cond_5a
    move v8, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v8, v3

    .line 1013
    :goto_5d
    if-eqz v1, :cond_63

    if-nez v12, :cond_63

    move v9, v3

    goto :goto_64

    :cond_63
    move v9, v2

    .line 1015
    :goto_64
    if-eqz v1, :cond_6a

    if-nez v11, :cond_6a

    move v11, v3

    goto :goto_6b

    :cond_6a
    move v11, v2

    .line 1017
    :goto_6b
    if-nez v6, :cond_74

    if-eqz v1, :cond_72

    if-nez v10, :cond_72

    goto :goto_74

    :cond_72
    move v6, v2

    goto :goto_75

    :cond_74
    :goto_74
    move v6, v3

    .line 1019
    :goto_75
    if-nez v4, :cond_84

    if-eqz v1, :cond_82

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1020
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-eqz v4, :cond_82

    goto :goto_84

    :cond_82
    move v4, v2

    goto :goto_85

    :cond_84
    :goto_84
    move v4, v3

    .line 1022
    :goto_85
    sget-object v10, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v12, v10

    move v14, v2

    :goto_89
    if-ge v14, v12, :cond_102

    aget v15, v10, v14

    .line 1023
    sget-object v5, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1024
    if-ne v5, v7, :cond_9a

    .line 1025
    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_fd

    .line 1026
    :cond_9a
    if-ne v5, v3, :cond_a9

    .line 1027
    if-nez v13, :cond_a3

    if-eqz v4, :cond_a1

    goto :goto_a3

    :cond_a1
    move v5, v2

    goto :goto_a4

    :cond_a3
    :goto_a3
    move v5, v3

    :goto_a4
    invoke-virtual {v0, v1, v5, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_fd

    .line 1028
    :cond_a9
    const/4 v3, 0x2

    if-ne v5, v3, :cond_b8

    .line 1029
    if-nez v8, :cond_b3

    if-eqz v4, :cond_b1

    goto :goto_b3

    :cond_b1
    move v5, v2

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v5, 0x1

    :goto_b4
    invoke-virtual {v0, v1, v5, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_fd

    .line 1030
    :cond_b8
    const/4 v3, 0x4

    if-ne v5, v3, :cond_c7

    .line 1031
    if-nez v9, :cond_c2

    if-eqz v4, :cond_c0

    goto :goto_c2

    :cond_c0
    move v3, v2

    goto :goto_c3

    :cond_c2
    :goto_c2
    const/4 v3, 0x1

    :goto_c3
    invoke-virtual {v0, v1, v3, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_fd

    .line 1032
    :cond_c7
    const/4 v3, 0x5

    if-ne v5, v3, :cond_d6

    .line 1033
    if-nez v11, :cond_d1

    if-eqz v4, :cond_cf

    goto :goto_d1

    :cond_cf
    move v3, v2

    goto :goto_d2

    :cond_d1
    :goto_d1
    const/4 v3, 0x1

    :goto_d2
    invoke-virtual {v0, v1, v3, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_fd

    .line 1034
    :cond_d6
    const/4 v3, 0x6

    if-ne v5, v3, :cond_fa

    .line 1035
    const/16 v3, 0xd

    if-ne v15, v3, :cond_ee

    .line 1037
    if-nez v6, :cond_e4

    if-eqz v4, :cond_e2

    goto :goto_e4

    :cond_e2
    move v3, v2

    goto :goto_e5

    :cond_e4
    :goto_e4
    const/4 v3, 0x1

    :goto_e5
    const/16 v5, 0x1c

    invoke-virtual {v0, v1, v3, v15, v5}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1039
    invoke-virtual {v0, v1, v2, v15, v7}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_fd

    .line 1041
    :cond_ee
    if-nez v6, :cond_f5

    if-eqz v4, :cond_f3

    goto :goto_f5

    :cond_f3
    move v3, v2

    goto :goto_f6

    :cond_f5
    :goto_f5
    const/4 v3, 0x1

    :goto_f6
    invoke-virtual {v0, v1, v3, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_fd

    .line 1044
    :cond_fa
    invoke-virtual {v0, v1, v4, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    .line 1022
    :goto_fd
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_89

    .line 1047
    :cond_102
    return-void
.end method

.method protected applyRestrictions(ZZI)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1064
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1065
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1066
    return-void
.end method

.method protected applyRestrictions(ZZII)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1054
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 1055
    nop

    .line 1056
    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 1054
    :goto_d
    invoke-virtual {v2, p4, p3, p2, p1}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 1058
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    nop

    .line 1060
    return-void

    .line 1058
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected applyZenToRingerMode()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_5

    return-void

    .line 1073
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 1074
    nop

    .line 1075
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v1, :cond_24

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    goto :goto_2e

    .line 1078
    :cond_18
    if-eqz v0, :cond_2e

    .line 1079
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1080
    const/4 v0, 0x0

    goto :goto_2e

    .line 1085
    :cond_23
    goto :goto_2e

    .line 1087
    :cond_24
    if-nez v0, :cond_2e

    .line 1088
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v0

    .line 1089
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1093
    :cond_2e
    :goto_2e
    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 1094
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v2, "ZenModeHelper"

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1096
    :cond_38
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 9

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 469
    const/4 v1, 0x1

    if-eqz v0, :cond_37

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_c

    goto :goto_37

    .line 471
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 473
    return v1

    .line 475
    :cond_17
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 476
    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 477
    array-length v3, v0

    .line 478
    move v4, v2

    :goto_26
    if-ge v4, v3, :cond_36

    .line 479
    aget-object v5, v0, v4

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 480
    return v1

    .line 478
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 484
    :cond_36
    return v2

    .line 470
    :cond_37
    :goto_37
    return v1
.end method

.method protected createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .registers 13

    .line 573
    new-instance v10, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 575
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-wide v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    .line 573
    return-object v10
.end method

.method protected createZenUpgradeNotification()Landroid/app/Notification;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1330
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1331
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1330
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    nop

    .line 1333
    nop

    .line 1334
    nop

    .line 1335
    nop

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1335
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1337
    const v1, 0x10407ce

    .line 1338
    const v2, 0x10407cd

    .line 1339
    const v3, 0x108036e

    goto :goto_3a

    .line 1335
    :cond_31
    const v1, 0x10407cc

    const v2, 0x10407cb

    const v3, 0x1080545

    .line 1342
    :goto_3a
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1343
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1344
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1345
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x108050e

    .line 1346
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1347
    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1348
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1349
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    .line 1350
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1352
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1353
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1354
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1355
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1344
    return-object v0
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    .line 615
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 616
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 617
    :try_start_d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_1f

    .line 618
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 620
    :cond_1f
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 621
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_49

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v5, v5, Landroid/service/notification/Condition;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_49

    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v5, :cond_49

    .line 623
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 625
    :cond_49
    goto :goto_2b

    .line 626
    :cond_4a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 627
    const-wide v1, 0x10500000003L

    iget-wide v3, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 628
    monitor-exit v0

    .line 629
    return-void

    .line 628
    :catchall_64
    move-exception p1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_d .. :try_end_66} :catchall_64

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 636
    const/4 v1, 0x0

    :goto_32
    if-ge v1, v0, :cond_5e

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConfigs[u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 639
    :cond_5e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 640
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 641
    :try_start_6e
    const-string v1, "mConfig"

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 642
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_8e

    .line 644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSuppressedEffects="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 645
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 647
    return-void

    .line 642
    :catchall_8e
    move-exception p1

    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p1
.end method

.method protected evaluateZenMode(Ljava/lang/String;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 895
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_10

    return-void

    .line 897
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 898
    :cond_16
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    .line 899
    :goto_1a
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 900
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v2

    .line 901
    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 902
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 903
    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 904
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    .line 906
    if-eqz p2, :cond_42

    if-ne v2, v1, :cond_3f

    const/4 p1, 0x1

    if-ne v2, p1, :cond_42

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 907
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result p1

    if-eq v0, p1, :cond_42

    .line 908
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 910
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 911
    if-eq v2, v1, :cond_4c

    .line 912
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper$H;->access$400(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 914
    :cond_4c
    return-void
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 282
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 283
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_24

    .line 284
    if-nez p1, :cond_18

    return-object v2

    .line 285
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    return-object p1

    .line 288
    :cond_23
    return-object v2

    .line 283
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .line 796
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 797
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 798
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 805
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_6

    .line 806
    const/4 v0, 0x0

    return-object v0

    .line 808
    :cond_6
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .registers 7

    .line 453
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 454
    return v0

    .line 456
    :cond_4
    nop

    .line 457
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 458
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 459
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 460
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 462
    :cond_32
    goto :goto_14

    .line 463
    :cond_33
    monitor-exit v1

    .line 464
    return v0

    .line 463
    :catchall_35
    move-exception p1

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedEffects()J
    .registers 3

    .line 258
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .registers 2

    .line 262
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method public getZenRules()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 268
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_e

    monitor-exit v1

    return-object v0

    .line 269
    :cond_e
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2f
    goto :goto_1a

    .line 274
    :cond_30
    monitor-exit v1

    .line 275
    return-object v0

    .line 274
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public initZenMode()V
    .registers 3

    .line 187
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_b
    const/4 v0, 0x1

    const-string v1, "init"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 189
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    return p1
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 15

    .line 158
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 161
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public onSystemReady()V
    .registers 4

    .line 192
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-string/jumbo v1, "onSystemReady"

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_c
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1f

    .line 195
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v2}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 197
    :cond_1f
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 198
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$200(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 201
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    .line 202
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 203
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 210
    if-gez p1, :cond_3

    return-void

    .line 211
    :cond_3
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1e
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 213
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3

    .line 206
    const-string/jumbo v0, "onUserSwitched"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3

    .line 216
    const-string/jumbo v0, "onUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 217
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 675
    nop

    .line 677
    if-eqz p1, :cond_ca

    .line 678
    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 679
    iput p3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 680
    iput-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 684
    :cond_e
    nop

    .line 685
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    sget-object v2, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 689
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4d

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_4d

    .line 690
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v6

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 691
    if-eqz p2, :cond_48

    .line 693
    iput-boolean v5, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 694
    iput-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 695
    iput-wide v2, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 698
    :cond_48
    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v8, v6

    and-int/2addr v7, v8

    .line 699
    goto :goto_34

    .line 702
    :cond_4d
    move v7, v6

    :cond_4e
    const/16 v2, 0x8

    const-string/jumbo v3, "readXml"

    if-nez v1, :cond_95

    if-eqz v7, :cond_95

    if-nez p2, :cond_5d

    iget p2, p1, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge p2, v2, :cond_95

    .line 707
    :cond_5d
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 708
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p2, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_70
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 709
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v7, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    goto :goto_70

    .line 711
    :cond_84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reset to default rules"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 715
    :cond_95
    const/4 p2, -0x1

    if-ne p3, p2, :cond_99

    move p3, v5

    .line 716
    :cond_99
    iget p2, p1, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge p2, v2, :cond_aa

    .line 717
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "show_zen_upgrade_notification"

    invoke-static {p2, v1, v6, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_b6

    .line 721
    :cond_aa
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "zen_settings_updated"

    invoke-static {p2, v1, v6, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 724
    :goto_b6
    sget-boolean p2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p2, :cond_bf

    const-string p2, "ZenModeHelper"

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_bf
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter p2

    .line 726
    :try_start_c2
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 727
    monitor-exit p2

    goto :goto_ca

    :catchall_c7
    move-exception p1

    monitor-exit p2
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_c7

    throw p1

    .line 729
    :cond_ca
    :goto_ca
    return-void
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    .line 170
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 361
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 363
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 364
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 365
    if-nez v3, :cond_1c

    monitor-exit v0

    return v2

    .line 366
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 367
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_4a

    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeZenRule zenRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_4a
    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 370
    :cond_52
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Cannot delete rules not owned by your condition provider"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 379
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 380
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_a

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 381
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 382
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_18
    if-ltz v2, :cond_3e

    .line 383
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 384
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 385
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 382
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 388
    :cond_3e
    const/4 p1, 0x0

    invoke-direct {p0, v1, p2, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 389
    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 7

    .line 244
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result p2

    .line 245
    if-eq p2, v0, :cond_2c

    .line 246
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_21
    move-object p1, v0

    :goto_22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2c
    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 5

    .line 404
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 406
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 408
    nop

    .line 409
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRule(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p1

    .line 408
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 6

    .line 394
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 397
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 398
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V

    .line 399
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    .line 817
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 818
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 819
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    .line 813
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p1

    return p1
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 580
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 581
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "show_zen_settings_suggestion"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 5

    .line 759
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_7

    goto :goto_1d

    .line 760
    :cond_7
    monitor-enter v0

    .line 761
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 762
    invoke-virtual {v1, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 763
    const/4 p1, 0x0

    const-string/jumbo v2, "setNotificationPolicy"

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 764
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw p1

    .line 759
    :cond_1d
    :goto_1d
    return-void
.end method

.method setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSuppressedEffects(J)V
    .registers 5

    .line 252
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 253
    :cond_7
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 254
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 255
    return-void
.end method

.method protected setZenModeSetting(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 880
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 175
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 153
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .registers 9

    .line 337
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 339
    :cond_a
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2d

    .line 340
    const-string v1, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutomaticZenRule zenRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 345
    if-eqz p1, :cond_59

    .line 348
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 349
    if-eqz p1, :cond_51

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 354
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 355
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 p2, 0x1

    invoke-direct {p0, v1, p3, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 350
    :cond_51
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Cannot update rules not owned by your condition provider"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rule doesn\'t exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :catchall_61
    move-exception p1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p1
.end method

.method protected updateDefaultZenRules()V
    .registers 6

    .line 489
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 490
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 491
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 494
    if-eqz v2, :cond_76

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-nez v3, :cond_76

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_76

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 497
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale change - updating default zen rule name from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_67
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 501
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    const-string v3, "locale changed"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    .line 505
    :cond_76
    goto :goto_f

    .line 506
    :cond_77
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 734
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 735
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    .line 736
    if-eqz p2, :cond_17

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v3, p4, :cond_17

    .line 737
    goto :goto_22

    .line 739
    :cond_17
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V

    .line 735
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 741
    :cond_25
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method
