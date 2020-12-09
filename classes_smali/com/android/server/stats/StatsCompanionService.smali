.class public Lcom/android/server/stats/StatsCompanionService;
.super Landroid/os/IStatsCompanionService$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;,
        Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;,
        Lcom/android/server/stats/StatsCompanionService$Lifecycle;,
        Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;,
        Lcom/android/server/stats/StatsCompanionService$CompanionHandler;
    }
.end annotation


# static fields
.field private static final APPLICATION_INFO_FIELD_ID:I = 0x1

.field public static final CODE_ACTIVE_CONFIGS_BROADCAST:I = 0x1

.field public static final CODE_DATA_BROADCAST:I = 0x1

.field public static final CODE_SUBSCRIBER_BROADCAST:I = 0x1

.field public static final CONFIG_DIR:Ljava/lang/String; = "/data/misc/stats-service"

.field private static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field public static final DEATH_THRESHOLD:I = 0xa

.field static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final EXTRA_LAST_REPORT_TIME:Ljava/lang/String; = "android.app.extra.LAST_REPORT_TIME"

.field private static final INSTALLER_FIELD_ID:I = 0x5

.field private static final MAX_BATTERY_STATS_HELPER_FREQUENCY_MS:I = 0x3e8

.field private static final MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

.field private static final MILLIS_IN_A_DAY:J

.field private static final PACKAGE_NAME_FIELD_ID:I = 0x4

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field static final TAG:Ljava/lang/String; = "StatsCompanionService"

.field private static final UID_FIELD_ID:I = 0x1

.field private static final VERSION_FIELD_ID:I = 0x2

.field private static final VERSION_STRING_FIELD_ID:I = 0x3

.field private static sStatsd:Landroid/os/IStatsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation
.end field

.field private static final sStatsdLock:Ljava/lang/Object;

.field private static sThermalService:Landroid/os/IThermalService;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBaseDir:Ljava/io/File;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsHelperTimestampMs:J

.field private final mContext:Landroid/content/Context;

.field private mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field private mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field private mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field private mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field private final mDeathTimeMillis:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugElapsedClockPreviousValue:J

.field private mDebugElapsedClockPullCount:J

.field private mDebugFailingElapsedClockPreviousValue:J

.field private mDebugFailingElapsedClockPullCount:J

.field private final mDeletedFiles:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mNetworkStatsService:Landroid/net/INetworkStatsService;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private final mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

.field private mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 186
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    .line 223
    const-string v2, "/system/bin/statsd"

    const-string v3, "/system/bin/surfaceflinger"

    const-string v4, "/system/bin/apexd"

    const-string v5, "/system/bin/audioserver"

    const-string v6, "/system/bin/cameraserver"

    const-string v7, "/system/bin/drmserver"

    const-string v8, "/system/bin/healthd"

    const-string v9, "/system/bin/incidentd"

    const-string v10, "/system/bin/installd"

    const-string v11, "/system/bin/lmkd"

    const-string v12, "/system/bin/logd"

    const-string v13, "media.codec"

    const-string v14, "media.extractor"

    const-string v15, "media.metrics"

    const-string v16, "/system/bin/mediadrmserver"

    const-string v17, "/system/bin/mediaserver"

    const-string v18, "/system/bin/performanced"

    const-string v19, "/system/bin/tombstoned"

    const-string v20, "/system/bin/traced"

    const-string v21, "/system/bin/traced_probes"

    const-string/jumbo v22, "webview_zygote"

    const-string/jumbo v23, "zygote"

    const-string/jumbo v24, "zygote64"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 310
    invoke-direct {p0}, Landroid/os/IStatsCompanionService$Stub;-><init>()V

    .line 264
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 265
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 266
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 270
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 271
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 273
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 274
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    .line 276
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 281
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 284
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 286
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 288
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 290
    new-instance v1, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v1}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 295
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    .line 296
    iput-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    .line 297
    iput-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    .line 298
    iput-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    .line 299
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 301
    const-wide/16 v3, -0x3e8

    iput-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    .line 304
    new-instance v1, Ljava/io/File;

    .line 305
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "stats_companion"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    .line 306
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 1616
    nop

    .line 1617
    const-string/jumbo v1, "procstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1646
    nop

    .line 1648
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1647
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 311
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 312
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 313
    nop

    .line 314
    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 313
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 315
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 316
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/stats/StatsCompanionService$1;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-direct {v1}, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    .line 339
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 340
    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result p1

    .line 341
    new-array v3, p1, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 342
    nop

    .line 343
    move v3, v2

    :goto_de
    if-ge v2, p1, :cond_f5

    .line 344
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    .line 345
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v6, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v6, v3, v4}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v6, v5, v2

    .line 347
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 352
    :cond_f5
    const-string/jumbo p1, "thermalservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 354
    const-string v1, "StatsCompanionService"

    if-eqz p1, :cond_11f

    .line 355
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p1

    sput-object p1, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    .line 357
    :try_start_106
    sget-object p1, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    new-instance v2, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;

    invoke-direct {v2, v0}, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-interface {p1, v2}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 359
    const-string/jumbo p1, "register thermal listener successfully"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_116} :catch_117

    goto :goto_11e

    .line 360
    :catch_117
    move-exception p1

    .line 362
    const-string/jumbo p1, "register thermal listener error"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_11e
    goto :goto_124

    .line 365
    :cond_11f
    const-string p1, "cannot find thermalservice, no throttling push notifications"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_124
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 370
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 371
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 372
    new-instance v3, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;

    invoke-direct {v3, v0}, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-virtual {v2, p1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 374
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 376
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/stats/StatsCompanionService$CompanionHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    .line 378
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {p1}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 380
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 181
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$1100()J
    .registers 2

    .line 181
    sget-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/IStatsManager;
    .registers 1

    .line 181
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .registers 1

    .line 181
    sput-object p0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/IStatsManager;
    .registers 1

    .line 181
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/stats/StatsCompanionService;)V
    .registers 1

    .line 181
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/stats/StatsCompanionService;)V
    .registers 1

    .line 181
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->systemReady()V

    return-void
.end method

.method private addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Landroid/net/NetworkStats;",
            "Z)V"
        }
    .end annotation

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkStats;->size()I

    move-result v0

    .line 780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    .line 782
    new-instance v11, Landroid/net/NetworkStats$Entry;

    invoke-direct {v11}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 783
    const/4 v1, 0x0

    move v12, v1

    :goto_17
    if-ge v12, v0, :cond_50

    .line 784
    move-object/from16 v13, p3

    invoke-virtual {v13, v12, v11}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 785
    new-instance v14, Landroid/os/StatsLogEventWrapper;

    move-object v1, v14

    move/from16 v2, p1

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 786
    iget v1, v11, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v14, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 787
    if-eqz p4, :cond_34

    .line 788
    iget v1, v11, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v14, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 790
    :cond_34
    iget-wide v1, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v14, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 791
    iget-wide v1, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v14, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 792
    iget-wide v1, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v14, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 793
    iget-wide v1, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v14, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 794
    move-object/from16 v1, p2

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    .line 796
    :cond_50
    return-void
.end method

.method private static anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I
    .registers 5

    .line 1232
    iget-wide v0, p0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->anonRssInBytes:J

    iget-wide v2, p0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 837
    const-string v0, "StatsCompanionService"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    .line 838
    return-object v1

    .line 842
    :cond_6
    const-wide/16 v2, 0x7d0

    .line 843
    :try_start_8
    invoke-virtual {p0, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 844
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_21

    .line 846
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 848
    iget-object v2, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 850
    if-eqz v2, :cond_21

    .line 851
    return-object v2

    .line 854
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no controller energy info supplied for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_3a} :catch_3b

    .line 857
    goto :goto_5a

    .line 855
    :catch_3b
    move-exception v2

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_5a
    return-object v1
.end method

.method private enforceCallingPermission()V
    .registers 4

    .line 2561
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2562
    return-void

    .line 2564
    :cond_b
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.STATSCOMPANION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    return-void
.end method

.method private declared-synchronized fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .registers 4

    monitor-enter p0

    .line 1143
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_19

    .line 1145
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 1148
    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_23

    monitor-exit p0

    return-object v0

    .line 1150
    :cond_19
    :try_start_19
    const-string v0, "StatsCompanionService"

    const-string v1, "Failed to get bluetooth adapter!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_23

    .line 1151
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1142
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static fetchStatsdService()Landroid/os/IStatsManager;
    .registers 1

    .line 2573
    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method private forgetEverythingLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "StatsCompanionService.sStatsdLock"
        }
    .end annotation

    .line 2715
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 2716
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2717
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2718
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelAnomalyAlarm()V

    .line 2720
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelPullingAlarm()V

    .line 2722
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2723
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2724
    if-eqz v0, :cond_2b

    .line 2725
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2728
    :cond_2b
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 2729
    if-eqz v0, :cond_38

    .line 2730
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2732
    :cond_38
    return-void
.end method

.method private getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;
    .registers 9

    .line 1751
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1755
    :try_start_9
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    .line 1757
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1758
    nop

    .line 1759
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    goto :goto_24

    .line 1757
    :catchall_1f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1761
    :cond_24
    :goto_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1762
    iget-wide v4, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3f

    .line 1764
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 1766
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 1767
    iput-wide v2, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    .line 1769
    :cond_3f
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method private final informAllUidsLocked(Landroid/content/Context;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    const-string v0, "StatsCompanionService"

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 469
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 476
    :try_start_14
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_3c

    .line 480
    nop

    .line 481
    sget-object v4, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-interface {v4, v6}, Landroid/os/IStatsManager;->informAllUidData(Landroid/os/ParcelFileDescriptor;)V

    .line 483
    :try_start_21
    aget-object v4, v3, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    .line 486
    goto :goto_2d

    .line 484
    :catch_27
    move-exception v4

    .line 485
    const-string v5, "Failed to close the read side of the pipe."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    :goto_2d
    aget-object v0, v3, v2

    .line 488
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void

    .line 477
    :catch_3c
    move-exception p1

    .line 478
    const-string v1, "Failed to create a pipe to send uid map data."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    return-void
.end method

.method static synthetic lambda$informAllUidsLocked$0(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .registers 14

    .line 489
    const-string v0, ""

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 491
    :try_start_7
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 492
    nop

    .line 494
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 495
    const v3, 0x402000

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 496
    invoke-virtual {p2, v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 498
    const/4 v3, 0x0

    :goto_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a5

    .line 499
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_af

    if-eqz v4, :cond_a2

    .line 502
    :try_start_37
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_43} :catch_44
    .catchall {:try_start_37 .. :try_end_43} :catchall_af

    .line 505
    goto :goto_46

    .line 503
    :catch_44
    move-exception v4

    .line 504
    move-object v4, v0

    .line 506
    :goto_46
    const-wide v5, 0x20b00000001L

    .line 507
    :try_start_4b
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 510
    const-wide v7, 0x10500000001L

    .line 512
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 510
    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 513
    const-wide v7, 0x10300000002L

    .line 515
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    .line 513
    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 516
    const-wide v7, 0x10900000003L

    .line 518
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 516
    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 519
    const-wide v7, 0x10900000004L

    .line 521
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 519
    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 522
    const-wide v7, 0x10900000005L

    .line 525
    if-nez v4, :cond_9b

    move-object v4, v0

    .line 522
    :cond_9b
    invoke-virtual {p0, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 526
    nop

    .line 527
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 498
    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 530
    :cond_a5
    goto/16 :goto_11

    .line 531
    :cond_a7
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_aa
    .catchall {:try_start_4b .. :try_end_aa} :catchall_af

    .line 536
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_af
    move-exception p0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method static synthetic lambda$pullDiskIo$6(IJJLjava/util/List;IJJJJJJJJJJ)V
    .registers 34

    .line 1827
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1829
    move v0, p6

    invoke-virtual {v6, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1830
    move-wide v0, p7

    invoke-virtual {v6, p7, p8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1831
    move-wide/from16 v0, p9

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1832
    move-wide/from16 v0, p11

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1833
    move-wide/from16 v0, p13

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1834
    move-wide/from16 v0, p15

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1835
    move-wide/from16 v0, p17

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1836
    move-wide/from16 v0, p19

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1837
    move-wide/from16 v0, p21

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1838
    move-wide/from16 v0, p23

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1839
    move-wide/from16 v0, p25

    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1840
    move-object v0, p5

    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuActiveTime$4(IJJLjava/util/List;ILjava/lang/Long;)V
    .registers 15

    .line 1058
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1059
    invoke-virtual {v6, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1060
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1061
    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuClusterTime$3(IJJLjava/util/List;I[J)V
    .registers 16

    .line 1043
    const/4 v0, 0x0

    :goto_1
    array-length v1, p7

    if-ge v0, v1, :cond_1e

    .line 1044
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1046
    invoke-virtual {v1, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1047
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1048
    aget-wide v2, p7, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1049
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1051
    :cond_1e
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuFreqTime$2(IJJLjava/util/List;I[J)V
    .registers 16

    .line 1026
    const/4 v0, 0x0

    :goto_1
    array-length v1, p7

    if-ge v0, v1, :cond_26

    .line 1027
    aget-wide v1, p7, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    .line 1028
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1030
    invoke-virtual {v1, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1031
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1032
    aget-wide v2, p7, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1033
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    :cond_26
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuTime$1(IJJLjava/util/List;I[J)V
    .registers 19

    .line 1013
    const/4 v0, 0x0

    aget-wide v0, p7, v0

    const/4 v2, 0x1

    aget-wide v2, p7, v2

    .line 1014
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1015
    move/from16 v4, p6

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1016
    invoke-virtual {v10, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1017
    invoke-virtual {v10, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1018
    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    return-void
.end method

.method static synthetic lambda$readProcStatsHighWaterMark$5(ILjava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1599
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private milliAmpHrsToNanoAmpSecs(D)J
    .registers 5

    .line 1774
    const-wide v0, 0x41ead27480000000L  # 3.6E9

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    add-double/2addr p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method private pullAppOps(JJLjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2078
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2080
    :try_start_5
    iget-object v3, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 2082
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2083
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 2085
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 2086
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 2087
    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v6, Lcom/android/server/stats/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;

    invoke-direct {v6, v4}, Lcom/android/server/stats/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v0, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2089
    const-wide/16 v5, 0x7d0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 2092
    new-instance v9, Landroid/os/StatsLogEventWrapper;

    const/16 v4, 0x274c

    move-object v3, v9

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2095
    const/4 v3, 0x0

    move v4, v3

    :goto_58
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v5

    if-ge v4, v5, :cond_d3

    .line 2096
    invoke-virtual {v0, v4}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v5

    .line 2097
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v6

    .line 2098
    move v7, v3

    :goto_67
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v8

    if-ge v7, v8, :cond_c6

    .line 2099
    invoke-virtual {v5, v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v8

    .line 2100
    move v10, v3

    :goto_72
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v11

    if-ge v10, v11, :cond_c1

    .line 2101
    invoke-virtual {v8, v10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v11

    .line 2102
    invoke-virtual {v9, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2103
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2105
    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2106
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2107
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2108
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2109
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2110
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2111
    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catchall {:try_start_5 .. :try_end_be} :catchall_cb

    .line 2100
    add-int/lit8 v10, v10, 0x1

    goto :goto_72

    .line 2098
    :cond_c1
    move-object/from16 v11, p5

    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 2095
    :cond_c6
    move-object/from16 v11, p5

    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 2115
    :catchall_cb
    move-exception v0

    .line 2116
    :try_start_cc
    const-string v3, "StatsCompanionService"

    const-string v4, "Could not read appops"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_d8

    .line 2118
    :cond_d3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    nop

    .line 2120
    return-void

    .line 2118
    :catchall_d8
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullAppSize(IJJLjava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1457
    const-string v1, "StatsCompanionService"

    :try_start_2
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v0, "queryTime"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1460
    const-string/jumbo v0, "packageNames"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1461
    const-string v7, "appSizes"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1462
    const-string v8, "appDataSizes"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1463
    const-string v9, "cacheSizes"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1465
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 1466
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ne v10, v9, :cond_81

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ne v10, v9, :cond_81

    .line 1467
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eq v10, v9, :cond_46

    goto :goto_81

    .line 1471
    :cond_46
    const/4 v10, 0x0

    :goto_47
    if-ge v10, v9, :cond_80

    .line 1472
    new-instance v15, Landroid/os/StatsLogEventWrapper;

    move-object v11, v15

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-object v3, v15

    move-wide/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1474
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1475
    const-wide/16 v11, -0x1

    invoke-virtual {v7, v10, v11, v12}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1476
    invoke-virtual {v8, v10, v11, v12}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1477
    invoke-virtual {v2, v10, v11, v12}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1478
    invoke-virtual {v3, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1479
    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    add-int/lit8 v10, v10, 0x1

    move-wide v3, v11

    goto :goto_47

    .line 1483
    :cond_80
    goto :goto_8d

    .line 1468
    :cond_81
    :goto_81
    const-string v0, "formatting error in diskstats cache file!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_86} :catch_87
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_86} :catch_87

    .line 1469
    return-void

    .line 1481
    :catch_87
    move-exception v0

    .line 1482
    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    :goto_8d
    return-void
.end method

.method private pullAppsOnExternalStorageInfo(IJJLjava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2232
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2233
    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2234
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2236
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2237
    if-eqz v3, :cond_7a

    .line 2238
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 2239
    if-eqz v3, :cond_77

    .line 2240
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 2241
    if-eqz v3, :cond_74

    .line 2242
    nop

    .line 2243
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_46

    .line 2244
    const/4 v3, 0x1

    goto :goto_57

    .line 2245
    :cond_46
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2246
    const/4 v3, 0x2

    goto :goto_57

    .line 2247
    :cond_4e
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2248
    const/4 v3, 0x3

    goto :goto_57

    .line 2247
    :cond_56
    move v3, v5

    .line 2251
    :goto_57
    if-eq v3, v5, :cond_71

    .line 2252
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    move-object v6, v4

    move v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2254
    invoke-virtual {v4, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2255
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2256
    move-object/from16 v2, p6

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 2251
    :cond_71
    move-object/from16 v2, p6

    goto :goto_7c

    .line 2241
    :cond_74
    move-object/from16 v2, p6

    goto :goto_7c

    .line 2239
    :cond_77
    move-object/from16 v2, p6

    goto :goto_7c

    .line 2237
    :cond_7a
    move-object/from16 v2, p6

    .line 2261
    :goto_7c
    goto :goto_1a

    .line 2262
    :cond_7d
    return-void
.end method

.method private pullBinderCallsStats(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1296
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1297
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1298
    if-eqz v0, :cond_75

    .line 1302
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 1303
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 1304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1305
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1306
    iget v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1307
    iget-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1308
    iget-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1309
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1310
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1311
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1312
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1313
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1314
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1315
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1316
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1317
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1318
    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1319
    iget v1, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    invoke-virtual {v8, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1320
    invoke-interface {p6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    goto :goto_15

    .line 1322
    :cond_74
    return-void

    .line 1299
    :cond_75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "binderStats is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pullBinderCallsStatsExceptions(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1327
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1328
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1329
    if-eqz v0, :cond_46

    .line 1333
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1337
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1340
    invoke-interface {p6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    goto :goto_16

    .line 1342
    :cond_45
    return-void

    .line 1330
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "binderStats is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pullBluetoothActivityInfo(IJJLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1131
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1132
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1133
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1134
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1135
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1136
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1137
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1138
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1139
    invoke-interface {p6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    return-void
.end method

.method private pullBluetoothBytesTransfer(IJJLjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 954
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 956
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_3a

    aget-object v3, v0, v2

    .line 957
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 959
    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 960
    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 961
    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 962
    move-object/from16 v3, p6

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 965
    :cond_3a
    return-void
.end method

.method private pullBuildInformation(IJJLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1737
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1738
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1739
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1740
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1741
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1742
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1743
    sget-object p1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1744
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1745
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1746
    sget-object p1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1747
    invoke-interface {p6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    return-void
.end method

.method private pullCategorySize(IJJLjava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 1489
    :try_start_2
    const-string v1, "/data/system/diskstats_cache.json"

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1491
    const-string/jumbo v1, "queryTime"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1493
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v7, v1

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1494
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1495
    const-string v7, "appSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1496
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1497
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1500
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1501
    const-string v7, "appDataSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1502
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1506
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1507
    const-string v7, "cacheSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1508
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1509
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1512
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1513
    const-string/jumbo v7, "photosSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1514
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1515
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1518
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1519
    const-string/jumbo v7, "videosSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1520
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1521
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1524
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1525
    const-string v7, "audioSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1526
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1527
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1530
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1531
    const-string v7, "downloadsSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1532
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1533
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1536
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1537
    const-string/jumbo v7, "systemSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1538
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1539
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v9, v1

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1542
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1543
    const-string/jumbo v7, "otherSize"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1544
    invoke-virtual {v1, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1545
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_133} :catch_134
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_133} :catch_134

    .line 1548
    goto :goto_13c

    .line 1546
    :catch_134
    move-exception v0

    .line 1547
    const-string v1, "StatsCompanionService"

    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1549
    :goto_13c
    return-void
.end method

.method private pullCoolingDevices(IJJLjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1946
    :try_start_4
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()Ljava/util/List;

    move-result-object v0

    .line 1947
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CoolingDevice;

    .line 1948
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1950
    invoke-virtual {v3}, Landroid/os/CoolingDevice;->getType()I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1951
    invoke-virtual {v3}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v3}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v10, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1953
    move-object/from16 v3, p6

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_3e} :catch_41
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3f

    .line 1954
    goto :goto_e

    .line 1959
    :catchall_3f
    move-exception v0

    goto :goto_4e

    .line 1955
    :catch_41
    move-exception v0

    .line 1957
    :try_start_42
    const-string v0, "StatsCompanionService"

    const-string v3, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    .line 1959
    :cond_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1960
    nop

    .line 1961
    return-void

    .line 1959
    :goto_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullCpuTimePerFreq(IJJLjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 994
    const/4 v0, 0x0

    :goto_1
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v3, v2

    if-ge v0, v3, :cond_38

    .line 995
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v2

    .line 996
    if-eqz v2, :cond_33

    .line 997
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_12
    if-ltz v3, :cond_30

    .line 998
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1000
    invoke-virtual {v10, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1001
    invoke-virtual {v10, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1002
    aget-wide v4, v2, v3

    invoke-virtual {v10, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1003
    move-object/from16 v4, p6

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_30
    move-object/from16 v4, p6

    goto :goto_35

    .line 996
    :cond_33
    move-object/from16 v4, p6

    .line 994
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1007
    :cond_38
    return-void
.end method

.method private pullCpuTimePerThreadFreq(IJJLjava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    if-eqz v1, :cond_d7

    .line 1870
    nop

    .line 1871
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    .line 1872
    if-eqz v1, :cond_ce

    .line 1875
    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v0

    .line 1876
    array-length v2, v0

    const-string v3, "StatsCompanionService"

    const/16 v4, 0x8

    if-gt v2, v4, :cond_b3

    .line 1882
    const/4 v2, 0x0

    move v5, v2

    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b2

    .line 1883
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 1884
    iget-object v7, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 1886
    move v8, v2

    :goto_2b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_ac

    .line 1887
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 1888
    iget-object v10, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v10, v10

    array-length v11, v0

    if-ne v10, v11, :cond_86

    .line 1896
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v12, v10

    move/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v12 .. v17}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1898
    iget v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1899
    iget v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1900
    iget v11, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1901
    iget-object v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1902
    iget-object v11, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1903
    move v11, v2

    :goto_63
    if-ge v11, v4, :cond_7e

    .line 1904
    array-length v12, v0

    if-ge v11, v12, :cond_75

    .line 1905
    aget v12, v0, v11

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1906
    iget-object v12, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v12, v12, v11

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    goto :goto_7b

    .line 1911
    :cond_75
    invoke-virtual {v10, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1912
    invoke-virtual {v10, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1903
    :goto_7b
    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 1915
    :cond_7e
    move-object/from16 v11, p6

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 1889
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of usage times, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but got "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1892
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1882
    :cond_ac
    move-object/from16 v11, p6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c

    .line 1918
    :cond_b2
    return-void

    .line 1877
    :cond_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1879
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1873
    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "processCpuUsages is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1868
    :cond_d7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mKernelCpuThreadReader is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pullDangerousPermissionState(JJLjava/util/List;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2015
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2017
    :try_start_6
    iget-object v3, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2019
    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 2021
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2022
    const/4 v6, 0x0

    move v7, v6

    :goto_20
    if-ge v7, v5, :cond_ca

    .line 2023
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 2025
    const/16 v0, 0x1000

    .line 2026
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 2025
    invoke-virtual {v3, v0, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v9

    .line 2028
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 2029
    move v11, v6

    :goto_3b
    if-ge v11, v10, :cond_b7

    .line 2030
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 2032
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_4d

    .line 2033
    move-object/from16 v16, v3

    move-object/from16 v3, p5

    goto :goto_b1

    .line 2036
    :cond_4d
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v0

    .line 2037
    move v14, v6

    :goto_51
    if-ge v14, v13, :cond_ad

    .line 2038
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v14
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_c2

    .line 2041
    nop

    .line 2043
    :try_start_58
    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    .line 2044
    iget-object v6, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2045
    invoke-virtual {v3, v0, v6, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v6
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_62} :catch_a1
    .catchall {:try_start_58 .. :try_end_62} :catchall_c2

    .line 2049
    nop

    .line 2051
    :try_start_63
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v15

    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-eq v15, v3, :cond_6f

    .line 2052
    move-object/from16 v3, p5

    goto :goto_a7

    .line 2055
    :cond_6f
    new-instance v15, Landroid/os/StatsLogEventWrapper;

    const/16 v18, 0x2742

    move-object/from16 v17, v15

    move-wide/from16 v19, p1

    move-wide/from16 v21, p3

    invoke-direct/range {v17 .. v22}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2058
    invoke-virtual {v15, v0}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2059
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v15, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2060
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2061
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v14

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_94

    goto :goto_95

    :cond_94
    const/4 v3, 0x0

    :goto_95
    invoke-virtual {v15, v3}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2063
    invoke-virtual {v15, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2065
    move-object/from16 v3, p5

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catchall {:try_start_63 .. :try_end_a0} :catchall_c2

    goto :goto_a7

    .line 2047
    :catch_a1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v3, p5

    .line 2048
    nop

    .line 2037
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    const/4 v6, 0x0

    goto :goto_51

    :cond_ad
    move-object/from16 v16, v3

    move-object/from16 v3, p5

    .line 2029
    :goto_b1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    const/4 v6, 0x0

    goto :goto_3b

    .line 2022
    :cond_b7
    move-object/from16 v16, v3

    move-object/from16 v3, p5

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    const/4 v6, 0x0

    goto/16 :goto_20

    .line 2069
    :catchall_c2
    move-exception v0

    .line 2070
    :try_start_c3
    const-string v3, "StatsCompanionService"

    const-string v4, "Could not read permissions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_cf

    .line 2072
    :cond_ca
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2073
    nop

    .line 2074
    return-void

    .line 2072
    :catchall_cf
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullDebugElapsedClock(IJJLjava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1965
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1966
    iget-wide v4, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_11

    .line 1967
    goto :goto_13

    :cond_11
    sub-long v6, v2, v4

    .line 1969
    :goto_13
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    move-object v8, v4

    move/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1970
    iget-wide v8, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    invoke-virtual {v4, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1971
    invoke-virtual {v4, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1973
    invoke-virtual {v4, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1974
    invoke-virtual {v4, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1975
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1976
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1978
    iget-wide v4, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    const-wide/16 v8, 0x2

    rem-long/2addr v4, v8

    const-wide/16 v8, 0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_60

    .line 1979
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    move-object v10, v4

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1980
    iget-wide v10, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    invoke-virtual {v4, v10, v11}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1981
    invoke-virtual {v4, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1983
    invoke-virtual {v4, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1984
    invoke-virtual {v4, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1985
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1986
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    :cond_60
    iget-wide v4, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    .line 1990
    iput-wide v2, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    .line 1991
    return-void
.end method

.method private pullDebugFailingElapsedClock(IJJLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1995
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 1998
    iget-wide p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v0, 0x5

    rem-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_3a

    .line 2003
    iget-wide p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    invoke-virtual {v6, p3, p4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2004
    invoke-virtual {v6, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2006
    invoke-virtual {v6, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2007
    iget-wide p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long p5, p3, v0

    if-nez p5, :cond_2f

    .line 2008
    goto :goto_31

    :cond_2f
    sub-long v0, p1, p3

    .line 2007
    :goto_31
    invoke-virtual {v6, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2009
    iput-wide p1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    .line 2010
    invoke-interface {p6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2011
    return-void

    .line 1999
    :cond_3a
    iput-wide p1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    .line 2000
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failing debug elapsed clock"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pullDeviceCalculatedPowerBlameOther(IJJLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1804
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 1805
    if-nez v0, :cond_b

    .line 1806
    return-void

    .line 1808
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 1809
    iget-object v2, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_24

    .line 1810
    goto :goto_f

    .line 1812
    :cond_24
    iget-object v2, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_2d

    .line 1813
    goto :goto_f

    .line 1815
    :cond_2d
    new-instance v2, Landroid/os/StatsLogEventWrapper;

    move-object v4, v2

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1816
    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1817
    iget-wide v3, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v1, p0

    invoke-direct {p0, v3, v4}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1818
    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1819
    goto :goto_f

    .line 1820
    :cond_4f
    return-void
.end method

.method private pullDeviceCalculatedPowerBlameUid(IJJLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1787
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 1788
    if-nez v0, :cond_b

    .line 1789
    return-void

    .line 1791
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 1792
    iget-object v2, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v2, v3, :cond_24

    .line 1793
    goto :goto_f

    .line 1795
    :cond_24
    new-instance v2, Landroid/os/StatsLogEventWrapper;

    move-object v4, v2

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1796
    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1797
    iget-wide v3, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v1, p0

    invoke-direct {p0, v3, v4}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1798
    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1799
    goto :goto_f

    .line 1800
    :cond_46
    return-void
.end method

.method private pullDeviceCalculatedPowerUse(IJJLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1779
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    .line 1780
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1781
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1782
    invoke-interface {p6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1783
    return-void
.end method

.method private pullDirectoryUsage(IJJLjava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1431
    move-object/from16 v0, p6

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1432
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1433
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1435
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    move-object v5, v4

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1436
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1437
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1438
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1439
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v7, v1

    move v8, p1

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1442
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1443
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1444
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1445
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v5, v1

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1448
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1449
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1450
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1451
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    return-void
.end method

.method private pullDiskIo(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1824
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    .line 1842
    return-void
.end method

.method private pullDiskStats(IJJLjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1377
    const-string/jumbo v1, "storaged not found"

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 1378
    const/4 v2, 0x0

    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_11

    int-to-byte v3, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1380
    :cond_11
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/statsdperftest.tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1381
    nop

    .line 1382
    nop

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1386
    const/4 v5, 0x0

    :try_start_24
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_44
    .catchall {:try_start_24 .. :try_end_29} :catchall_38

    .line 1387
    :try_start_29
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_36
    .catchall {:try_start_29 .. :try_end_2c} :catchall_32

    .line 1392
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 1395
    :cond_2f
    :goto_2f
    goto :goto_4e

    .line 1393
    :catch_30
    move-exception v0

    .line 1396
    goto :goto_4e

    .line 1391
    :catchall_32
    move-exception v0

    move-object v1, v0

    move-object v5, v6

    goto :goto_3a

    .line 1388
    :catch_36
    move-exception v0

    goto :goto_46

    .line 1391
    :catchall_38
    move-exception v0

    move-object v1, v0

    .line 1392
    :goto_3a
    if-eqz v5, :cond_42

    :try_start_3c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_42

    .line 1393
    :catch_40
    move-exception v0

    goto :goto_43

    .line 1395
    :cond_42
    :goto_42
    nop

    :goto_43
    throw v1

    .line 1388
    :catch_44
    move-exception v0

    move-object v6, v5

    :goto_46
    move-object v5, v0

    .line 1389
    nop

    .line 1392
    if-eqz v6, :cond_2f

    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_30

    goto :goto_2f

    .line 1398
    :goto_4e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 1399
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1401
    :cond_5c
    const-string v2, "StatsCompanionService"

    if-eqz v5, :cond_67

    .line 1402
    const-string v0, "Error performing diskstats latency test"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-wide/16 v6, -0x1

    .line 1406
    :cond_67
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v3

    .line 1409
    const/4 v4, -0x1

    .line 1411
    :try_start_6c
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1412
    if-nez v0, :cond_78

    .line 1413
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_78
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    .line 1416
    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v4
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_80} :catch_81

    .line 1419
    goto :goto_85

    .line 1417
    :catch_81
    move-exception v0

    .line 1418
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_85
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    move-object v8, v0

    move v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1423
    invoke-virtual {v0, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1424
    invoke-virtual {v0, v3}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 1425
    invoke-virtual {v0, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1426
    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    return-void
.end method

.method private pullExternalStorageInfo(IJJLjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2193
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2194
    if-eqz v0, :cond_7d

    .line 2195
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 2196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 2197
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 2198
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 2199
    if-eqz v3, :cond_7a

    .line 2200
    const-string/jumbo v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2202
    nop

    .line 2203
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v2, :cond_44

    .line 2204
    move v1, v6

    goto :goto_4d

    .line 2205
    :cond_44
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v6, :cond_4c

    .line 2206
    move v1, v4

    goto :goto_4d

    .line 2205
    :cond_4c
    move v1, v5

    .line 2211
    :goto_4d
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2212
    move v4, v6

    goto :goto_5d

    .line 2213
    :cond_55
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2214
    goto :goto_5d

    .line 2216
    :cond_5c
    move v4, v5

    .line 2218
    :goto_5d
    new-instance v2, Landroid/os/StatsLogEventWrapper;

    move-object v5, v2

    move v6, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2220
    invoke-virtual {v2, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2221
    invoke-virtual {v2, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2222
    iget-wide v3, v3, Landroid/os/storage/DiskInfo;->size:J

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2223
    move-object/from16 v1, p6

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 2200
    :cond_77
    move-object/from16 v1, p6

    goto :goto_7c

    .line 2199
    :cond_7a
    move-object/from16 v1, p6

    .line 2226
    :goto_7c
    goto :goto_15

    .line 2228
    :cond_7d
    return-void
.end method

.method private pullFaceSettings(IJJLjava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2266
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2268
    :try_start_5
    iget-object v3, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 2269
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2270
    const/4 v5, 0x0

    move v6, v5

    :goto_19
    if-ge v6, v4, :cond_b6

    .line 2271
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 2273
    new-instance v14, Landroid/os/StatsLogEventWrapper;

    move-object v8, v14

    move/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2275
    iget-object v8, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_keyguard_enabled"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_46

    move v8, v10

    goto :goto_47

    :cond_46
    move v8, v5

    :goto_47
    invoke-virtual {v14, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2278
    iget-object v8, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_dismisses_keyguard"

    invoke-static {v8, v9, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_5a

    move v8, v10

    goto :goto_5b

    :cond_5a
    move v8, v5

    :goto_5b
    invoke-virtual {v14, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2281
    iget-object v8, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_attention_required"

    invoke-static {v8, v9, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_6e

    move v8, v10

    goto :goto_6f

    :cond_6e
    move v8, v5

    :goto_6f
    invoke-virtual {v14, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2284
    iget-object v8, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_app_enabled"

    invoke-static {v8, v9, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_82

    move v8, v10

    goto :goto_83

    :cond_82
    move v8, v5

    :goto_83
    invoke-virtual {v14, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2287
    iget-object v8, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_always_require_confirmation"

    invoke-static {v8, v9, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_96

    move v8, v10

    goto :goto_97

    :cond_96
    move v8, v5

    :goto_97
    invoke-virtual {v14, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2290
    iget-object v8, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_diversity_required"

    invoke-static {v8, v9, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_a9

    goto :goto_aa

    :cond_a9
    move v10, v5

    :goto_aa
    invoke-virtual {v14, v10}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2294
    move-object/from16 v7, p6

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catchall {:try_start_5 .. :try_end_b2} :catchall_bb

    .line 2270
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_19

    .line 2297
    :cond_b6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2298
    nop

    .line 2299
    return-void

    .line 2297
    :catchall_bb
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullKernelUidCpuActiveTime(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$xPc-EMoQkRUC4lkJfxYah3VZObc;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$xPc-EMoQkRUC4lkJfxYah3VZObc;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1063
    return-void
.end method

.method private pullKernelUidCpuClusterTime(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$8XwH_9_4XyR23VE4UEw0TLmPhXk;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$8XwH_9_4XyR23VE4UEw0TLmPhXk;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1052
    return-void
.end method

.method private pullKernelUidCpuFreqTime(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1037
    return-void
.end method

.method private pullKernelUidCpuTime(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$UBm3QCI0bvsnm37DPdPZCp_VPm0;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$UBm3QCI0bvsnm37DPdPZCp_VPm0;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1020
    return-void
.end method

.method private pullKernelWakelock(IJJLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 864
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 865
    invoke-virtual {v1, v0}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    .line 866
    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 867
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 868
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 869
    new-instance v9, Landroid/os/StatsLogEventWrapper;

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 870
    invoke-virtual {v9, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 871
    iget v2, v1, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v9, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 872
    iget v2, v1, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v9, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 873
    iget-wide v1, v1, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v9, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 874
    move-object/from16 v1, p6

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    goto :goto_11

    .line 876
    :cond_4a
    return-void
.end method

.method private pullLooperStats(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1346
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 1347
    if-eqz v0, :cond_7a

    .line 1351
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 1352
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 1353
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 1354
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1355
    iget v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1356
    iget-object v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1357
    iget-object v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1358
    iget-object v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1359
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1360
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1361
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1362
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1363
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1364
    iget-boolean v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 1365
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1366
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1367
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1368
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1369
    iget-wide v1, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    invoke-virtual {v8, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1370
    invoke-interface {p6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    goto :goto_15

    .line 1372
    :cond_79
    return-void

    .line 1348
    :cond_7a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "looperStats null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pullMobileBytesTransfer(IJJLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 930
    const-string p2, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 932
    :try_start_6
    const-class p5, Landroid/os/BatteryStatsInternal;

    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/BatteryStatsInternal;

    .line 933
    invoke-virtual {p5}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object p5

    .line 934
    array-length v0, p5
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_37
    .catchall {:try_start_6 .. :try_end_13} :catchall_35

    if-nez v0, :cond_19

    .line 947
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    return-void

    .line 937
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_26

    .line 938
    const-string p1, "NetworkStats Service is not available!"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_37
    .catchall {:try_start_19 .. :try_end_22} :catchall_35

    .line 947
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 939
    return-void

    .line 942
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0, p5}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object p5

    .line 943
    const/4 v0, 0x0

    invoke-direct {p0, p1, p6, p5, v0}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_34} :catch_37
    .catchall {:try_start_26 .. :try_end_34} :catchall_35

    goto :goto_3d

    .line 947
    :catchall_35
    move-exception p1

    goto :goto_42

    .line 944
    :catch_37
    move-exception p1

    .line 945
    :try_start_38
    const-string p5, "Pulling netstats for mobile bytes has error"

    invoke-static {p2, p5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 947
    :goto_3d
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    nop

    .line 949
    return-void

    .line 947
    :goto_42
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pullMobileBytesTransferByFgBg(IJJLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 970
    const-string p2, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 972
    :try_start_6
    const-class p5, Landroid/os/BatteryStatsInternal;

    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/BatteryStatsInternal;

    .line 973
    invoke-virtual {p5}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object p5

    .line 974
    array-length v0, p5
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_37
    .catchall {:try_start_6 .. :try_end_13} :catchall_35

    if-nez v0, :cond_19

    .line 987
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    return-void

    .line 977
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_26

    .line 978
    const-string p1, "NetworkStats Service is not available!"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_37
    .catchall {:try_start_19 .. :try_end_22} :catchall_35

    .line 987
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    return-void

    .line 981
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 982
    invoke-interface {v0, p5}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object p5

    .line 981
    invoke-direct {p0, p5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p5

    .line 983
    const/4 v0, 0x1

    invoke-direct {p0, p1, p6, p5, v0}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_34} :catch_37
    .catchall {:try_start_26 .. :try_end_34} :catchall_35

    goto :goto_3d

    .line 987
    :catchall_35
    move-exception p1

    goto :goto_42

    .line 984
    :catch_37
    move-exception p1

    .line 985
    :try_start_38
    const-string p5, "Pulling netstats for mobile bytes w/ fg/bg has error"

    invoke-static {p2, p5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 987
    :goto_3d
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 988
    nop

    .line 989
    return-void

    .line 987
    :goto_42
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pullModemActivityInfo(IJJLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1104
    monitor-enter p0

    .line 1105
    :try_start_4
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 1106
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 1108
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_93

    .line 1109
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_92

    .line 1110
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v1, "telephony"

    invoke-direct {v0, v1}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1112
    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    .line 1113
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1114
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1115
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1116
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1117
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 p2, 0x0

    aget p1, p1, p2

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1118
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 p2, 0x1

    aget p1, p1, p2

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1119
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 p2, 0x2

    aget p1, p1, p2

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1120
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 p2, 0x3

    aget p1, p1, p2

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1121
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 p2, 0x4

    aget p1, p1, p2

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1122
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1123
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v7, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1124
    invoke-interface {p6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_92
    return-void

    .line 1108
    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p1
.end method

.method private pullNativeProcessMemoryState(IJJLjava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1201
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1202
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 1203
    const/4 v2, 0x0

    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_69

    .line 1204
    aget v3, v1, v2

    .line 1205
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v4

    .line 1206
    if-nez v4, :cond_1b

    .line 1207
    move-object/from16 v3, p6

    goto :goto_66

    .line 1209
    :cond_1b
    invoke-static {v3}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 1210
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v3

    .line 1214
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 1215
    move-object/from16 v3, p6

    goto :goto_66

    .line 1217
    :cond_2c
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v7, v6

    move v8, p1

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1218
    invoke-virtual {v6, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1219
    invoke-virtual {v6, v3}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1220
    iget-wide v7, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1221
    iget-wide v7, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1222
    iget-wide v7, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1223
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1224
    iget-wide v7, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1225
    iget-wide v7, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1226
    invoke-static {v4}, Lcom/android/server/stats/StatsCompanionService;->anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1227
    move-object/from16 v3, p6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1229
    :cond_69
    return-void
.end method

.method private pullNotificationStats(IIJJLjava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1653
    const-string v1, "Getting notistats failed: "

    const-string v2, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1656
    :try_start_8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 1657
    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sub-long v8, p5, v5

    .line 1659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    move-object v5, p0

    iget-object v7, v5, Lcom/android/server/stats/StatsCompanionService;->mNotificationManager:Landroid/app/INotificationManager;

    const/4 v11, 0x1

    move v10, p1

    move-object v12, v0

    invoke-interface/range {v7 .. v12}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 1662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_41
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_26} :catch_3c
    .catchall {:try_start_8 .. :try_end_26} :catchall_3a

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2d

    .line 1674
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1663
    return-void

    .line 1665
    :cond_2d
    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object v13, v0

    :try_start_36
    invoke-static/range {v7 .. v13}, Lcom/android/server/stats/StatsCompanionService;->unpackStreamedData(IJJLjava/util/List;Ljava/util/List;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_41
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_39} :catch_3c
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_4a

    .line 1674
    :catchall_3a
    move-exception v0

    goto :goto_4f

    .line 1671
    :catch_3c
    move-exception v0

    .line 1672
    :try_start_3d
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1669
    :catch_41
    move-exception v0

    .line 1670
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1666
    :catch_46
    move-exception v0

    .line 1667
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_3a

    .line 1674
    :goto_4a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    nop

    .line 1677
    return-void

    .line 1674
    :goto_4f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullNumBiometricsEnrolled(IIJJLjava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1553
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1554
    nop

    .line 1555
    nop

    .line 1557
    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    .line 1558
    iget-object v3, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_21

    .line 1557
    :cond_20
    move-object v3, v4

    .line 1561
    :goto_21
    const-string v5, "android.hardware.biometrics.face"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1562
    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/face/FaceManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/hardware/face/FaceManager;

    .line 1565
    :cond_34
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    if-nez v3, :cond_3a

    .line 1566
    return-void

    .line 1568
    :cond_3a
    const/4 v5, 0x4

    if-ne v1, v5, :cond_40

    if-nez v4, :cond_40

    .line 1569
    return-void

    .line 1571
    :cond_40
    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1572
    if-nez v0, :cond_4d

    .line 1573
    return-void

    .line 1576
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1577
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1578
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1579
    nop

    .line 1580
    if-ne v1, v2, :cond_79

    .line 1581
    invoke-virtual {v3, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_83

    .line 1582
    :cond_79
    if-ne v1, v5, :cond_9d

    .line 1583
    invoke-virtual {v4, v8}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 1587
    :goto_83
    new-instance v14, Landroid/os/StatsLogEventWrapper;

    move-object v10, v14

    move/from16 v11, p2

    move-wide/from16 v12, p3

    move-object v2, v14

    move-wide/from16 v14, p5

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1588
    invoke-virtual {v2, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1589
    invoke-virtual {v2, v9}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1590
    move-object/from16 v8, p7

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    const/4 v2, 0x1

    goto :goto_59

    .line 1585
    :cond_9d
    return-void

    .line 1592
    :cond_9e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1593
    return-void
.end method

.method private pullPowerProfile(IJJLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1723
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1724
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1728
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1729
    invoke-virtual {v0, p1}, Lcom/android/internal/os/PowerProfile;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1730
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1731
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/StatsLogEventWrapper;->writeStorage([B)V

    .line 1732
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1733
    return-void
.end method

.method private pullProcessCpuTime(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1846
    monitor-enter p0

    .line 1847
    :try_start_1
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 1848
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 1849
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 1851
    :cond_12
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1852
    nop

    :goto_18
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 1853
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v0

    .line 1854
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1856
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1857
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1858
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1859
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    invoke-virtual {v8, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1860
    invoke-interface {p6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1862
    :cond_49
    monitor-exit p0

    .line 1863
    return-void

    .line 1862
    :catchall_4b
    move-exception p1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method private pullProcessMemoryHighWaterMark(IJJLjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1238
    move-object/from16 v0, p6

    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 1239
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1240
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 1241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 1242
    iget v3, v2, Landroid/app/ProcessMemoryState;->pid:I

    .line 1243
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readRssHighWaterMarkFromProcfs(I)J

    move-result-wide v3

    .line 1244
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_2b

    .line 1245
    goto :goto_12

    .line 1247
    :cond_2b
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    move-object v6, v5

    move v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1248
    iget v6, v2, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1249
    iget-object v2, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v5, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1251
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    goto :goto_12

    .line 1253
    :cond_47
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 1254
    const/4 v2, 0x0

    :goto_4e
    array-length v3, v1

    if-ge v2, v3, :cond_79

    .line 1255
    aget v3, v1, v2

    .line 1256
    invoke-static {v3}, Landroid/os/Process;->getUidForPid(I)I

    move-result v4

    .line 1257
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v5

    .line 1258
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readRssHighWaterMarkFromProcfs(I)J

    move-result-wide v6

    .line 1259
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v8, v3

    move v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1260
    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1261
    invoke-virtual {v3, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1263
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1266
    :cond_79
    const-string/jumbo v0, "sys.rss_hwm_reset.on"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method private pullProcessMemoryState(IJJLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1173
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1174
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1175
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    .line 1177
    iget v2, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget v3, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v2

    .line 1179
    if-nez v2, :cond_27

    .line 1180
    goto :goto_10

    .line 1182
    :cond_27
    new-instance v9, Landroid/os/StatsLogEventWrapper;

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1183
    iget v3, v1, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v9, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1184
    iget-object v3, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1185
    iget v1, v1, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {v9, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1186
    iget-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1187
    iget-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1188
    iget-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1189
    iget-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1190
    iget-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1191
    const-wide/16 v3, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1192
    iget-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J

    invoke-virtual {v9, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1193
    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1194
    move-object/from16 v1, p6

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    goto :goto_10

    .line 1196
    :cond_6f
    return-void
.end method

.method private pullProcessStats(IIJJLjava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1621
    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 1623
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/StatsCompanionService;->readProcStatsHighWaterMark(I)J

    move-result-wide v8

    .line 1624
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    iget-object v2, v1, Lcom/android/server/stats/StatsCompanionService;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    const/4 v6, 0x1

    move-wide v3, v8

    move/from16 v5, p1

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStats(JIZLjava/util/List;)J

    move-result-wide v2

    .line 1627
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1e} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1e} :catch_8e
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_1e} :catch_85
    .catchall {:try_start_5 .. :try_end_1e} :catchall_83

    const/4 v5, 0x1

    if-eq v4, v5, :cond_23

    .line 1628
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_83

    return-void

    .line 1630
    :cond_23
    move/from16 v10, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-object/from16 v15, p7

    :try_start_2b
    invoke-static/range {v10 .. v16}, Lcom/android/server/stats/StatsCompanionService;->unpackStreamedData(IJJLjava/util/List;Ljava/util/List;)V

    .line 1631
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1633
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    .line 1634
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_82} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_82} :catch_8e
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_82} :catch_85
    .catchall {:try_start_2b .. :try_end_82} :catchall_83

    goto :goto_9f

    .line 1643
    :catchall_83
    move-exception v0

    goto :goto_a2

    .line 1640
    :catch_85
    move-exception v0

    .line 1641
    :try_start_86
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 1638
    :catch_8e
    move-exception v0

    .line 1639
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f

    .line 1636
    :catch_97
    move-exception v0

    .line 1637
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    :goto_9f
    nop

    .line 1643
    :goto_a0
    monitor-exit p0

    .line 1644
    return-void

    .line 1643
    :goto_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_83

    throw v0
.end method

.method private pullProcessSystemIonHeapSize(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1281
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object v0

    .line 1282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    .line 1283
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1284
    iget v2, v1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1285
    iget v2, v1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v2}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1286
    iget-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1287
    iget v2, v1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    invoke-virtual {v8, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1288
    iget-wide v1, v1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1289
    invoke-interface {p6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    goto :goto_8

    .line 1291
    :cond_48
    return-void
.end method

.method private pullRoleHolders(JJLjava/util/List;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2132
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2134
    :try_start_6
    iget-object v3, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2135
    const-class v4, Lcom/android/server/role/RoleManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/role/RoleManagerInternal;

    .line 2137
    iget-object v0, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 2140
    const/4 v7, 0x0

    :goto_27
    if-ge v7, v5, :cond_c4

    .line 2141
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 2143
    invoke-virtual {v4, v8}, Lcom/android/server/role/RoleManagerInternal;->getRolesAndHolders(I)Landroid/util/ArrayMap;

    move-result-object v9

    .line 2146
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 2147
    const/4 v11, 0x0

    :goto_40
    if-ge v11, v10, :cond_b8

    .line 2148
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2149
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 2151
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 2152
    const/4 v15, 0x0

    :goto_53
    if-ge v15, v14, :cond_ad

    .line 2153
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_c9

    .line 2157
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    const/4 v0, 0x0

    :try_start_62
    invoke-virtual {v3, v6, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_66} :catch_8d
    .catchall {:try_start_62 .. :try_end_66} :catchall_c9

    .line 2161
    nop

    .line 2163
    :try_start_67
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/16 v19, 0x2741

    move-object/from16 v18, v0

    move-wide/from16 v20, p1

    move-wide/from16 v22, p3

    invoke-direct/range {v18 .. v23}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2165
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2166
    invoke-virtual {v0, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0, v12}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2168
    move-object/from16 v4, p5

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2152
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    goto :goto_53

    .line 2158
    :catch_8d
    move-exception v0

    .line 2159
    const-string v0, "StatsCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Role holder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_67 .. :try_end_a9} :catchall_c9

    .line 2173
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2160
    return-void

    .line 2147
    :cond_ad
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v4, p5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v17

    goto :goto_40

    .line 2140
    :cond_b8
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v4, p5

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    goto/16 :goto_27

    .line 2173
    :cond_c4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2174
    nop

    .line 2175
    return-void

    .line 2173
    :catchall_c9
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullSystemElapsedRealtime(IJJLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1158
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1160
    invoke-interface {p6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    return-void
.end method

.method private pullSystemIonHeapSize(IJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1272
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 1273
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1274
    invoke-virtual {v8, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1275
    invoke-interface {p6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    return-void
.end method

.method private pullSystemUpTime(IJJLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1165
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1167
    invoke-interface {p6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    return-void
.end method

.method private pullTemperature(IJJLjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1924
    :try_start_4
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentTemperatures()Ljava/util/List;

    move-result-object v0

    .line 1925
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    .line 1926
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1928
    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1929
    invoke-virtual {v3}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v3}, Landroid/os/Temperature;->getValue()F

    move-result v4

    const/high16 v5, 0x41200000  # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v10, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1931
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1932
    move-object/from16 v3, p6

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_48} :catch_4b
    .catchall {:try_start_4 .. :try_end_48} :catchall_49

    .line 1933
    goto :goto_e

    .line 1938
    :catchall_49
    move-exception v0

    goto :goto_58

    .line 1934
    :catch_4b
    move-exception v0

    .line 1936
    :try_start_4c
    const-string v0, "StatsCompanionService"

    const-string v3, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    .line 1938
    :cond_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1939
    nop

    .line 1940
    return-void

    .line 1938
    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullTimeZoneDataInfo(IJJLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2179
    nop

    .line 2181
    :try_start_1
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    .line 2184
    goto :goto_10

    .line 2182
    :catch_6
    move-exception v0

    .line 2183
    const-string v1, "StatsCompanionService"

    const-string v2, "Getting tzdb version failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Unknown"

    .line 2186
    :goto_10
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2187
    invoke-virtual {v7, v0}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2188
    invoke-interface {p6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2189
    return-void
.end method

.method private pullWifiActivityInfo(IJJLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1068
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_6
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_17

    .line 1071
    const-string/jumbo v0, "wifi"

    .line 1073
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 1075
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_7b

    .line 1076
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_7a

    .line 1078
    :try_start_1c
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "wifi"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1079
    iget-object v1, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1080
    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1081
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v4, v1

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1083
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1084
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1085
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1086
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1087
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1088
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1089
    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_67} :catch_6a
    .catchall {:try_start_1c .. :try_end_67} :catchall_68

    goto :goto_72

    .line 1095
    :catchall_68
    move-exception v0

    goto :goto_76

    .line 1090
    :catch_6a
    move-exception v0

    .line 1091
    :try_start_6b
    const-string v1, "StatsCompanionService"

    const-string v4, "Pulling wifiManager for wifi controller activity energy info has error"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_68

    .line 1095
    :goto_72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    goto :goto_7a

    .line 1095
    :goto_76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1098
    :cond_7a
    :goto_7a
    return-void

    .line 1075
    :catchall_7b
    move-exception v0

    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v0
.end method

.method private pullWifiBytesTransfer(IJJLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 881
    const-string p2, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 884
    :try_start_6
    const-class p5, Landroid/os/BatteryStatsInternal;

    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/BatteryStatsInternal;

    .line 885
    invoke-virtual {p5}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object p5

    .line 886
    array-length v0, p5
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_37
    .catchall {:try_start_6 .. :try_end_13} :catchall_35

    if-nez v0, :cond_19

    .line 899
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 887
    return-void

    .line 889
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_26

    .line 890
    const-string p1, "NetworkStats Service is not available!"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_37
    .catchall {:try_start_19 .. :try_end_22} :catchall_35

    .line 899
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    return-void

    .line 894
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0, p5}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object p5

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, p1, p6, p5, v0}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_34} :catch_37
    .catchall {:try_start_26 .. :try_end_34} :catchall_35

    goto :goto_3d

    .line 899
    :catchall_35
    move-exception p1

    goto :goto_42

    .line 896
    :catch_37
    move-exception p1

    .line 897
    :try_start_38
    const-string p5, "Pulling netstats for wifi bytes has error"

    invoke-static {p2, p5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 899
    :goto_3d
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    nop

    .line 901
    return-void

    .line 899
    :goto_42
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pullWifiBytesTransferByFgBg(IJJLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 906
    const-string p2, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 908
    :try_start_6
    const-class p5, Landroid/os/BatteryStatsInternal;

    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/BatteryStatsInternal;

    .line 909
    invoke-virtual {p5}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object p5

    .line 910
    array-length v0, p5
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_37
    .catchall {:try_start_6 .. :try_end_13} :catchall_35

    if-nez v0, :cond_19

    .line 923
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 911
    return-void

    .line 913
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_26

    .line 914
    const-string p1, "NetworkStats Service is not available!"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_37
    .catchall {:try_start_19 .. :try_end_22} :catchall_35

    .line 923
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    return-void

    .line 917
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 918
    invoke-interface {v0, p5}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object p5

    .line 917
    invoke-direct {p0, p5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p5

    .line 919
    const/4 v0, 0x1

    invoke-direct {p0, p1, p6, p5, v0}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_34} :catch_37
    .catchall {:try_start_26 .. :try_end_34} :catchall_35

    goto :goto_3d

    .line 923
    :catchall_35
    move-exception p1

    goto :goto_42

    .line 920
    :catch_37
    move-exception p1

    .line 921
    :try_start_38
    const-string p5, "Pulling netstats for wifi bytes w/ fg/bg has error"

    invoke-static {p2, p5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 923
    :goto_3d
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    nop

    .line 925
    return-void

    .line 923
    :goto_42
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1693
    nop

    .line 1694
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 1695
    if-lez v0, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_a
    const/16 v0, 0x4000

    :goto_c
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 1697
    :goto_10
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1701
    if-gez v3, :cond_1b

    .line 1705
    aput v2, p1, v1

    .line 1706
    return-object v0

    .line 1708
    :cond_1b
    add-int/2addr v2, v3

    .line 1709
    array-length v3, v0

    if-lt v2, v3, :cond_27

    .line 1710
    add-int/lit16 v3, v2, 0x4000

    new-array v3, v3, [B

    .line 1714
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1715
    move-object v0, v3

    .line 1717
    :cond_27
    goto :goto_10
.end method

.method private readProcStatsHighWaterMark(I)J
    .registers 8

    .line 1598
    const-string v0, "StatsCompanionService"

    const-wide/16 v1, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$BNidAMcUS8SzzhAyVRAjvZQ7-Gc;

    invoke-direct {v4, p1}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$BNidAMcUS8SzzhAyVRAjvZQ7-Gc;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 1601
    if-eqz p1, :cond_46

    array-length v3, p1

    if-nez v3, :cond_15

    goto :goto_46

    .line 1604
    :cond_15
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2e

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only 1 file expected for high water mark. Found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_2e
    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_45} :catch_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_45} :catch_47

    return-wide v0

    .line 1602
    :cond_46
    :goto_46
    return-wide v1

    .line 1610
    :catch_47
    move-exception p1

    .line 1611
    const-string v3, "Failed to parse file name."

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1608
    :catch_4e
    move-exception p1

    .line 1609
    const-string v3, "Failed to get procstats high watermark file."

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    nop

    .line 1613
    :goto_55
    return-wide v1
.end method

.method private rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 9

    .line 803
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 805
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 806
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 807
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 808
    const/4 v3, -0x1

    iput v3, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 809
    iput v3, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 811
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    .line 812
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 813
    nop

    :goto_25
    if-ge v2, v3, :cond_4d

    .line 814
    invoke-virtual {p1, v2, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 817
    iget v5, v4, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_2f

    goto :goto_4a

    .line 819
    :cond_2f
    iget v5, v4, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 820
    iget v5, v4, Landroid/net/NetworkStats$Entry;->uid:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 821
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 822
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 823
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 824
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 826
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 813
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 828
    :cond_4d
    return-object v0
.end method

.method private sayHiToStatsd()V
    .registers 18

    .line 2617
    move-object/from16 v1, p0

    sget-object v2, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2618
    :try_start_5
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-eqz v0, :cond_1a

    .line 2619
    const-string v0, "StatsCompanionService"

    const-string v1, "Trying to fetch statsd, but it was already fetched"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "sStatsd is not null when being fetched"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2622
    monitor-exit v2

    return-void

    .line 2624
    :cond_1a
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 2625
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-nez v0, :cond_2d

    .line 2626
    const-string v0, "StatsCompanionService"

    const-string v1, "Could not yet find statsd to tell it that StatsCompanion is alive."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_c6

    return-void

    .line 2633
    :cond_2d
    :try_start_2d
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v0}, Landroid/os/IStatsManager;->statsCompanionReady()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_b9
    .catchall {:try_start_2d .. :try_end_32} :catchall_c6

    .line 2636
    :try_start_32
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v0}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v3, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_43
    .catchall {:try_start_32 .. :try_end_42} :catchall_c6

    .line 2640
    goto :goto_4e

    .line 2637
    :catch_43
    move-exception v0

    .line 2638
    :try_start_44
    const-string v3, "StatsCompanionService"

    const-string v4, "linkToDeath(StatsdDeathRecipient) failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2639
    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 2642
    :goto_4e
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2643
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2644
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2645
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2646
    iget-object v5, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2653
    new-instance v14, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2654
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2655
    iget-object v11, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2659
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2660
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2661
    iget-object v3, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_a3} :catch_b9
    .catchall {:try_start_44 .. :try_end_a3} :catchall_c6

    .line 2667
    :try_start_a3
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_b4

    .line 2669
    :try_start_a8
    invoke-static {v3, v4}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    .line 2670
    nop

    .line 2671
    const-string v0, "StatsCompanionService"

    const-string v3, "Told statsd that StatsCompanionService is alive."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    goto :goto_c4

    .line 2669
    :catchall_b4
    move-exception v0

    invoke-static {v3, v4}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b9} :catch_b9
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_c6

    .line 2672
    :catch_b9
    move-exception v0

    .line 2673
    :try_start_ba
    const-string v3, "StatsCompanionService"

    const-string v4, "Failed to inform statsd that statscompanion is ready"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2674
    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 2676
    :goto_c4
    monitor-exit v2

    .line 2677
    return-void

    .line 2676
    :catchall_c6
    move-exception v0

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_ba .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method private systemReady()V
    .registers 1

    .line 2609
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 2610
    return-void
.end method

.method private static final toIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 449
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 450
    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 451
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 453
    :cond_19
    return-object v0
.end method

.method private static final toLongArray(Ljava/util/List;)[J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 457
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 458
    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 459
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 461
    :cond_19
    return-object v0
.end method

.method static unpackStreamedData(IJJLjava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 1683
    const/4 v1, 0x0

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1684
    const/4 p6, 0x1

    new-array p6, p6, [I

    .line 1685
    invoke-static {v0, p6}, Lcom/android/server/stats/StatsCompanionService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v0

    .line 1686
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1688
    aget p0, p6, v1

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-virtual {v8, p0}, Landroid/os/StatsLogEventWrapper;->writeStorage([B)V

    .line 1689
    invoke-interface {p5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    return-void
.end method


# virtual methods
.method public cancelAlarmForSubscriberTriggering()V
    .registers 5

    .line 733
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAnomalyAlarm()V
    .registers 5

    .line 702
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 706
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    nop

    .line 710
    return-void

    .line 708
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelPullingAlarm()V
    .registers 5

    .line 765
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 771
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    nop

    .line 775
    return-void

    .line 773
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 2736
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string p3, "StatsCompanionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 2738
    :cond_b
    sget-object p1, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2739
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of configuration files deleted: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 2740
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2739
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    iget-object p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_35

    .line 2742
    const-string p3, "  timestamp, deleted file name"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2745
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2746
    iget-object p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_48
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2747
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 2748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 2749
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2748
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2750
    goto :goto_48

    .line 2751
    :cond_7e
    monitor-exit p1

    .line 2752
    return-void

    .line 2751
    :catchall_80
    move-exception p2

    monitor-exit p1
    :try_end_82
    .catchall {:try_start_e .. :try_end_82} :catchall_80

    throw p2
.end method

.method public pullData(I)[Landroid/os/StatsLogEventWrapper;
    .registers 11

    .line 2306
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 2310
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 2312
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v0

    .line 2313
    packed-switch p1, :pswitch_data_236

    .line 2527
    :pswitch_16  #0x2715, 0x2722, 0x2723, 0x2724, 0x272e, 0x2736, 0x273b, 0x273d, 0x2743, 0x2746, 0x2747, 0x274e, 0x274f, 0x2750, 0x2751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such tagId data as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatsCompanionService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const/4 p1, 0x0

    return-object p1

    .line 2522
    :pswitch_2e  #0x2752
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullNotificationStats(IIJJLjava/util/List;)V

    .line 2524
    goto/16 :goto_228

    .line 2395
    :pswitch_37  #0x274d
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullProcessSystemIonHeapSize(IJJLjava/util/List;)V

    .line 2396
    goto/16 :goto_228

    .line 2518
    :pswitch_41  #0x274c
    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/stats/StatsCompanionService;->pullAppOps(JJLjava/util/List;)V

    .line 2519
    goto/16 :goto_228

    .line 2482
    :pswitch_4a  #0x274b
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullCoolingDevices(IJJLjava/util/List;)V

    .line 2483
    goto/16 :goto_228

    .line 2514
    :pswitch_54  #0x274a
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullFaceSettings(IJJLjava/util/List;)V

    .line 2515
    goto/16 :goto_228

    .line 2510
    :pswitch_5e  #0x2749
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullAppsOnExternalStorageInfo(IJJLjava/util/List;)V

    .line 2511
    goto/16 :goto_228

    .line 2391
    :pswitch_68  #0x2748
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullSystemIonHeapSize(IJJLjava/util/List;)V

    .line 2392
    goto/16 :goto_228

    .line 2506
    :pswitch_72  #0x2745
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullExternalStorageInfo(IJJLjava/util/List;)V

    .line 2507
    goto/16 :goto_228

    .line 2502
    :pswitch_7c  #0x2744
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullTimeZoneDataInfo(IJJLjava/util/List;)V

    .line 2503
    goto/16 :goto_228

    .line 2498
    :pswitch_86  #0x2742
    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/stats/StatsCompanionService;->pullDangerousPermissionState(JJLjava/util/List;)V

    .line 2499
    goto/16 :goto_228

    .line 2494
    :pswitch_8f  #0x2741
    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/stats/StatsCompanionService;->pullRoleHolders(JJLjava/util/List;)V

    .line 2495
    goto/16 :goto_228

    .line 2432
    :pswitch_98  #0x2740
    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullNumBiometricsEnrolled(IIJJLjava/util/List;)V

    .line 2434
    goto/16 :goto_228

    .line 2490
    :pswitch_a1  #0x273f
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDebugFailingElapsedClock(IJJLjava/util/List;)V

    .line 2491
    goto/16 :goto_228

    .line 2486
    :pswitch_ab  #0x273e
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDebugElapsedClock(IJJLjava/util/List;)V

    .line 2487
    goto/16 :goto_228

    .line 2454
    :pswitch_b5  #0x273c
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullBuildInformation(IJJLjava/util/List;)V

    .line 2455
    goto/16 :goto_228

    .line 2387
    :pswitch_bf  #0x273a
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryHighWaterMark(IJJLjava/util/List;)V

    .line 2388
    goto/16 :goto_228

    .line 2474
    :pswitch_c9  #0x2739
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerBlameOther(IJJLjava/util/List;)V

    .line 2475
    goto/16 :goto_228

    .line 2470
    :pswitch_d3  #0x2738
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerBlameUid(IJJLjava/util/List;)V

    .line 2471
    goto/16 :goto_228

    .line 2466
    :pswitch_dd  #0x2737
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerUse(IJJLjava/util/List;)V

    .line 2467
    goto/16 :goto_228

    .line 2462
    :pswitch_e7  #0x2735
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerThreadFreq(IJJLjava/util/List;)V

    .line 2463
    goto/16 :goto_228

    .line 2383
    :pswitch_f1  #0x2734
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullNativeProcessMemoryState(IJJLjava/util/List;)V

    .line 2384
    goto/16 :goto_228

    .line 2458
    :pswitch_fb  #0x2733
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullProcessCpuTime(IJJLjava/util/List;)V

    .line 2459
    goto/16 :goto_228

    .line 2441
    :pswitch_105  #0x2732
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessStats(IIJJLjava/util/List;)V

    .line 2443
    goto/16 :goto_228

    .line 2450
    :pswitch_10e  #0x2731
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullPowerProfile(IJJLjava/util/List;)V

    .line 2451
    goto/16 :goto_228

    .line 2446
    :pswitch_118  #0x2730
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDiskIo(IJJLjava/util/List;)V

    .line 2447
    goto/16 :goto_228

    .line 2427
    :pswitch_122  #0x272f
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullNumBiometricsEnrolled(IIJJLjava/util/List;)V

    .line 2429
    goto/16 :goto_228

    .line 2437
    :pswitch_12b  #0x272d
    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessStats(IIJJLjava/util/List;)V

    .line 2438
    goto/16 :goto_228

    .line 2423
    :pswitch_135  #0x272c
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullCategorySize(IJJLjava/util/List;)V

    .line 2424
    goto/16 :goto_228

    .line 2419
    :pswitch_13f  #0x272b
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullAppSize(IJJLjava/util/List;)V

    .line 2420
    goto/16 :goto_228

    .line 2415
    :pswitch_149  #0x272a
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDirectoryUsage(IJJLjava/util/List;)V

    .line 2416
    goto/16 :goto_228

    .line 2411
    :pswitch_153  #0x2729
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDiskStats(IJJLjava/util/List;)V

    .line 2412
    goto/16 :goto_228

    .line 2407
    :pswitch_15d  #0x2728
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullLooperStats(IJJLjava/util/List;)V

    .line 2408
    goto/16 :goto_228

    .line 2403
    :pswitch_167  #0x2727
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullBinderCallsStatsExceptions(IJJLjava/util/List;)V

    .line 2404
    goto/16 :goto_228

    .line 2399
    :pswitch_171  #0x2726
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullBinderCallsStats(IJJLjava/util/List;)V

    .line 2400
    goto/16 :goto_228

    .line 2478
    :pswitch_17b  #0x2725
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullTemperature(IJJLjava/util/List;)V

    .line 2479
    goto/16 :goto_228

    .line 2351
    :pswitch_185  #0x2721
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuClusterTime(IJJLjava/util/List;)V

    .line 2352
    goto/16 :goto_228

    .line 2355
    :pswitch_18f  #0x2720
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuActiveTime(IJJLjava/util/List;)V

    .line 2356
    goto/16 :goto_228

    .line 2371
    :pswitch_199  #0x271f
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullSystemUpTime(IJJLjava/util/List;)V

    .line 2372
    goto/16 :goto_228

    .line 2375
    :pswitch_1a3  #0x271e
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullSystemElapsedRealtime(IJJLjava/util/List;)V

    .line 2376
    goto/16 :goto_228

    .line 2379
    :pswitch_1ad  #0x271d
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryState(IJJLjava/util/List;)V

    .line 2380
    goto/16 :goto_228

    .line 2363
    :pswitch_1b7  #0x271c
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullModemActivityInfo(IJJLjava/util/List;)V

    .line 2364
    goto/16 :goto_228

    .line 2359
    :pswitch_1c1  #0x271b
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullWifiActivityInfo(IJJLjava/util/List;)V

    .line 2360
    goto/16 :goto_228

    .line 2347
    :pswitch_1cb  #0x271a
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuFreqTime(IJJLjava/util/List;)V

    .line 2348
    goto/16 :goto_228

    .line 2343
    :pswitch_1d5  #0x2719
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuTime(IJJLjava/util/List;)V

    .line 2344
    goto/16 :goto_228

    .line 2339
    :pswitch_1df  #0x2718
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerFreq(IJJLjava/util/List;)V

    .line 2340
    goto/16 :goto_228

    .line 2367
    :pswitch_1e9  #0x2717
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothActivityInfo(IJJLjava/util/List;)V

    .line 2368
    goto :goto_228

    .line 2331
    :pswitch_1f2  #0x2716
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothBytesTransfer(IJJLjava/util/List;)V

    .line 2332
    goto :goto_228

    .line 2335
    :pswitch_1fb  #0x2714
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullKernelWakelock(IJJLjava/util/List;)V

    .line 2336
    goto :goto_228

    .line 2327
    :pswitch_204  #0x2713
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransferByFgBg(IJJLjava/util/List;)V

    .line 2328
    goto :goto_228

    .line 2319
    :pswitch_20d  #0x2712
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransfer(IJJLjava/util/List;)V

    .line 2320
    goto :goto_228

    .line 2323
    :pswitch_216  #0x2711
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransferByFgBg(IJJLjava/util/List;)V

    .line 2324
    goto :goto_228

    .line 2315
    :pswitch_21f  #0x2710
    move-object v0, p0

    move v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransfer(IJJLjava/util/List;)V

    .line 2316
    nop

    .line 2530
    :goto_228
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/StatsLogEventWrapper;

    invoke-interface {v8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/StatsLogEventWrapper;

    return-object p1

    nop

    :pswitch_data_236
    .packed-switch 0x2710
        :pswitch_21f  #00002710
        :pswitch_216  #00002711
        :pswitch_20d  #00002712
        :pswitch_204  #00002713
        :pswitch_1fb  #00002714
        :pswitch_16  #00002715
        :pswitch_1f2  #00002716
        :pswitch_1e9  #00002717
        :pswitch_1df  #00002718
        :pswitch_1d5  #00002719
        :pswitch_1cb  #0000271a
        :pswitch_1c1  #0000271b
        :pswitch_1b7  #0000271c
        :pswitch_1ad  #0000271d
        :pswitch_1a3  #0000271e
        :pswitch_199  #0000271f
        :pswitch_18f  #00002720
        :pswitch_185  #00002721
        :pswitch_16  #00002722
        :pswitch_16  #00002723
        :pswitch_16  #00002724
        :pswitch_17b  #00002725
        :pswitch_171  #00002726
        :pswitch_167  #00002727
        :pswitch_15d  #00002728
        :pswitch_153  #00002729
        :pswitch_149  #0000272a
        :pswitch_13f  #0000272b
        :pswitch_135  #0000272c
        :pswitch_12b  #0000272d
        :pswitch_16  #0000272e
        :pswitch_122  #0000272f
        :pswitch_118  #00002730
        :pswitch_10e  #00002731
        :pswitch_105  #00002732
        :pswitch_fb  #00002733
        :pswitch_f1  #00002734
        :pswitch_e7  #00002735
        :pswitch_16  #00002736
        :pswitch_dd  #00002737
        :pswitch_d3  #00002738
        :pswitch_c9  #00002739
        :pswitch_bf  #0000273a
        :pswitch_16  #0000273b
        :pswitch_b5  #0000273c
        :pswitch_16  #0000273d
        :pswitch_ab  #0000273e
        :pswitch_a1  #0000273f
        :pswitch_98  #00002740
        :pswitch_8f  #00002741
        :pswitch_86  #00002742
        :pswitch_16  #00002743
        :pswitch_7c  #00002744
        :pswitch_72  #00002745
        :pswitch_16  #00002746
        :pswitch_16  #00002747
        :pswitch_68  #00002748
        :pswitch_5e  #00002749
        :pswitch_54  #0000274a
        :pswitch_4a  #0000274b
        :pswitch_41  #0000274c
        :pswitch_37  #0000274d
        :pswitch_16  #0000274e
        :pswitch_16  #0000274f
        :pswitch_16  #00002750
        :pswitch_16  #00002751
        :pswitch_2e  #00002752
    .end packed-switch
.end method

.method public sendActiveConfigsChangedBroadcast(Landroid/os/IBinder;[J)V
    .registers 9

    .line 397
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 398
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 399
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 400
    const-string p1, "android.app.extra.STATS_ACTIVE_CONFIG_KEYS"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 402
    :try_start_12
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 408
    goto :goto_23

    .line 406
    :catch_1b
    move-exception p1

    .line 407
    const-string p1, "StatsCompanionService"

    const-string p2, "Unable to send active configs changed broadcast using IntentSender"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_23
    return-void
.end method

.method public sendDataBroadcast(Landroid/os/IBinder;J)V
    .registers 10

    .line 384
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 385
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 386
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 387
    const-string p1, "android.app.extra.LAST_REPORT_TIME"

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    :try_start_12
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 392
    goto :goto_23

    .line 390
    :catch_1b
    move-exception p1

    .line 391
    const-string p1, "StatsCompanionService"

    const-string p2, "Unable to send using IntentSender"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_23
    return-void
.end method

.method public sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V
    .registers 14

    .line 415
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 416
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 417
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 419
    const-string v1, "android.app.extra.STATS_CONFIG_UID"

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 420
    const-string v1, "android.app.extra.STATS_CONFIG_KEY"

    invoke-virtual {p1, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 421
    const-string p4, "android.app.extra.STATS_SUBSCRIPTION_ID"

    invoke-virtual {p1, p4, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 422
    const-string p4, "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

    invoke-virtual {p1, p4, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 423
    const-string p4, "android.app.extra.STATS_DIMENSIONS_VALUE"

    invoke-virtual {p1, p4, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p7

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    array-length p4, p10

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    array-length p4, p10

    const/4 p5, 0x0

    :goto_33
    if-ge p5, p4, :cond_3d

    aget-object p6, p10, p5

    .line 427
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 p5, p5, 0x1

    goto :goto_33

    .line 429
    :cond_3d
    const-string p4, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {p7, p4, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 440
    :try_start_42
    iget-object p5, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 p6, 0x1

    const/4 p8, 0x0

    const/4 p9, 0x0

    move-object p4, v0

    invoke-virtual/range {p4 .. p9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_4b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_42 .. :try_end_4b} :catch_4c

    .line 445
    goto :goto_68

    .line 441
    :catch_4c
    move-exception p1

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to send using IntentSender from uid "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "; presumably it had been cancelled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatsCompanionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_68
    return-void
.end method

.method public setAlarmForSubscriberTriggering(J)V
    .registers 12

    .line 714
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 724
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.periodic"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    .line 727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    nop

    .line 729
    return-void

    .line 727
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAnomalyAlarm(J)V
    .registers 12

    .line 686
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 693
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.anomaly"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    .line 696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    nop

    .line 698
    return-void

    .line 696
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setPullingAlarm(J)V
    .registers 12

    .line 747
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 756
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.pull"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    .line 759
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    nop

    .line 761
    return-void

    .line 759
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public statsdReady()V
    .registers 5

    .line 2535
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 2539
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 2540
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.STATSD_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2541
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2540
    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2543
    return-void
.end method

.method public triggerUidSnapshot()V
    .registers 7

    .line 2547
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 2548
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2549
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_24

    .line 2551
    :try_start_a
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_15
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2555
    :goto_f
    :try_start_f
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_24

    .line 2556
    goto :goto_1e

    .line 2555
    :catchall_13
    move-exception v3

    goto :goto_20

    .line 2552
    :catch_15
    move-exception v3

    .line 2553
    :try_start_16
    const-string v4, "StatsCompanionService"

    const-string v5, "Failed to trigger uid snapshot."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    goto :goto_f

    .line 2557
    :goto_1e
    :try_start_1e
    monitor-exit v0

    .line 2558
    return-void

    .line 2555
    :goto_20
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v3

    .line 2557
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw v1
.end method
