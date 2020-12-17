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

.field private static final REASON_CTS_TEST_LIST:[Ljava/lang/String;

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

.field private mDoNotDisturbHelper:Lcom/android/server/notification/MzDoNotDisturbHelper;

.field private mDonotDisturbUpgradeHelper:Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsBootComplete:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field private mMzDonotDisturbCompat:Lcom/android/server/notification/MzDonotDisturbCompat;

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
    .registers 3

    .line 98
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 136
    const-string v0, "android.media.cts"

    const-string v1, "ZenModeVoiceActivity"

    const-string v2, "com.android.cts.verifier"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ZenModeHelper;->REASON_CTS_TEST_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "conditionProviders"  # Lcom/android/server/notification/ConditionProviders;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 145
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 146
    new-instance v2, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 147
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 148
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 149
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 153
    invoke-static {p1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->importConfigFromOldDb(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 154
    new-instance v1, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDonotDisturbUpgradeHelper:Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;

    .line 155
    new-instance v1, Lcom/android/server/notification/MzDonotDisturbCompat;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/notification/MzDonotDisturbCompat;-><init>(Landroid/content/Context;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMzDonotDisturbCompat:Lcom/android/server/notification/MzDonotDisturbCompat;

    .line 156
    new-instance v1, Lcom/android/server/notification/MzDoNotDisturbHelper;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDoNotDisturbHelper:Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 158
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 159
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 160
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 164
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 165
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 166
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 167
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;

    .line 96
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Landroid/content/ComponentName;
    .param p4, "x4"  # Z

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"  # Ljava/lang/Integer;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/net/Uri;
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Z

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;

    .line 96
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ZenModeHelper;

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object v0
.end method

.method private applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "triggeringComponent"  # Landroid/content/ComponentName;
    .param p4, "setRingerMode"  # Z

    .line 913
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 915
    invoke-virtual {p0, p2, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 916
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 917
    return-void
.end method

.method private applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 5
    .param p1, "policy"  # Landroid/service/notification/ZenPolicy;
    .param p2, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1029
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 1030
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1031
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 1030
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_3a

    .line 1033
    :cond_16
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    .line 1035
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1036
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 1035
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_3a

    .line 1041
    :cond_35
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 1043
    :goto_3a
    return-void
.end method

.method private cleanUpZenRules()V
    .registers 11

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 814
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 815
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 816
    .local v3, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v4, :cond_4b

    .line 817
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_4b

    .line 818
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 819
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-wide/32 v6, 0xf731400

    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_54

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_48

    .line 821
    :try_start_34
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v6, :cond_41

    .line 822
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/high16 v8, 0x400000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_41} :catch_42
    .catchall {:try_start_34 .. :try_end_41} :catchall_54

    .line 826
    :cond_41
    goto :goto_48

    .line 824
    :catch_42
    move-exception v6

    .line 825
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_43
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 817
    .end local v5  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_48
    :goto_48
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 830
    .end local v4  # "i":I
    :cond_4b
    const/4 v4, 0x0

    const-string v5, "cleanUpZenRules"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 831
    nop

    .end local v3  # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v2

    .line 832
    return-void

    .line 831
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_54

    throw v3
.end method

.method private computeZenMode()I
    .registers 8

    .line 1007
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1008
    :cond_6
    monitor-enter v0

    .line 1009
    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return v1

    .line 1010
    :cond_15
    const/4 v1, 0x0

    .line 1011
    .local v1, "zen":I
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1012
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1013
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v4, v5, :cond_5f

    .line 1015
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "zen_settings_suggestion_viewed"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5c

    .line 1017
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_zen_settings_suggestion"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1020
    :cond_5c
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v1, v4

    .line 1023
    .end local v3  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5f
    goto :goto_22

    .line 1024
    :cond_60
    monitor-exit v0

    return v1

    .line 1025
    .end local v1  # "zen":I
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private dispatchOnConfigChanged()V
    .registers 3

    .line 1222
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

    .line 1223
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    .line 1224
    .end local v1  # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1225
    :cond_16
    return-void
.end method

.method private dispatchOnConsolidatedPolicyChanged()V
    .registers 3

    .line 1234
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

    .line 1235
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged()V

    .line 1236
    .end local v1  # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1237
    :cond_16
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .registers 3

    .line 1228
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

    .line 1229
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    .line 1230
    .end local v1  # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1231
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 3

    .line 1240
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

    .line 1241
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    .line 1242
    .end local v1  # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_6

    .line 1243
    :cond_16
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 9
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "var"  # Ljava/lang/String;
    .param p3, "config"  # Landroid/service/notification/ZenModeConfig;

    .line 687
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 688
    if-nez p3, :cond_11

    .line 689
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 690
    return-void

    .line 692
    :cond_11
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 694
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 695
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 696
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x7

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 697
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 698
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x9

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    .line 692
    const-string v1, "allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,events=%b,reminders=%b)\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 699
    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p3, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, " disallow(visualEffects=%s)\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 700
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  manualRule="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 701
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    return-void

    .line 702
    :cond_9b
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 703
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a2
    if-ge v1, v0, :cond_bd

    .line 704
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_ac

    const-string v2, "  automaticRules="

    goto :goto_ae

    :cond_ac
    const-string v2, "                 "

    :goto_ae
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 707
    .end local v1  # "i":I
    :cond_bd
    return-void
.end method

.method private findMatchingRule(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 7
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "id"  # Landroid/net/Uri;
    .param p3, "condition"  # Landroid/service/notification/Condition;

    .line 461
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 462
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-object v0

    .line 464
    :cond_b
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 465
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 466
    return-object v1

    .line 468
    .end local v1  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_28
    goto :goto_15

    .line 470
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 8
    .param p1, "configActivity"  # Landroid/content/ComponentName;

    .line 570
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 572
    const/16 v3, 0x81

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 576
    .local v1, "installedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_26

    .line 577
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    if-ge v2, v3, :cond_26

    .line 578
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 579
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v5

    .line 582
    .end local v2  # "i":I
    .end local v3  # "count":I
    .end local v4  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_26
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 2
    .param p0, "config"  # Landroid/service/notification/ZenModeConfig;

    .line 794
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private getPreviousRingerModeSetting(I)I
    .registers 4
    .param p1, "defaultRingerLevel"  # I

    .line 936
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "owner"  # Landroid/content/ComponentName;

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 556
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 553
    const/16 v3, 0x84

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 557
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_35

    .line 558
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_1b
    if-ge v2, v3, :cond_35

    .line 559
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 560
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 561
    .local v5, "info":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 562
    return-object v5

    .line 558
    .end local v4  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5  # "info":Landroid/content/pm/ServiceInfo;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 566
    .end local v2  # "i":I
    .end local v3  # "count":I
    :cond_35
    const/4 v2, 0x0

    return-object v2
.end method

.method private getZenModeSetting()I
    .registers 4

    .line 920
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
    .registers 4
    .param p1, "rule"  # Landroid/app/AutomaticZenRule;

    .line 546
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 547
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 546
    :goto_19
    return v0
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .registers 6
    .param p1, "user"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_64

    if-gez p1, :cond_7

    goto :goto_64

    .line 255
    :cond_7
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 256
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

    .line 257
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 258
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_55

    .line 259
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generating default config for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_4d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 261
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 263
    :cond_55
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 264
    const/4 v2, 0x0

    :try_start_59
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 265
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_61

    .line 266
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 267
    return-void

    .line 265
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2

    .line 254
    .end local v0  # "config":Landroid/service/notification/ZenModeConfig;
    :cond_64
    :goto_64
    return-void
.end method

.method private mzComputeZenMode()I
    .registers 10

    .line 1047
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 1048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1049
    monitor-exit v0

    return v2

    .line 1051
    :cond_a
    const/4 v1, 0x0

    .line 1052
    .local v1, "settingsZen":I
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_29

    .line 1053
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeZenMode mConfig.manualRule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_29
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    goto :goto_32

    :cond_31
    move v3, v2

    .line 1056
    .local v3, "ruleOnExist":Z
    :goto_32
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1057
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1058
    const/4 v3, 0x1

    .line 1059
    sget-boolean v6, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v6, :cond_6b

    .line 1060
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computeZenMode isAutomaticActive = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v5  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_6b
    goto :goto_3e

    .line 1064
    :cond_6c
    if-eqz v3, :cond_82

    .line 1065
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mz_do_not_disturb_interruption_filter"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1068
    .local v4, "interruptionFilter":I
    invoke-static {v4, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v2

    monitor-exit v0

    return v2

    .line 1071
    .end local v4  # "interruptionFilter":I
    :cond_82
    monitor-exit v0

    return v2

    .line 1072
    .end local v1  # "settingsZen":I
    .end local v3  # "ruleOnExist":Z
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw v1
.end method

.method private populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .registers 7
    .param p1, "automaticZenRule"  # Landroid/app/AutomaticZenRule;
    .param p2, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "isNew"  # Z

    .line 586
    if-eqz p3, :cond_2d

    .line 587
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 589
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 590
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 591
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_25

    .line 592
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 593
    :cond_25
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 596
    :cond_2d
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_38

    .line 597
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 599
    :cond_38
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 601
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 602
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 603
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result v0

    iput-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 604
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 605
    nop

    .line 606
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 605
    invoke-static {v0, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    iput v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 607
    return-void
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 6
    .param p1, "resources"  # Landroid/content/res/Resources;

    .line 1246
    const/4 v0, 0x0

    .line 1248
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const v1, 0x1170007

    :try_start_4
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 1249
    :goto_9
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    .line 1250
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_22
    .catchall {:try_start_4 .. :try_end_14} :catchall_20

    .line 1251
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_1a

    .line 1256
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1251
    return-object v1

    .line 1252
    .end local v1  # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1a
    goto :goto_9

    .line 1256
    :cond_1b
    nop

    :goto_1c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1257
    goto :goto_2c

    .line 1256
    :catchall_20
    move-exception v1

    goto :goto_32

    .line 1253
    :catch_22
    move-exception v1

    .line 1254
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v2, "ZenModeHelper"

    const-string v3, "Error reading default zen mode config from resource"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 1256
    nop

    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 1258
    :goto_2c
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v1

    .line 1256
    :goto_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 6
    .param p1, "id"  # Landroid/net/Uri;
    .param p2, "condition"  # Landroid/service/notification/Condition;
    .param p3, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 474
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    if-eqz p3, :cond_1e

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_a

    goto :goto_1e

    .line 475
    :cond_a
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 476
    :cond_13
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    .line 477
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 474
    :cond_1e
    :goto_1e
    return v0
.end method

.method private setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "condition"  # Landroid/service/notification/Condition;

    .line 453
    if-nez p2, :cond_3

    return-void

    .line 455
    :cond_3
    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 456
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 457
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string v1, "conditionChanged"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 458
    return-void
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z
    .registers 12
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "triggeringComponent"  # Landroid/content/ComponentName;
    .param p4, "setRingerMode"  # Z

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 868
    .local v0, "identity":J
    const/4 v2, 0x0

    const-string v3, "ZenModeHelper"

    if-eqz p1, :cond_b2

    :try_start_9
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_b2

    .line 872
    :cond_11
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3f

    .line 874
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 875
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked: store config for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_3a} :catch_b0
    .catchall {:try_start_9 .. :try_end_3a} :catchall_ae

    .line 876
    :cond_3a
    nop

    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 876
    return v6

    .line 879
    :cond_3f
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 881
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
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

    .line 883
    :cond_6a
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v4, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 885
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v4, v5, :cond_7c

    .line 886
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeFiltering;->resetRepeatCalls()V

    .line 891
    :cond_7c
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 892
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 891
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    move v4, v6

    goto :goto_8f

    :cond_8e
    move v4, v2

    .line 893
    .local v4, "policyChanged":Z
    :goto_8f
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v5}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 894
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 895
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 897
    :cond_9d
    if-eqz v4, :cond_a2

    .line 898
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 900
    :cond_a2
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 901
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v5, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$H;->access$300(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    :try_end_a9
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_a9} :catch_b0
    .catchall {:try_start_3f .. :try_end_a9} :catchall_ae

    .line 902
    nop

    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    return v6

    .line 907
    .end local v4  # "policyChanged":Z
    :catchall_ae
    move-exception v2

    goto :goto_d5

    .line 903
    :catch_b0
    move-exception v4

    goto :goto_cb

    .line 869
    :cond_b2
    :goto_b2
    :try_start_b2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid config in setConfigLocked; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/SecurityException; {:try_start_b2 .. :try_end_c6} :catch_b0
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_ae

    .line 870
    nop

    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    return v2

    .line 904
    .local v4, "e":Ljava/lang/SecurityException;
    :goto_cb
    :try_start_cb
    const-string v5, "Invalid rule in config"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_ae

    .line 905
    nop

    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    return v2

    .line 907
    .end local v4  # "e":Ljava/lang/SecurityException;
    :goto_d5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "zenMode"  # I
    .param p2, "conditionId"  # Landroid/net/Uri;
    .param p3, "reason"  # Ljava/lang/String;
    .param p4, "caller"  # Ljava/lang/String;
    .param p5, "setRingerMode"  # Z

    .line 625
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 626
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 627
    :cond_9
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 628
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

    .line 631
    :cond_48
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 632
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_74

    .line 633
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 634
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 635
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 636
    iput-boolean v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 638
    .end local v5  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_72
    goto :goto_5e

    :cond_73
    goto :goto_83

    .line 640
    :cond_74
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 641
    .local v4, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 642
    iput p1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 643
    iput-object p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 644
    iput-object p4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 645
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 647
    .end local v4  # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_83
    invoke-direct {p0, v1, p3, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "previousRingerLevel"  # Ljava/lang/Integer;

    .line 942
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 943
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 944
    if-nez p1, :cond_a

    const/4 v1, 0x0

    goto :goto_12

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 942
    :goto_12
    const-string/jumbo v2, "zen_mode_ringer_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 945
    return-void
.end method

.method private shouldComputerZenMode(Ljava/lang/String;)Z
    .registers 9
    .param p1, "reason"  # Ljava/lang/String;

    .line 987
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 988
    return v0

    .line 991
    :cond_4
    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->REASON_CTS_TEST_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_17

    aget-object v5, v1, v4

    .line 992
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 993
    return v0

    .line 991
    .end local v5  # "str":Ljava/lang/String;
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 996
    :cond_17
    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showZenUpgradeNotification(I)V
    .registers 10
    .param p1, "zen"  # I

    .line 1427
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1429
    .local v0, "isWatch":Z
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    const/4 v2, 0x1

    const-string/jumbo v3, "show_zen_upgrade_notification"

    const/4 v4, 0x0

    if-eqz v1, :cond_35

    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1432
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1434
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "zen_settings_updated"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_35

    goto :goto_36

    :cond_35
    move v2, v4

    :goto_36
    move v1, v2

    .line 1437
    .local v1, "showNotification":Z
    if-eqz v0, :cond_42

    .line 1438
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1442
    :cond_42
    if-eqz v1, :cond_5a

    .line 1443
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x30

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->createZenUpgradeNotification()Landroid/app/Notification;

    move-result-object v6

    .line 1443
    const-string v7, "ZenModeHelper"

    invoke-virtual {v2, v7, v5, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1445
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1448
    :cond_5a
    return-void
.end method

.method private updateConsolidatedPolicy(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"  # Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_5

    return-void

    .line 1078
    :cond_5
    monitor-enter v0

    .line 1079
    :try_start_6
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 1080
    .local v1, "policy":Landroid/service/notification/ZenPolicy;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_18

    .line 1081
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1084
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

    .line 1085
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1086
    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1088
    .end local v3  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_39
    goto :goto_24

    .line 1089
    :cond_3a
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1090
    .local v2, "newPolicy":Landroid/app/NotificationManager$Policy;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1091
    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1092
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged()V

    .line 1093
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, p1}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 1095
    .end local v1  # "policy":Landroid/service/notification/ZenPolicy;
    .end local v2  # "newPolicy":Landroid/app/NotificationManager$Policy;
    :cond_52
    monitor-exit v0

    .line 1096
    return-void

    .line 1095
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private updateDefaultAutomaticRuleNames()V
    .registers 5

    .line 1099
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

    .line 1100
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1101
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407b9

    .line 1102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_4b

    .line 1103
    :cond_32
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1104
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407ba

    .line 1105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1107
    .end local v1  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4b
    :goto_4b
    goto :goto_c

    .line 1108
    :cond_4c
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .registers 2

    .line 1001
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_7

    .line 1002
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 1004
    :cond_7
    return-void
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 4
    .param p1, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 481
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 482
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 483
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snoozing reset for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2b
    const/4 v0, 0x1

    return v0

    .line 486
    :cond_2d
    return v0
.end method

.method private static zenSeverity(I)I
    .registers 3
    .param p0, "zen"  # I

    .line 1262
    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_b

    .line 1266
    const/4 v0, 0x0

    return v0

    .line 1264
    :cond_b
    return v1

    .line 1265
    :cond_c
    return v0

    .line 1263
    :cond_d
    return v0
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "automaticZenRule"  # Landroid/app/AutomaticZenRule;
    .param p2, "reason"  # Ljava/lang/String;

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isSystemRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_50

    .line 323
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 324
    .local v0, "component":Landroid/content/pm/PackageItemInfo;
    if-nez v0, :cond_19

    .line 325
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 327
    :cond_19
    if-eqz v0, :cond_48

    .line 330
    const/4 v2, -0x1

    .line 331
    .local v2, "ruleInstanceLimit":I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_29

    .line 332
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, -0x1

    const-string v5, "android.service.zen.automatic.ruleInstanceLimit"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 335
    :cond_29
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v3

    .line 336
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 338
    .local v3, "newRuleInstanceCount":I
    if-lez v2, :cond_50

    if-lt v2, v3, :cond_40

    goto :goto_50

    .line 339
    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Rule instance limit exceeded"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v2  # "ruleInstanceLimit":I
    .end local v3  # "newRuleInstanceCount":I
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lacking enabled CPS or config activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v0  # "component":Landroid/content/pm/PackageItemInfo;
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 346
    :try_start_53
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_a2

    .line 349
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_79

    .line 350
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

    .line 352
    :cond_79
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 353
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 354
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 355
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {p0, v2, p2, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 357
    iget-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 359
    :cond_9a
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v4, "Could not create rule"

    invoke-direct {v1, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p2  # "reason":Ljava/lang/String;
    throw v1

    .line 347
    .end local v2  # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v3  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p2  # "reason":Ljava/lang/String;
    :cond_a2
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Could not create rule"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p2  # "reason":Ljava/lang/String;
    throw v1

    .line 361
    .restart local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p2  # "reason":Ljava/lang/String;
    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_53 .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 201
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method protected applyRestrictions()V
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1112
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    move v1, v3

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 1113
    .local v1, "zenPriorityOnly":Z
    :goto_a
    iget v4, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 1114
    .local v4, "zenSilence":Z
    :goto_12
    iget v6, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_19

    move v6, v3

    goto :goto_1a

    :cond_19
    const/4 v6, 0x0

    .line 1115
    .local v6, "zenAlarmsOnly":Z
    :goto_1a
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    .line 1116
    .local v8, "allowCalls":Z
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v9

    .line 1117
    .local v9, "allowRepeatCallers":Z
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v10

    .line 1118
    .local v10, "allowSystem":Z
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v11

    .line 1119
    .local v11, "allowMedia":Z
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v12

    .line 1122
    .local v12, "allowAlarms":Z
    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_45

    move v13, v3

    goto :goto_46

    :cond_45
    const/4 v13, 0x0

    .line 1125
    .local v13, "muteNotifications":Z
    :goto_46
    if-nez v6, :cond_5b

    if-eqz v1, :cond_4e

    if-nez v8, :cond_4e

    if-eqz v9, :cond_5b

    :cond_4e
    iget-wide v2, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v17, 0x2

    and-long v2, v2, v17

    cmp-long v2, v2, v15

    if-eqz v2, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v2, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v2, 0x1

    .line 1129
    .local v2, "muteCalls":Z
    :goto_5c
    if-eqz v1, :cond_62

    if-nez v12, :cond_62

    const/4 v3, 0x1

    goto :goto_63

    :cond_62
    const/4 v3, 0x0

    .line 1131
    .local v3, "muteAlarms":Z
    :goto_63
    if-eqz v1, :cond_69

    if-nez v11, :cond_69

    const/4 v15, 0x1

    goto :goto_6a

    :cond_69
    const/4 v15, 0x0

    .line 1133
    .local v15, "muteMedia":Z
    :goto_6a
    if-nez v6, :cond_74

    if-eqz v1, :cond_71

    if-nez v10, :cond_71

    goto :goto_74

    :cond_71
    const/16 v16, 0x0

    goto :goto_76

    :cond_74
    :goto_74
    const/16 v16, 0x1

    .line 1135
    .local v16, "muteSystem":Z
    :goto_76
    if-nez v4, :cond_85

    if-eqz v1, :cond_83

    iget-object v14, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1136
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v14

    if-eqz v14, :cond_83

    goto :goto_85

    :cond_83
    const/4 v14, 0x0

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v14, 0x1

    .line 1138
    .local v14, "muteEverything":Z
    :goto_86
    sget-object v5, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v7, v5

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4  # "zenSilence":Z
    .local v19, "zenSilence":Z
    :goto_8c
    if-ge v4, v7, :cond_d8

    move/from16 v20, v6

    .end local v6  # "zenAlarmsOnly":Z
    .local v20, "zenAlarmsOnly":Z
    aget v6, v5, v4

    .line 1139
    .local v6, "usage":I
    move-object/from16 v21, v5

    sget-object v5, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1140
    .local v5, "suppressionBehavior":I
    move/from16 v22, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_a4

    .line 1141
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_cf

    .line 1142
    :cond_a4
    const/4 v7, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b2

    .line 1143
    if-nez v13, :cond_ae

    if-eqz v14, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v7, 0x0

    :cond_ae
    :goto_ae
    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_cf

    .line 1144
    :cond_b2
    const/4 v7, 0x2

    if-ne v5, v7, :cond_c1

    .line 1145
    if-nez v2, :cond_bc

    if-eqz v14, :cond_ba

    goto :goto_bc

    :cond_ba
    const/4 v7, 0x0

    goto :goto_bd

    :cond_bc
    :goto_bc
    const/4 v7, 0x1

    :goto_bd
    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_cf

    .line 1146
    :cond_c1
    const/4 v7, 0x4

    if-ne v5, v7, :cond_cf

    .line 1147
    if-nez v3, :cond_cb

    if-eqz v14, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v7, 0x0

    goto :goto_cc

    :cond_cb
    :goto_cb
    const/4 v7, 0x1

    :goto_cc
    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    .line 1138
    .end local v5  # "suppressionBehavior":I
    .end local v6  # "usage":I
    :cond_cf
    :goto_cf
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    goto :goto_8c

    .line 1167
    .end local v20  # "zenAlarmsOnly":Z
    .local v6, "zenAlarmsOnly":Z
    :cond_d8
    return-void
.end method

.method protected applyRestrictions(ZZI)V
    .registers 5
    .param p1, "zenPriorityOnly"  # Z
    .param p2, "mute"  # Z
    .param p3, "usage"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1184
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1185
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1186
    return-void
.end method

.method protected applyRestrictions(ZZII)V
    .registers 9
    .param p1, "zenPriorityOnly"  # Z
    .param p2, "mute"  # Z
    .param p3, "usage"  # I
    .param p4, "code"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1174
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 1175
    nop

    .line 1176
    if-eqz p1, :cond_c

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 1174
    :goto_d
    invoke-virtual {v2, p4, p3, p2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 1178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    nop

    .line 1180
    return-void

    .line 1178
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected applyZenToRingerMode()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_5

    return-void

    .line 1193
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 1194
    .local v0, "ringerModeInternal":I
    move v1, v0

    .line 1195
    .local v1, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v2, :cond_24

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    goto :goto_2e

    .line 1198
    :cond_18
    if-eqz v0, :cond_2e

    .line 1199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1200
    const/4 v1, 0x0

    goto :goto_2e

    .line 1205
    :cond_23
    goto :goto_2e

    .line 1207
    :cond_24
    if-nez v0, :cond_2e

    .line 1210
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting(I)I

    move-result v1

    .line 1212
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1216
    :cond_2e
    :goto_2e
    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    .line 1217
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1219
    :cond_38
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 9
    .param p1, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 506
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-eqz v0, :cond_37

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_c

    goto :goto_37

    .line 508
    :cond_c
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_17

    .line 510
    return v1

    .line 512
    :cond_17
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_35

    .line 514
    array-length v3, v2

    .line 515
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v3, :cond_35

    .line 516
    aget-object v5, v2, v4

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 517
    return v1

    .line 515
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 521
    .end local v3  # "packageCount":I
    .end local v4  # "i":I
    :cond_35
    const/4 v1, 0x0

    return v1

    .line 507
    .end local v2  # "packages":[Ljava/lang/String;
    :cond_37
    :goto_37
    return v1
.end method

.method protected createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .registers 13
    .param p1, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 610
    new-instance v10, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 612
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-wide v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    .line 610
    return-object v10
.end method

.method protected createZenUpgradeNotification()Landroid/app/Notification;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1453
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1454
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1453
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const v1, 0x10407c4

    .line 1456
    .local v1, "title":I
    const v2, 0x10407c3

    .line 1457
    .local v2, "content":I
    const v3, 0x1080552

    .line 1458
    .local v3, "drawable":I
    nop

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1458
    invoke-static {v4}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1460
    const v1, 0x10407c6

    .line 1461
    const v2, 0x10407c5

    .line 1462
    const v3, 0x108036c

    .line 1465
    :cond_36
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v4, "onboardingIntent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1467
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1468
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x108050c

    .line 1469
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1470
    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1471
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1472
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    .line 1473
    invoke-static {v7, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1475
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1476
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1477
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1478
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1479
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 1467
    return-object v5
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 652
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 653
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 654
    :try_start_d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_1f

    .line 655
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 657
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

    .line 658
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_49

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v5, v5, Landroid/service/notification/Condition;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_49

    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v5, :cond_49

    .line 660
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 662
    .end local v4  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_49
    goto :goto_2b

    .line 663
    :cond_4a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 664
    const-wide v1, 0x10500000003L

    iget-wide v3, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 665
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_d .. :try_end_66} :catchall_64

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 673
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v0, :cond_61

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConfigs[u="

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

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 676
    .end local v1  # "i":I
    :cond_61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 677
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 678
    :try_start_72
    const-string/jumbo v2, "mConfig"

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 679
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_94

    .line 681
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSuppressedEffects="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 682
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 684
    return-void

    .line 679
    :catchall_94
    move-exception v2

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v2
.end method

.method protected evaluateZenMode(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "setRingerMode"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 949
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_10

    return-void

    .line 951
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 952
    :cond_16
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    :goto_1a
    nop

    .line 953
    .local v0, "policyHashBefore":I
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 957
    .local v1, "zenBefore":I
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldComputerZenMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 958
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v2

    .local v2, "zen":I
    goto :goto_2c

    .line 960
    .end local v2  # "zen":I
    :cond_28
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->mzComputeZenMode()I

    move-result v2

    .line 963
    .restart local v2  # "zen":I
    :goto_2c
    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 965
    if-nez v2, :cond_36

    .line 966
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeFiltering;->resetRepeatCalls()V

    .line 969
    :cond_36
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 970
    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 972
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    .line 979
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 980
    if-eq v2, v1, :cond_4d

    .line 981
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper$H;->access$400(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 983
    :cond_4d
    return-void
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 312
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 313
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_24

    .line 314
    if-nez v1, :cond_18

    return-object v2

    .line 315
    :cond_18
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0

    .line 318
    :cond_23
    return-object v2

    .line 313
    .end local v1  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .line 838
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 839
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 840
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_6

    .line 848
    const/4 v0, 0x0

    return-object v0

    .line 850
    :cond_6
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "cn"  # Landroid/content/ComponentName;

    .line 490
    if-nez p1, :cond_4

    .line 491
    const/4 v0, 0x0

    return v0

    .line 493
    :cond_4
    const/4 v0, 0x0

    .line 494
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 495
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

    .line 496
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 497
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 499
    .end local v3  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_32
    goto :goto_14

    .line 500
    :cond_33
    monitor-exit v1

    .line 501
    return v0

    .line 500
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 790
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedEffects()J
    .registers 3

    .line 288
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .registers 2

    .line 292
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .line 270
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

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 298
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_e

    monitor-exit v1

    return-object v0

    .line 299
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

    .line 300
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 301
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2f
    goto :goto_1a

    .line 304
    :cond_30
    monitor-exit v1

    .line 305
    return-object v0

    .line 304
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public initZenMode()V
    .registers 3

    .line 209
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_c
    const/4 v0, 0x1

    const-string/jumbo v1, "init"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 211
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 187
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 15
    .param p1, "userHandle"  # Landroid/os/UserHandle;
    .param p2, "extras"  # Landroid/os/Bundle;
    .param p3, "validator"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"  # I
    .param p5, "timeoutAffinity"  # F

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 181
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

    move-result v1

    monitor-exit v0

    return v1

    .line 183
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onSystemReady()V
    .registers 3

    .line 214
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-string/jumbo v1, "onSystemReady"

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_c
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 223
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 224
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$200(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 225
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 227
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    .line 228
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDoNotDisturbHelper:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->onSystemReady()V

    .line 231
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMzDonotDisturbCompat:Lcom/android/server/notification/MzDonotDisturbCompat;

    invoke-virtual {v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->onSystemReady()V

    .line 233
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "user"  # I

    .line 240
    if-gez p1, :cond_3

    return-void

    .line 241
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

    .line 242
    :cond_1e
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 243
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "user"  # I

    .line 236
    const-string/jumbo v0, "onUserSwitched"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 237
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3
    .param p1, "user"  # I

    .line 246
    const-string/jumbo v0, "onUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 247
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .registers 20
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"  # Z
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    move-object/from16 v1, p0

    move/from16 v0, p3

    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 712
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v3, "readXml"

    .line 715
    .local v3, "reason":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/notification/ZenModeHelper;->mDonotDisturbUpgradeHelper:Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;

    if-eqz v4, :cond_12

    .line 716
    invoke-virtual {v4, v2}, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->onUpgrade(Landroid/service/notification/ZenModeConfig;)V

    .line 719
    :cond_12
    if-eqz v2, :cond_d7

    .line 720
    const/4 v4, 0x0

    if-eqz p2, :cond_1b

    .line 721
    iput v0, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 722
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 726
    :cond_1b
    const/4 v5, 0x1

    .line 727
    .local v5, "allRulesDisabled":Z
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    sget-object v7, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    .line 730
    .local v6, "hasDefaultRules":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 731
    .local v7, "time":J
    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_59

    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_59

    .line 732
    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 733
    .local v12, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz p2, :cond_54

    .line 735
    iput-boolean v10, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 736
    iput-object v4, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 737
    iput-wide v7, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 740
    :cond_54
    iget-boolean v13, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v13, v11

    and-int/2addr v5, v13

    .line 741
    .end local v12  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_40

    .line 744
    :cond_59
    const/16 v9, 0x8

    if-nez v6, :cond_9f

    if-eqz v5, :cond_9f

    if-nez p2, :cond_65

    iget v12, v2, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge v12, v9, :cond_9f

    .line 749
    :cond_65
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iput-object v12, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 750
    iget-object v12, v1, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_78
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 751
    .local v13, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v14, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .end local v13  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_78

    .line 753
    :cond_8c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", reset to default rules"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_a0

    .line 757
    :cond_9f
    move-object v12, v3

    .end local v3  # "reason":Ljava/lang/String;
    .local v12, "reason":Ljava/lang/String;
    :goto_a0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_a4

    goto :goto_a5

    :cond_a4
    move v10, v0

    .line 758
    .end local p3  # "userId":I
    .local v10, "userId":I
    :goto_a5
    iget v0, v2, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge v0, v9, :cond_b6

    .line 759
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "show_zen_upgrade_notification"

    invoke-static {v0, v3, v11, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_c2

    .line 763
    :cond_b6
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zen_settings_updated"

    invoke-static {v0, v3, v11, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 766
    :goto_c2
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_cb

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_cb
    iget-object v9, v1, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v9

    .line 768
    :try_start_ce
    invoke-virtual {v1, v2, v4, v12}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 769
    monitor-exit v9

    move v0, v10

    goto :goto_d8

    :catchall_d4
    move-exception v0

    monitor-exit v9
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d4

    throw v0

    .line 719
    .end local v5  # "allRulesDisabled":Z
    .end local v6  # "hasDefaultRules":Z
    .end local v7  # "time":J
    .end local v10  # "userId":I
    .end local v12  # "reason":Ljava/lang/String;
    .restart local v3  # "reason":Ljava/lang/String;
    .restart local p3  # "userId":I
    :cond_d7
    move-object v12, v3

    .line 771
    .end local v3  # "reason":Ljava/lang/String;
    .end local p3  # "userId":I
    .local v0, "userId":I
    .restart local v12  # "reason":Ljava/lang/String;
    :goto_d8
    return-void
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 191
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    .line 192
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "reason"  # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 393
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 394
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 395
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v3, :cond_1c

    monitor-exit v0

    return v2

    .line 396
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 397
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_4a

    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_4a
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, p2, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 400
    :cond_52
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot delete rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1  # "id":Ljava/lang/String;
    .end local p2  # "reason":Ljava/lang/String;
    throw v2

    .line 404
    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v3  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1  # "id":Ljava/lang/String;
    .restart local p2  # "reason":Ljava/lang/String;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "reason"  # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 411
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 412
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_4f

    .line 413
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 415
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 416
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v6, :cond_3b

    .line 417
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 420
    :cond_3b
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 422
    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 412
    .end local v4  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5  # "pkg":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 425
    .end local v2  # "i":I
    :cond_4f
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 426
    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 205
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "filter"  # I

    .line 274
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v1

    .line 275
    .local v1, "newZen":I
    if-eq v1, v0, :cond_2d

    .line 276
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_f
    move-object v2, v0

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_22
    move-object v4, v0

    :goto_23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_2d
    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "ruleDefinition"  # Landroid/net/Uri;
    .param p2, "condition"  # Landroid/service/notification/Condition;

    .line 441
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 443
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 445
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    nop

    .line 446
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRule(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    .line 445
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V

    .line 448
    monitor-exit v0

    .line 449
    return-void

    .line 448
    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "condition"  # Landroid/service/notification/Condition;

    .line 431
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 434
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 435
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V

    .line 436
    monitor-exit v0

    .line 437
    return-void

    .line 436
    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"  # Landroid/content/ComponentName;
    .param p3, "reason"  # Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 860
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 861
    monitor-exit v0

    .line 862
    return-void

    .line 861
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"  # Landroid/content/ComponentName;
    .param p3, "reason"  # Ljava/lang/String;

    .line 855
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "zenMode"  # I
    .param p2, "conditionId"  # Landroid/net/Uri;
    .param p3, "caller"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 617
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 618
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_zen_settings_suggestion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 6
    .param p1, "policy"  # Landroid/app/NotificationManager$Policy;

    .line 801
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_7

    goto :goto_1e

    .line 802
    :cond_7
    monitor-enter v0

    .line 803
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 804
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v1, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 805
    const/4 v2, 0x0

    const-string/jumbo v3, "setNotificationPolicy"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 806
    nop

    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw v1

    .line 801
    :cond_1e
    :goto_1e
    return-void
.end method

.method setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"  # [Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setSuppressedEffects(J)V
    .registers 5
    .param p1, "suppressedEffects"  # J

    .line 282
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 283
    :cond_7
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 284
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 285
    return-void
.end method

.method protected setZenModeSetting(I)V
    .registers 4
    .param p1, "zen"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 927
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 197
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .registers 9
    .param p1, "ruleId"  # Ljava/lang/String;
    .param p2, "automaticZenRule"  # Landroid/app/AutomaticZenRule;
    .param p3, "reason"  # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 369
    :cond_a
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2d

    .line 370
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

    .line 373
    :cond_2d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 375
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-eqz p1, :cond_59

    .line 378
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 379
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_51

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 384
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 385
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v4, 0x1

    invoke-direct {p0, v1, p3, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 380
    :cond_51
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot update rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1  # "ruleId":Ljava/lang/String;
    .end local p2  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3  # "reason":Ljava/lang/String;
    throw v2

    .line 376
    .end local v3  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1  # "ruleId":Ljava/lang/String;
    .restart local p2  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3  # "reason":Ljava/lang/String;
    :cond_59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rule doesn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1  # "ruleId":Ljava/lang/String;
    .end local p2  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3  # "reason":Ljava/lang/String;
    throw v2

    .line 386
    .end local v1  # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local p0  # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1  # "ruleId":Ljava/lang/String;
    .restart local p2  # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3  # "reason":Ljava/lang/String;
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v1
.end method

.method protected updateDefaultZenRules()V
    .registers 7

    .line 526
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 527
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 528
    .local v1, "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 531
    .local v2, "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_77

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-nez v3, :cond_77

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_77

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 533
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 534
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

    .line 537
    :cond_67
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 538
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    const-string/jumbo v5, "locale changed"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    .line 542
    .end local v1  # "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v2  # "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_77
    goto :goto_f

    .line 543
    :cond_78
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;I)V
    .registers 9
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"  # Z
    .param p3, "version"  # Ljava/lang/Integer;
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 777
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_25

    .line 778
    if-eqz p2, :cond_17

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v3, p4, :cond_17

    .line 779
    goto :goto_22

    .line 781
    :cond_17
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V

    .line 777
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 783
    .end local v1  # "n":I
    .end local v2  # "i":I
    :cond_25
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method
