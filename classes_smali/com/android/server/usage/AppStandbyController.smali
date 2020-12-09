.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyController$SettingsObserver;,
        Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;,
        Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;,
        Lcom/android/server/usage/AppStandbyController$Injector;,
        Lcom/android/server/usage/AppStandbyController$PackageReceiver;,
        Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;,
        Lcom/android/server/usage/AppStandbyController$Lock;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final DEFAULT_PREDICTION_TIMEOUT:J = 0x2932e00L

.field static final ELAPSED_TIME_THRESHOLDS:[J

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field static final MSG_REPORT_SYNC_SCHEDULED:I = 0xc

.field static final MSG_UPDATE_STABLE_CHARGING:I = 0xe

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field static final SCREEN_TIME_THRESHOLDS:[J

.field private static final TAG:Ljava/lang/String; = "AppStandbyController"

.field static final THRESHOLD_BUCKETS:[I

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field static final sStandbyUpdatePool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveAdminApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mActiveAdminApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field volatile mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation
.end field

.field private final mAppIdleLock:Ljava/lang/Object;

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoleWindowMillis:J

.field mAppIdleTempParoled:Z

.field mAppStandbyElapsedThresholds:[J

.field mAppStandbyScreenThresholds:[J

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCharging:Z

.field mChargingStable:Z

.field mCheckIdleIntervalMillis:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mExemptedSyncScheduledDozeTimeoutMillis:J

.field mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field mExemptedSyncStartTimeoutMillis:J

.field private final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field private mHaveCarrierPrivilegedApps:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation
.end field

.field mInitialForegroundServiceStartTimeoutMillis:J

.field mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field private mLastAppIdleParoledTime:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field mNotificationSeenTimeoutMillis:J

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageAccessListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingInitializeDefaults:Z

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPredictionTimeoutMillis:J

.field mStableChargingThresholdMillis:J

.field mStrongUsageTimeoutMillis:J

.field mSyncAdapterTimeoutMillis:J

.field mSystemInteractionTimeoutMillis:J

.field private mSystemServicesReady:Z

.field mSystemUpdateUsageTimeoutMillis:J

.field mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 135
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    .line 142
    new-array v1, v0, [J

    fill-array-data v1, :array_32

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    .line 149
    new-array v1, v0, [I

    fill-array-data v1, :array_46

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    return-void

    :array_1e
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
    .end array-data

    :array_32
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
    .end array-data

    :array_46
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 324
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    .line 325
    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .registers 13

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 189
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 210
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 211
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 1804
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1806
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1815
    new-instance v0, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 328
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 329
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 330
    new-instance p1, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 331
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 332
    new-instance p1, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    .line 334
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.CHARGING"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 335
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 340
    :try_start_86
    new-instance v1, Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 341
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 342
    monitor-exit p1
    :try_end_9a
    .catchall {:try_start_86 .. :try_end_9a} :catchall_c4

    .line 344
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string/jumbo p1, "package"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v6, p0, v0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 352
    return-void

    .line 342
    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit p1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v0
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 125
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .registers 6

    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppStandbyController;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .registers 22

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p4

    if-gtz p3, :cond_13

    .line 656
    :try_start_a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_11

    .line 661
    goto :goto_15

    .line 657
    :catch_11
    move-exception v0

    .line 660
    return-void

    .line 654
    :cond_13
    move/from16 v1, p3

    .line 663
    :goto_15
    nop

    .line 664
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 663
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result v1

    .line 670
    if-eqz v1, :cond_47

    .line 671
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v12

    .line 672
    :try_start_23
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v6, 0x5

    const/16 v7, 0x100

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 674
    monitor-exit v12
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_44

    .line 675
    const/4 v6, 0x5

    const/16 v7, 0x100

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_e2

    .line 674
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v12
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0

    .line 678
    :cond_47
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v12

    .line 679
    :try_start_4a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 680
    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 682
    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 683
    const v3, 0xff00

    and-int/2addr v3, v2

    .line 687
    const/16 v4, 0x400

    if-ne v3, v4, :cond_5c

    .line 688
    monitor-exit v12

    return-void

    .line 690
    :cond_5c
    iget v4, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 691
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 692
    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v7

    .line 694
    const/16 v13, 0x100

    const/16 v14, 0x200

    if-eq v3, v13, :cond_76

    const/16 v13, 0x300

    if-eq v3, v13, :cond_76

    if-eq v3, v14, :cond_76

    if-eqz v7, :cond_8c

    .line 699
    :cond_76
    if-nez v7, :cond_87

    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v2, v5, :cond_87

    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v3, 0x28

    if-gt v2, v3, :cond_87

    .line 701
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 702
    const/16 v2, 0x501

    goto :goto_8c

    .line 707
    :cond_87
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v6

    .line 712
    move v2, v14

    .line 717
    :cond_8c
    :goto_8c
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v13

    .line 718
    if-lt v6, v5, :cond_a4

    move/from16 p3, v4

    iget-wide v3, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v3, v3, v13

    if-lez v3, :cond_a6

    .line 720
    nop

    .line 721
    iget v1, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move/from16 v4, p3

    move v14, v1

    move v13, v5

    goto :goto_c1

    .line 718
    :cond_a4
    move/from16 p3, v4

    .line 725
    :cond_a6
    const/16 v3, 0x14

    if-lt v6, v3, :cond_bd

    iget-wide v4, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_bd

    .line 727
    nop

    .line 729
    move/from16 v4, p3

    if-ne v3, v4, :cond_b8

    .line 730
    iget v1, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_ba

    .line 731
    :cond_b8
    const/16 v1, 0x307

    :goto_ba
    move v14, v1

    move v13, v3

    goto :goto_c1

    .line 725
    :cond_bd
    move/from16 v4, p3

    .line 740
    move v14, v2

    move v13, v6

    :goto_c1
    if-lt v4, v13, :cond_c5

    if-eqz v7, :cond_e1

    .line 741
    :cond_c5
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v13

    move v7, v14

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 743
    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v13

    move v7, v14

    move v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 746
    :cond_e1
    monitor-exit v12

    .line 748
    :goto_e2
    return-void

    .line 746
    :catchall_e3
    move-exception v0

    monitor-exit v12
    :try_end_e5
    .catchall {:try_start_4a .. :try_end_e5} :catchall_e3

    throw v0
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 1358
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1359
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1364
    return-void
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 3

    .line 1367
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v0

    .line 1368
    if-eqz p1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .registers 7

    .line 1009
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1011
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .registers 4

    .line 1334
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_a

    .line 1336
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsLocked()V

    .line 1338
    :cond_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_16

    .line 1339
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1341
    :cond_16
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1342
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 4

    .line 1328
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method private maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .registers 15

    .line 760
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 763
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object p1

    .line 766
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    :cond_1f
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 6

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2

    .line 837
    if-eqz p3, :cond_12

    .line 838
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v0, 0xf

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_19

    .line 841
    :cond_12
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v0, 0x10

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 845
    :goto_19
    goto :goto_1b

    .line 844
    :catch_1a
    move-exception p1

    .line 846
    :goto_1b
    return-void
.end method

.method private postNextParoleTimeout(JZ)V
    .registers 10

    .line 558
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 562
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    sub-long/2addr v2, p1

    .line 563
    if-eqz p3, :cond_11

    .line 566
    iget-wide p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v2, p1

    .line 568
    :cond_11
    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-gez p3, :cond_18

    .line 569
    goto :goto_19

    .line 568
    :cond_18
    move-wide p1, v2

    .line 571
    :goto_19
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p3, v1, p1, p2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    return-void
.end method

.method private postParoleEndTimeout()V
    .registers 5

    .line 576
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 577
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 578
    return-void
.end method

.method private postParoleStateChanged()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 583
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 584
    return-void
.end method

.method private predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .registers 8

    .line 752
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 753
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long p1, p2, v0

    if-lez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 752
    :goto_1a
    return p1
.end method

.method private usageEventToSubReason(I)I
    .registers 5

    .line 939
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_29

    const/4 v2, 0x6

    if-eq p1, v2, :cond_28

    const/4 v0, 0x7

    if-eq p1, v0, :cond_26

    const/16 v0, 0xa

    if-eq p1, v0, :cond_25

    const/16 v1, 0x13

    if-eq p1, v1, :cond_22

    const/16 v1, 0xd

    if-eq p1, v1, :cond_21

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1e

    .line 949
    const/4 p1, 0x0

    return p1

    .line 945
    :cond_1e
    const/16 p1, 0x9

    return p1

    .line 946
    :cond_21
    return v0

    .line 948
    :cond_22
    const/16 p1, 0xf

    return p1

    .line 944
    :cond_25
    return v1

    .line 943
    :cond_26
    const/4 p1, 0x3

    return p1

    .line 942
    :cond_28
    return v0

    .line 941
    :cond_29
    const/4 p1, 0x5

    return p1

    .line 940
    :cond_2b
    const/4 p1, 0x4

    return p1
.end method

.method private waitForAdminData()V
    .registers 5

    .line 1311
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1312
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 1315
    :cond_17
    return-void
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .registers 6

    .line 1283
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1285
    if-nez v1, :cond_17

    .line 1286
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1287
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1289
    :cond_17
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1290
    monitor-exit v0

    .line 1291
    return-void

    .line 1290
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4

    .line 1015
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1016
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1017
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_10
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method checkIdleStates(I)Z
    .registers 20

    .line 609
    move-object/from16 v0, p0

    move/from16 v7, p1

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v8, 0x0

    if-nez v1, :cond_a

    .line 610
    return v8

    .line 615
    :cond_a
    :try_start_a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v9

    .line 616
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1a

    .line 617
    invoke-static {v9, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_5c

    if-nez v1, :cond_1a

    .line 618
    return v8

    .line 622
    :cond_1a
    nop

    .line 624
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 625
    move v13, v8

    :goto_22
    array-length v1, v9

    if-ge v13, v1, :cond_5a

    .line 626
    aget v14, v9, v13

    .line 627
    if-eq v7, v10, :cond_2c

    if-eq v7, v14, :cond_2c

    .line 628
    goto :goto_57

    .line 633
    :cond_2c
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v14}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v15

    .line 636
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    .line 637
    move v6, v8

    :goto_39
    if-ge v6, v5, :cond_57

    .line 638
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 639
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 640
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    move v3, v14

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    .line 637
    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_39

    .line 625
    :cond_57
    :goto_57
    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    .line 648
    :cond_5a
    const/4 v0, 0x1

    return v0

    .line 620
    :catch_5c
    move-exception v0

    .line 621
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method checkParoleTimeout()V
    .registers 13

    .line 792
    nop

    .line 793
    nop

    .line 794
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 795
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 796
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 798
    :goto_15
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 799
    :try_start_18
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v4

    .line 800
    iget-boolean v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v6, :cond_45

    .line 801
    iget-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long v6, v4, v6

    .line 802
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_42

    .line 804
    if-eqz v0, :cond_30

    .line 806
    move v0, v2

    goto :goto_46

    .line 808
    :cond_30
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    iget-wide v10, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_3b

    .line 811
    move v0, v2

    goto :goto_46

    .line 814
    :cond_3b
    nop

    .line 815
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    move v0, v1

    move v1, v2

    goto :goto_46

    .line 820
    :cond_42
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 823
    :cond_45
    move v0, v1

    :goto_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_58

    .line 824
    if-eqz v1, :cond_52

    .line 825
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 827
    :cond_52
    if-eqz v0, :cond_57

    .line 829
    invoke-virtual {p0, v2}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 831
    :cond_57
    return-void

    .line 823
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .registers 5

    .line 1412
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1413
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 1414
    monitor-exit v0

    .line 1415
    return-void

    .line 1414
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method clearCarrierPrivilegedApps()V
    .registers 3

    .line 1349
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1351
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1352
    monitor-exit v0

    .line 1353
    return-void

    .line 1352
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 1490
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1491
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier privileged apps (have="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_163

    .line 1495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1497
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1498
    const-string p1, "Settings:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    const-string p1, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1502
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1504
    const-string p1, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1506
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1508
    const-string p1, "  mAppIdleParoleWindowMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1510
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1512
    const-string p1, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1513
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1516
    const-string p1, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1518
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1519
    const-string p1, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1520
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1521
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1522
    const-string p1, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1523
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1524
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1525
    const-string p1, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1527
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1528
    const-string p1, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1530
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1532
    const-string p1, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1534
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1536
    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1537
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1538
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1539
    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1540
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1541
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1542
    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1544
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1545
    const-string p1, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1547
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1549
    const-string p1, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1551
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1553
    const-string p1, "  mStableChargingThresholdMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1555
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1557
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1558
    const-string p1, "mAppIdleEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1559
    const-string p1, " mAppIdleTempParoled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1560
    const-string p1, " mCharging="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1561
    const-string p1, " mChargingStable="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1562
    const-string p1, " mLastAppIdleParoledTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1564
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1565
    const-string p1, "mScreenThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    const-string p1, "mElapsedThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const-string p1, "mStableChargingThresholdMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1569
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1570
    return-void

    .line 1493
    :catchall_163
    move-exception p2

    :try_start_164
    monitor-exit p1
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_163

    throw p2
.end method

.method dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V
    .registers 6

    .line 1484
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1485
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 1486
    monitor-exit v0

    .line 1487
    return-void

    .line 1486
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method flushDurationsToDisk()V
    .registers 3

    .line 1402
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1403
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 1404
    monitor-exit v0

    .line 1405
    return-void

    .line 1404
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method flushToDisk(I)V
    .registers 4

    .line 1394
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1396
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .registers 15

    .line 962
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 964
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v0

    .line 965
    if-gez v0, :cond_c

    return-void

    .line 966
    :cond_c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 968
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v10

    .line 971
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v7

    .line 973
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_46

    .line 974
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    .line 977
    if-eq v10, v0, :cond_45

    .line 978
    const/16 v1, 0x400

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, v8

    move v8, v1

    move v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 980
    if-nez v0, :cond_45

    .line 981
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 984
    :cond_45
    return-void

    .line 973
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method getActiveAdminAppsForTest(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    monitor-exit v0

    return-object p1

    .line 1320
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method getAppId(Ljava/lang/String;)I
    .registers 4

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1033
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return p1

    .line 1034
    :catch_c
    move-exception p1

    .line 1035
    const/4 p1, -0x1

    return p1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .registers 7

    .line 1193
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1d

    if-eqz p5, :cond_f

    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1194
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_f

    goto :goto_1d

    .line 1198
    :cond_f
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p5

    .line 1199
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p1

    monitor-exit p5

    return p1

    .line 1200
    :catchall_1a
    move-exception p1

    monitor-exit p5
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1

    .line 1195
    :cond_1d
    :goto_1d
    const/16 p1, 0xa

    return p1
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1206
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method getBucketForLocked(Ljava/lang/String;IJ)I
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result p1

    .line 783
    sget-object p2, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget p1, p2, p1

    return p1
.end method

.method getIdleUidsForUser(I)[I
    .registers 15

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1122
    new-array p1, v1, [I

    return-object p1

    .line 1125
    :cond_8
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 1129
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1130
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1131
    if-nez v0, :cond_1b

    .line 1132
    new-array p1, v1, [I

    return-object p1

    .line 1134
    :cond_1b
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_a5

    .line 1137
    nop

    .line 1141
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 1145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    :goto_2c
    if-ltz v11, :cond_6b

    .line 1146
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 1149
    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object v2, p0

    move v5, p1

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v2

    .line 1152
    iget v3, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 1153
    const/high16 v4, 0x10000

    if-gez v3, :cond_5a

    .line 1154
    iget v3, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v2, :cond_53

    goto :goto_54

    :cond_53
    move v4, v1

    :goto_54
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_68

    .line 1156
    :cond_5a
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1157
    add-int/lit8 v5, v5, 0x1

    if-eqz v2, :cond_63

    goto :goto_64

    :cond_63
    move v4, v1

    :goto_64
    add-int/2addr v5, v4

    invoke-virtual {v10, v3, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1145
    :goto_68
    add-int/lit8 v11, v11, -0x1

    goto :goto_2c

    .line 1163
    :cond_6b
    nop

    .line 1164
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move v0, v1

    :goto_73
    if-ltz p1, :cond_84

    .line 1165
    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1166
    and-int/lit16 v3, v2, 0x7fff

    shr-int/lit8 v2, v2, 0x10

    if-ne v3, v2, :cond_81

    .line 1167
    add-int/lit8 v0, v0, 0x1

    .line 1164
    :cond_81
    add-int/lit8 p1, p1, -0x1

    goto :goto_73

    .line 1171
    :cond_84
    new-array p1, v0, [I

    .line 1172
    nop

    .line 1173
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8d
    if-ltz v0, :cond_a4

    .line 1174
    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1175
    and-int/lit16 v3, v2, 0x7fff

    shr-int/lit8 v2, v2, 0x10

    if-ne v3, v2, :cond_a1

    .line 1176
    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, p1, v1

    .line 1177
    add-int/lit8 v1, v1, 0x1

    .line 1173
    :cond_a1
    add-int/lit8 v0, v0, -0x1

    goto :goto_8d

    .line 1181
    :cond_a4
    return-object p1

    .line 1135
    :catch_a5
    move-exception p1

    .line 1136
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 7

    .line 993
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 994
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 995
    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide p1

    monitor-exit v2

    return-wide p1

    .line 996
    :catchall_11
    move-exception p1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p1
.end method

.method informListeners(Ljava/lang/String;IIIZ)V
    .registers 16

    .line 1373
    const/16 v0, 0x28

    if-lt p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1374
    :goto_7
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1375
    :try_start_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1376
    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 1377
    if-eqz p5, :cond_2b

    .line 1378
    invoke-virtual {v9, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 1380
    :cond_2b
    goto :goto_10

    .line 1381
    :cond_2c
    monitor-exit v7

    .line 1382
    return-void

    .line 1381
    :catchall_2e
    move-exception p1

    monitor-exit v7
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw p1
.end method

.method informParoleStateChanged()V
    .registers 5

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    .line 1386
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1387
    :try_start_7
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1388
    invoke-virtual {v3, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1389
    goto :goto_d

    .line 1390
    :cond_1d
    monitor-exit v1

    .line 1391
    return-void

    .line 1390
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method initializeDefaultsForSystemApps(I)V
    .registers 21

    .line 1435
    move-object/from16 v0, p0

    move/from16 v10, p1

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v1, :cond_c

    .line 1437
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 1438
    return-void

    .line 1440
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing defaults for system apps on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appIdleEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStandbyController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 1443
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v10}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v13

    .line 1446
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 1447
    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1448
    const/4 v1, 0x0

    move v8, v1

    :goto_43
    if-ge v8, v14, :cond_73

    .line 1449
    :try_start_45
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1450
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1451
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6e

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1454
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v4, 0xa

    const/4 v5, 0x6

    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    add-long v17, v11, v6

    move/from16 v3, p1

    const-wide/16 v6, 0x0

    move/from16 v16, v8

    move-wide/from16 v8, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_70

    .line 1451
    :cond_6e
    move/from16 v16, v8

    .line 1448
    :goto_70
    add-int/lit8 v8, v16, 0x1

    goto :goto_43

    .line 1460
    :cond_73
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v10}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1461
    monitor-exit v15

    .line 1462
    return-void

    .line 1461
    :catchall_7a
    move-exception v0

    monitor-exit v15
    :try_end_7c
    .catchall {:try_start_45 .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1277
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 1278
    if-eqz p2, :cond_15

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit v0

    return p1

    .line 1279
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 6

    .line 1113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1114
    const/4 p1, 0x0

    return p1

    .line 1116
    :cond_8
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result p1

    return p1
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z
    .registers 14

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1042
    return v1

    .line 1044
    :cond_8
    if-eqz p5, :cond_13

    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1045
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_13

    .line 1046
    return v1

    .line 1048
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p1

    return p1
.end method

.method isAppSpecial(Ljava/lang/String;II)Z
    .registers 7

    .line 1053
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1055
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 1056
    return v2

    .line 1058
    :cond_a
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_f

    .line 1060
    return v2

    .line 1062
    :cond_f
    const-string p2, "android"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1065
    return v2

    .line 1067
    :cond_18
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-eqz p2, :cond_4e

    .line 1072
    :try_start_1c
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result p2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_48

    if-eqz p2, :cond_25

    .line 1073
    return v2

    .line 1077
    :cond_25
    nop

    .line 1079
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 1080
    return v2

    .line 1083
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1084
    return v2

    .line 1087
    :cond_34
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz p2, :cond_41

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1088
    invoke-virtual {v1, p2, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 1089
    return v2

    .line 1092
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 1093
    return v2

    .line 1075
    :catch_48
    move-exception p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1098
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 1099
    return v2

    .line 1102
    :cond_55
    return v0
.end method

.method isDisplayOn()Z
    .registers 2

    .line 1408
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result v0

    return v0
.end method

.method isParoledOrCharging()Z
    .registers 4

    .line 549
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 550
    :cond_6
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    monitor-exit v0

    return v1

    .line 553
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 1304
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1305
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 367
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    .line 368
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_82

    .line 369
    const-string p1, "AppStandbyController"

    const-string v0, "Setting app idle enabled state"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance p1, Lcom/android/server/usage/AppStandbyController$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 372
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->registerObserver()V

    .line 373
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 375
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 376
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 377
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 379
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_4d
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 382
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_7f

    .line 384
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 387
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 388
    :try_start_63
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v0

    .line 389
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_7c

    .line 391
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez p1, :cond_71

    if-nez v0, :cond_74

    .line 392
    :cond_71
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 395
    :cond_74
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz p1, :cond_90

    .line 396
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    goto :goto_90

    .line 389
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    .line 382
    :catchall_7f
    move-exception p1

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p1

    .line 398
    :cond_82
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_90

    .line 399
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    goto :goto_91

    .line 398
    :cond_90
    :goto_90
    nop

    .line 401
    :goto_91
    return-void
.end method

.method onDeviceIdleModeChanged()V
    .registers 7

    .line 849
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 851
    nop

    .line 852
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_a
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 854
    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long/2addr v2, v4

    .line 855
    if-nez v0, :cond_1d

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1d

    .line 861
    const/4 v0, 0x1

    goto :goto_20

    .line 862
    :cond_1d
    if-eqz v0, :cond_25

    .line 864
    const/4 v0, 0x0

    .line 868
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_27

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 870
    return-void

    .line 866
    :cond_25
    :try_start_25
    monitor-exit v1

    return-void

    .line 868
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 1000
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_16

    .line 1003
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1004
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    .line 1005
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    .line 1006
    return-void

    .line 1004
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p1

    .line 1005
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_16

    throw p1
.end method

.method postCheckIdleStates(I)V
    .registers 5

    .line 587
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 588
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_18

    .line 599
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 602
    :goto_18
    return-void
.end method

.method postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1465
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1466
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1467
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1468
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1469
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1470
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1471
    return-void
.end method

.method postReportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 6

    .line 1479
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1480
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1481
    return-void
.end method

.method postReportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 6

    .line 1474
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1475
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1476
    return-void
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4

    .line 1023
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1024
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1025
    monitor-exit v0

    .line 1026
    return-void

    .line 1025
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 25

    .line 404
    move-object/from16 v9, p0

    move/from16 v8, p3

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_9

    return-void

    .line 407
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 409
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v19

    .line 410
    array-length v6, v7

    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v4, v6, :cond_82

    aget-object v0, v7, v4

    .line 414
    :try_start_1c
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_73

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2e

    move v14, v4

    move v15, v6

    move-object v10, v7

    goto :goto_76

    .line 419
    :cond_2e
    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 420
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_39} :catch_77

    .line 421
    :try_start_39
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const/16 v14, 0x8

    const-wide/16 v15, 0x0

    iget-wide v1, v9, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    add-long v17, v19, v1

    move-object v11, v0

    move/from16 v12, p3

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 425
    iget v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_64

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v13, v3

    move/from16 v3, p3

    move v14, v4

    move-wide/from16 v4, v19

    move v15, v6

    move v6, v10

    move-object v10, v7

    move v7, v11

    move v8, v12

    :try_start_5f
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 427
    monitor-exit v13

    goto :goto_72

    :catchall_64
    move-exception v0

    move-object v13, v3

    move v14, v4

    move v15, v6

    move-object v10, v7

    :goto_69
    monitor-exit v13
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6d

    :try_start_6a
    throw v0
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_6b} :catch_6b

    .line 429
    :catch_6b
    move-exception v0

    goto :goto_7b

    .line 427
    :catchall_6d
    move-exception v0

    goto :goto_69

    .line 419
    :cond_6f
    move v14, v4

    move v15, v6

    move-object v10, v7

    .line 431
    :goto_72
    goto :goto_7b

    .line 416
    :cond_73
    move v14, v4

    move v15, v6

    move-object v10, v7

    .line 417
    :goto_76
    goto :goto_7b

    .line 429
    :catch_77
    move-exception v0

    move v14, v4

    move v15, v6

    move-object v10, v7

    .line 410
    :goto_7b
    add-int/lit8 v4, v14, 0x1

    move/from16 v8, p3

    move-object v7, v10

    move v6, v15

    goto :goto_18

    .line 433
    :cond_82
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V
    .registers 36

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-wide/from16 v4, p2

    move/from16 v8, p4

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_d

    return-void

    .line 874
    :cond_d
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 877
    :try_start_10
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v19

    .line 880
    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v2, 0x13

    const/16 v3, 0xe

    const/4 v6, 0x6

    const/4 v15, 0x1

    const/16 v14, 0xa

    if-eq v1, v15, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x2

    if-eq v1, v10, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v6, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x7

    if-eq v1, v10, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v14, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v3, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v10, 0xd

    if-eq v1, v10, :cond_48

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v1, v2, :cond_45

    goto :goto_48

    :cond_45
    move-object v11, v7

    goto/16 :goto_14b

    .line 889
    :cond_48
    :goto_48
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v10, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v10, v8, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 891
    iget v13, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 892
    iget v12, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 894
    iget v10, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-direct {v0, v10}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v11

    .line 895
    or-int/lit16 v10, v11, 0x300

    .line 896
    iget v15, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v15, v14, :cond_ea

    iget v15, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v15, v3, :cond_6f

    move-object/from16 v29, v7

    move v7, v10

    move v2, v11

    move v6, v12

    move v3, v13

    move v10, v14

    const/16 v30, 0x1

    goto/16 :goto_f3

    .line 903
    :cond_6f
    iget v3, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v3, v6, :cond_98

    .line 904
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v23, 0xa

    const-wide/16 v25, 0x0

    iget-wide v14, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v27, v4, v14

    move-object/from16 v20, v2

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move/from16 v24, v11

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 907
    iget-wide v2, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    move-object/from16 v29, v7

    move v7, v10

    move v6, v12

    const/16 v10, 0xa

    const/16 v30, 0x1

    move-wide v11, v2

    move v3, v13

    goto/16 :goto_10c

    .line 908
    :cond_98
    iget v3, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v3, v2, :cond_c6

    .line 910
    const/16 v2, 0x32

    if-eq v13, v2, :cond_a2

    monitor-exit v7

    return-void

    .line 911
    :cond_a2
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v23, 0xa

    const-wide/16 v25, 0x0

    iget-wide v14, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v27, v4, v14

    move-object/from16 v20, v2

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move/from16 v24, v11

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 914
    iget-wide v2, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    move-object/from16 v29, v7

    move v7, v10

    move v6, v12

    const/16 v10, 0xa

    const/16 v30, 0x1

    move-wide v11, v2

    move v3, v13

    goto :goto_10c

    .line 916
    :cond_c6
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;
    :try_end_ca
    .catchall {:try_start_10 .. :try_end_ca} :catchall_151

    const/16 v14, 0xa

    move-object/from16 v29, v7

    :try_start_ce
    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v17, v4, v6

    move v7, v10

    move-object v10, v2

    move v2, v11

    move-object v11, v1

    move v6, v12

    move-object v12, v3

    move v3, v13

    move v13, v14

    const/16 v15, 0xa

    move v14, v2

    move v2, v15

    const/16 v30, 0x1

    move-wide/from16 v15, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 919
    iget-wide v10, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    move-wide v11, v10

    move v10, v2

    goto :goto_10c

    .line 896
    :cond_ea
    move-object/from16 v29, v7

    move v7, v10

    move v2, v11

    move v6, v12

    move v3, v13

    move v10, v14

    const/16 v30, 0x1

    .line 899
    :goto_f3
    iget-object v11, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v12, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v23, 0x14

    const-wide/16 v25, 0x0

    iget-wide v13, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    add-long v27, v4, v13

    move-object/from16 v20, v11

    move-object/from16 v21, v1

    move-object/from16 v22, v12

    move/from16 v24, v2

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 902
    iget-wide v11, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 921
    :goto_10c
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v14, 0xb

    const/4 v15, -0x1

    iget-object v10, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 922
    invoke-virtual {v13, v14, v8, v15, v10}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 921
    invoke-virtual {v2, v10, v11, v12}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 924
    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/4 v10, 0x0

    const/16 v11, 0xa

    if-ne v2, v11, :cond_130

    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v3, v2, :cond_130

    const v2, 0xff00

    and-int/2addr v2, v6

    const/16 v3, 0x300

    if-eq v2, v3, :cond_130

    goto :goto_132

    :cond_130
    move/from16 v30, v10

    .line 928
    :goto_132
    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I
    :try_end_136
    .catchall {:try_start_ce .. :try_end_136} :catchall_14d

    move-object/from16 v1, p0

    move/from16 v3, p4

    move-wide/from16 v4, p2

    move-object/from16 v11, v29

    move v12, v8

    move/from16 v8, v30

    :try_start_141
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 931
    if-eqz v19, :cond_14b

    .line 932
    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {v0, v1, v12, v10}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 935
    :cond_14b
    :goto_14b
    monitor-exit v11

    .line 936
    return-void

    .line 935
    :catchall_14d
    move-exception v0

    move-object/from16 v11, v29

    goto :goto_153

    :catchall_151
    move-exception v0

    move-object v11, v7

    :goto_153
    monitor-exit v11
    :try_end_154
    .catchall {:try_start_141 .. :try_end_154} :catchall_155

    throw v0

    :catchall_155
    move-exception v0

    goto :goto_153
.end method

.method reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 19

    .line 436
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_7

    return-void

    .line 442
    :cond_7
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 444
    const/16 v1, 0xa

    .line 445
    const/16 v2, 0xb

    .line 446
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    move v8, v1

    move v9, v2

    goto :goto_20

    .line 449
    :cond_18
    const/16 v1, 0x14

    .line 450
    const/16 v2, 0xc

    .line 451
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    move v8, v1

    move v9, v2

    .line 454
    :goto_20
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v14

    .line 456
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_29
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v10, 0x0

    add-long v12, v14, v3

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 461
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_49

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v9, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v14

    :try_start_44
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 463
    monitor-exit v9

    .line 464
    return-void

    .line 463
    :catchall_49
    move-exception v0

    move-object v9, v2

    :goto_4b
    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    throw v0

    :catchall_4d
    move-exception v0

    goto :goto_4b
.end method

.method reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 22

    .line 486
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_7

    return-void

    .line 488
    :cond_7
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 490
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 491
    :try_start_10
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const/16 v14, 0xd

    const-wide/16 v15, 0x0

    iget-wide v1, v0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    add-long v17, v4, v1

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 495
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 497
    monitor-exit v9

    .line 498
    return-void

    .line 497
    :catchall_34
    move-exception v0

    monitor-exit v9
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_34

    throw v0
.end method

.method reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 22

    .line 467
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_7

    return-void

    .line 469
    :cond_7
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 470
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 471
    :try_start_10
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 472
    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    .line 473
    const/16 v6, 0x32

    if-ne v1, v6, :cond_40

    .line 475
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0x14

    const/16 v14, 0xe

    const-wide/16 v15, 0x0

    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    add-long v17, v4, v6

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 479
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 482
    :cond_40
    monitor-exit v9

    .line 483
    return-void

    .line 482
    :catchall_42
    move-exception v0

    monitor-exit v9
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1294
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1295
    if-nez p1, :cond_b

    .line 1296
    :try_start_5
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_10

    .line 1298
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1300
    :goto_10
    monitor-exit v0

    .line 1301
    return-void

    .line 1300
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1
.end method

.method setAppIdleAsync(Ljava/lang/String;ZI)V
    .registers 6

    .line 1185
    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    goto :goto_12

    .line 1187
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1188
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1189
    return-void

    .line 1185
    :cond_12
    :goto_12
    return-void
.end method

.method setAppIdleEnabled(Z)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_16

    .line 357
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v1

    .line 358
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 359
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result p1

    if-eq p1, v1, :cond_16

    .line 360
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 363
    :cond_16
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method setAppIdleParoled(Z)V
    .registers 6

    .line 532
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 534
    iget-boolean v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-eq v3, p1, :cond_1e

    .line 535
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    .line 537
    if-eqz p1, :cond_15

    .line 538
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleEndTimeout()V

    goto :goto_1b

    .line 540
    :cond_15
    iput-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    .line 541
    const/4 p1, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 543
    :goto_1b
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 545
    :cond_1e
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJ)V
    .registers 15

    .line 1211
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1212
    return-void
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .registers 24

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v1, p3

    move-wide/from16 v11, p5

    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1218
    :try_start_d
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3, v10}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1219
    monitor-exit v13

    return-void

    .line 1221
    :cond_18
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 1223
    const v4, 0xff00

    and-int v5, p4, v4

    const/16 v6, 0x500

    if-ne v5, v6, :cond_28

    const/4 v3, 0x1

    .line 1226
    :cond_28
    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_30

    monitor-exit v13

    return-void

    .line 1229
    :cond_30
    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v7, 0x32

    if-eq v5, v7, :cond_38

    if-ne v1, v7, :cond_3c

    :cond_38
    if-eqz v3, :cond_3c

    .line 1232
    monitor-exit v13

    return-void

    .line 1236
    :cond_3c
    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v4, v5

    const/16 v5, 0x400

    if-ne v4, v5, :cond_47

    if-eqz v3, :cond_47

    monitor-exit v13

    return-void

    .line 1240
    :cond_47
    const/16 v4, 0x14

    if-eqz v3, :cond_7b

    .line 1242
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v7

    .line 1245
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v2, v7, v8, v1}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1247
    if-le v1, v6, :cond_64

    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v3, v14, v7

    if-lez v3, :cond_64

    .line 1249
    nop

    .line 1250
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move v15, v1

    move v14, v6

    goto :goto_7e

    .line 1254
    :cond_64
    if-le v1, v4, :cond_7b

    iget-wide v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_7b

    .line 1256
    nop

    .line 1257
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v1, v4, :cond_76

    .line 1258
    const/16 v1, 0x307

    move v15, v1

    move v14, v4

    goto :goto_7e

    .line 1260
    :cond_76
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move v15, v1

    move v14, v4

    goto :goto_7e

    .line 1268
    :cond_7b
    move/from16 v15, p4

    move v14, v1

    :goto_7e
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v14

    move v7, v15

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1270
    monitor-exit v13
    :try_end_8e
    .catchall {:try_start_d .. :try_end_8e} :catchall_9d

    .line 1271
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v14

    move v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1272
    return-void

    .line 1270
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v13
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0
.end method

.method setChargingState(Z)V
    .registers 6

    .line 501
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, p1, :cond_1d

    .line 503
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    .line 505
    const/16 v1, 0xe

    if-eqz p1, :cond_15

    .line 510
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d

    .line 513
    :cond_15
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 514
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    .line 517
    :cond_1d
    :goto_1d
    monitor-exit v0

    .line 518
    return-void

    .line 517
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 7

    .line 987
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 989
    monitor-exit v0

    .line 990
    return-void

    .line 989
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method updateChargingStableState()V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, v2, :cond_10

    .line 524
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    .line 525
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 527
    :cond_10
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
