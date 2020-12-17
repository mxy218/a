.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303ff

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static mDeviceControlService:Lcom/android/server/DeviceControlService; = null

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mStartCount:I

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 211
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 398
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 406
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 407
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 658
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 659
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 660
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 662
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 663
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 664
    return-void
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private static isDeviceProvisionedInSettingsDb(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 2657
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .registers 4

    .line 861
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 863
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 865
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 866
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 6

    .line 991
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v2, Landroid/util/TimingsTraceLog;

    const-string v3, "SystemServerTimingAsync"

    const-wide/32 v4, 0x80000

    invoke-direct {v2, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 994
    .local v2, "traceLog":Landroid/util/TimingsTraceLog;
    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 995
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 996
    const-string v0, "Unable to preload default resources"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_26
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    .line 1001
    .end local v2  # "traceLog":Landroid/util/TimingsTraceLog;
    goto :goto_30

    .line 999
    :catch_2a
    move-exception v0

    .line 1000
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 4

    .line 1103
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1105
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1107
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1108
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"  # [Ljava/lang/String;

    .line 388
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 389
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 604
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 607
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 610
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 611
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 613
    .end local v4  # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 621
    .restart local v4  # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 622
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 624
    const/4 v7, 0x0

    .line 626
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 629
    goto :goto_56

    .line 627
    :catch_50
    move-exception v2

    .line 628
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v2  # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 632
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 633
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 640
    .end local v6  # "packageFile":Ljava/io/File;
    .end local v7  # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 650
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 651
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 652
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 655
    .end local v0  # "runnable":Ljava/lang/Runnable;
    .end local v2  # "msg":Landroid/os/Message;
    .end local v3  # "reboot":Z
    .end local v4  # "reason":Ljava/lang/String;
    :cond_8a
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "e"  # Ljava/lang/Throwable;

    .line 599
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    return-void
.end method

.method private run()V
    .registers 14

    .line 411
    const-string v0, "System"

    const-string/jumbo v1, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    :try_start_a
    const-string v4, "InitBeforeStartServices"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v4, "sys.system_server.start_count"

    iget v5, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v4, "sys.system_server.start_elapsed"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string/jumbo v4, "sys.system_server.start_uptime"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v4, 0xbc3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 419
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-wide v8, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    .line 418
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_1c7

    const-wide/32 v9, 0x5265c00

    cmp-long v4, v4, v9

    const-string v5, "SystemServer"

    if-gez v4, :cond_6b

    .line 426
    :try_start_63
    const-string v4, "System clock is before 1970; setting to 1970."

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {v9, v10}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 433
    :cond_6b
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "timezoneProperty":Ljava/lang/String;
    if-eqz v4, :cond_77

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 435
    :cond_77
    const-string v6, "Timezone not set; setting to GMT."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v6, "GMT"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_81
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 448
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "languageTag":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v1, "persist.sys.country"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "persist.sys.localevar"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v2  # "languageTag":Ljava/lang/String;
    :cond_a8
    invoke-static {v8}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 459
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 462
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 465
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 469
    const-string v2, "Android:SysServerInit_START"

    invoke-static {v2}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 473
    const-string v2, "Entered the Android system server!"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    .line 475
    .local v2, "uptimeMillis":I
    const/16 v3, 0xbc2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 476
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v3, :cond_d3

    .line 477
    const-string v3, "boot_system_server_init"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 487
    :cond_d3
    const-string/jumbo v3, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 494
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    const v6, 0x3f4ccccd  # 0.8f

    invoke-virtual {v3, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 498
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 502
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 506
    invoke-static {v8}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 509
    invoke-static {v8}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 512
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 515
    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 518
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 520
    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 521
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 522
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 526
    const-string v3, "android_servers"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 529
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_127

    .line 530
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 535
    :cond_127
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 538
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 541
    new-instance v3, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 542
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 544
    const-class v3, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v3, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 546
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_14b
    .catchall {:try_start_63 .. :try_end_14b} :catchall_1c7

    .line 548
    nop

    .end local v2  # "uptimeMillis":I
    .end local v4  # "timezoneProperty":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 549
    nop

    .line 553
    :try_start_150
    const-string v2, "StartServices"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 555
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 556
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 557
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_161
    .catchall {:try_start_150 .. :try_end_161} :catchall_1b5

    .line 563
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 564
    nop

    .line 566
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 568
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_19a

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_19a

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 570
    .local v0, "uptimeMillis":I
    const-string v2, "boot_system_server_ready"

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 571
    const v1, 0xea60

    .line 572
    .local v1, "MAX_UPTIME_MILLIS":I
    const v2, 0xea60

    if-le v0, v2, :cond_19a

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServerTiming"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v0  # "uptimeMillis":I
    .end local v1  # "MAX_UPTIME_MILLIS":I
    :cond_19a
    invoke-static {}, Ldalvik/system/VMRuntime;->hasBootImageSpaces()Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 581
    const-string v0, "Runtime is not running with a boot image!"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1a5
    const-string v0, "Android:SysServerInit_End"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 591
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :catchall_1b5
    move-exception v1

    .line 559
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1b6
    const-string v2, "******************************************"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v2, "************ Failure starting system services"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    nop

    .end local p0  # "this":Lcom/android/server/SystemServer;
    throw v1
    :try_end_1c2
    .catchall {:try_start_1b6 .. :try_end_1c2} :catchall_1c2

    .line 563
    .end local v1  # "ex":Ljava/lang/Throwable;
    .restart local p0  # "this":Lcom/android/server/SystemServer;
    :catchall_1c2
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 548
    :catchall_1c7
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startAttentionService(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 2491
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2492
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    return-void

    .line 2496
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2497
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2498
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2499
    return-void
.end method

.method private startBootFaceRecognitionService(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 2538
    const-string v0, "SystemServer"

    const-string/jumbo v1, "startBootFaceRecognitionService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2540
    :try_start_8
    invoke-static {p1}, Lcom/android/server/SystemServer;->isDeviceProvisionedInSettingsDb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "flyme.face.facerecognition"

    .line 2542
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2543
    const-string/jumbo v1, "startFaceBootReceiverService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2545
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.meizu.facerecognition"

    const-string v4, "com.meizu.facerecognition.server.BootFaceRecognitionService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2547
    const-string/jumbo v2, "start_app"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2548
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3f

    .line 2552
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_3e
    goto :goto_46

    .line 2550
    :catchall_3f
    move-exception v0

    .line 2551
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting FaceRecognitionServic"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2553
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_46
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2554
    return-void
.end method

.method private startBootstrapServices()V
    .registers 14

    .line 675
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string v2, "StartWatchdog"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 677
    .local v2, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 678
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 680
    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v4, "ReadingSystemConfig"

    .line 682
    .local v4, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v5, "ReadingSystemConfig"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 684
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 689
    const-string v5, "StartInstaller"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 690
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Installer;

    .line 691
    .local v5, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 695
    const-string v6, "DeviceIdentifiersPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 696
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 697
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 700
    const-string v6, "UriGrantsManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 701
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 702
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 705
    const-string v6, "StartActivityManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 707
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 708
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v6

    .line 709
    .local v6, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v7, v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 711
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 712
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 713
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 714
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 720
    const-string v7, "StartPowerManager"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 721
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 722
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 724
    const-string v7, "StartThermalManager"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 725
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 726
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 730
    const-string v7, "InitPowerManagement"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 731
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 732
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 735
    const-string v7, "StartRecoverySystemService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 736
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 737
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 742
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 745
    const-string v7, "StartLightsService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 746
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 747
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 749
    const-string v7, "StartSidekickService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 751
    const/4 v7, 0x0

    const-string v8, "config.enable_sidekick_graphics"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 752
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 754
    :cond_f7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 758
    const-string v8, "StartDisplayManager"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 760
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 763
    const-string v8, "WaitForDisplay"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 764
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 765
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 768
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 769
    .local v8, "cryptState":Ljava/lang/String;
    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_13b

    .line 770
    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iput-boolean v10, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_14a

    .line 772
    :cond_13b
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 773
    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iput-boolean v10, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 778
    :cond_14a
    :goto_14a
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v9, 0x0

    if-nez v3, :cond_15a

    .line 779
    nop

    .line 780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    long-to-int v3, v11

    .line 779
    const-string v11, "boot_package_manager_init_start"

    invoke-static {v9, v11, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 782
    :cond_15a
    const-string v3, "StartPackageManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 784
    :try_start_15f
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v11, :cond_16d

    goto :goto_16e

    :cond_16d
    move v10, v7

    :goto_16e
    iget-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v5, v10, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_176
    .catchall {:try_start_15f .. :try_end_176} :catchall_274

    .line 788
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 789
    nop

    .line 790
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 791
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 792
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 793
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_1a6

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 794
    nop

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v0, v10

    .line 794
    const-string v3, "boot_package_manager_init_ready"

    invoke-static {v9, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 800
    :cond_1a6
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_1e4

    .line 801
    const-string v0, "config.disable_otadexopt"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 803
    .local v0, "disableOtaDexopt":Z
    if-nez v0, :cond_1e4

    .line 804
    const-string v3, "StartOtaDexOptService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 806
    :try_start_1b7
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 807
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v9}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1c5
    .catchall {:try_start_1b7 .. :try_end_1c5} :catchall_1c6

    goto :goto_1cd

    .line 808
    :catchall_1c6
    move-exception v3

    .line 809
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1c7
    const-string/jumbo v9, "starting OtaDexOptService"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1cd
    .catchall {:try_start_1c7 .. :try_end_1cd} :catchall_1d8

    .line 811
    .end local v3  # "e":Ljava/lang/Throwable;
    :goto_1cd
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 813
    goto :goto_1e4

    .line 811
    :catchall_1d8
    move-exception v3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v3

    .line 817
    .end local v0  # "disableOtaDexopt":Z
    :cond_1e4
    :goto_1e4
    const-string v0, "StartUserManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 819
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 822
    const-string v0, "InitAttributerCache"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 824
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 827
    const-string v0, "SetSystemProcess"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 829
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 833
    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 835
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 839
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 842
    const-string v0, "StartOverlayManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3, v5}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 844
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 846
    const-string v0, "StartSensorPrivacyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/SensorPrivacyService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 848
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 850
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_262

    .line 852
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 853
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 860
    :cond_262
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v3, "StartSensorService"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 869
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startFlymeDeviceControlService()V

    .line 871
    return-void

    .line 788
    :catchall_274
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v1
.end method

.method private startContentCaptureService(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 2455
    const/4 v0, 0x0

    .line 2456
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2458
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2459
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2460
    if-eqz v0, :cond_22

    .line 2461
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 2463
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    return-void

    .line 2469
    :cond_28
    :goto_28
    if-nez v0, :cond_3d

    .line 2470
    const v3, 0x1040156

    .line 2471
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2472
    .local v3, "serviceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2473
    const-string v4, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    return-void

    .line 2478
    .end local v3  # "serviceName":Ljava/lang/String;
    :cond_3d
    const-string v2, "StartContentCaptureService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2479
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2481
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2482
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2483
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_5a

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_5a

    .line 2484
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 2487
    :cond_5a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2488
    return-void
.end method

.method private startCoreServices()V
    .registers 3

    .line 877
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 880
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 883
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 885
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 886
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 885
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 888
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 889
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 888
    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 891
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 894
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 895
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 897
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 901
    :cond_56
    const-string v0, "StartCachedDeviceStateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 903
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 906
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 908
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 911
    const-string v0, "StartLooperStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 913
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 916
    const-string v0, "StartRollbackManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 918
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 921
    const-string v0, "StartBugreportManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 923
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 926
    const-string v0, "GpuService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 928
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 929
    return-void
.end method

.method private startFlymeDeviceControlService()V
    .registers 4

    .line 2527
    const-string/jumbo v0, "startFlymeDeviceControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2528
    const-string v0, "SystemServer"

    const-string v1, "FlymeDeviceControlService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2530
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/DeviceControlService;

    invoke-direct {v1, v0}, Lcom/android/server/DeviceControlService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;

    .line 2531
    sget-object v1, Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;

    const-string v2, "device_control"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2532
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2533
    return-void
.end method

.method private startFlymeHipsService()V
    .registers 6

    .line 2610
    const-string v0, "BOOT FAILURE: FlymeHipsService"

    const-string v1, "SystemServer"

    const-string v2, "FlymeHipsService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :try_start_9
    const-string v2, "hips_service"

    new-instance v3, Lcom/android/server/hips/server/FlymeHipsService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/hips/server/FlymeHipsService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    .line 2616
    goto :goto_1a

    .line 2614
    :catchall_16
    move-exception v2

    .line 2615
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2618
    .end local v2  # "e":Ljava/lang/Throwable;
    :goto_1a
    const-string v2, "AccessControlService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    new-instance v2, Lcom/meizu/server/AccessControlService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;)V

    .line 2620
    .local v2, "acs":Lcom/meizu/server/AccessControlService;
    const-string v3, "access_control"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2621
    nop

    .line 2623
    :try_start_2c
    invoke-virtual {v2}, Lcom/meizu/server/AccessControlService;->systemReady()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 2627
    goto :goto_3b

    .line 2624
    :catchall_30
    move-exception v3

    .line 2625
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "***********************************************"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const-string v4, "BOOT FAILURE making AccessControlService Service ready"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2630
    .end local v3  # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "DeviceStateService "

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :try_start_40
    new-instance v3, Lcom/android/server/DeviceStateService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/DeviceStateService;-><init>(Landroid/content/Context;)V

    .line 2633
    .local v3, "deviceService":Lcom/android/server/DeviceStateService;
    const-string v4, "device_states"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_4d

    .line 2636
    .end local v3  # "deviceService":Lcom/android/server/DeviceStateService;
    goto :goto_51

    .line 2634
    :catchall_4d
    move-exception v3

    .line 2635
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2637
    .end local v3  # "e":Ljava/lang/Throwable;
    :goto_51
    return-void
.end method

.method static startFlymePerfService(Lcom/android/server/SystemServer;)V
    .registers 4
    .param p0, "dst"  # Lcom/android/server/SystemServer;

    .line 2603
    const-string v0, "SystemServer"

    const-string v1, "IntelligentEngineManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2605
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/os/IntelligentEngineService;

    invoke-direct {v1, v0}, Lcom/android/server/os/IntelligentEngineService;-><init>(Landroid/content/Context;)V

    const-string v2, "flyme_intelligent_engine"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2606
    return-void
.end method

.method static startFlymeStatusBarManagerService(Z)V
    .registers 4
    .param p0, "disableSystemUI"  # Z

    .line 2642
    if-nez p0, :cond_1a

    .line 2643
    const/4 v0, 0x0

    .line 2644
    .local v0, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    const-string v1, "FlymeStatusBarManagerService"

    const-string v2, "SystemServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :try_start_a
    new-instance v2, Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;-><init>()V

    move-object v0, v2

    .line 2647
    const-string v2, "flyme_statusbar"

    invoke-static {v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    .line 2650
    goto :goto_1a

    .line 2648
    :catchall_16
    move-exception v2

    .line 2649
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2652
    .end local v0  # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .end local v2  # "e":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void
.end method

.method static startFlymeThemeService(Lcom/android/server/SystemServer;)V
    .registers 8
    .param p0, "dst"  # Lcom/android/server/SystemServer;

    .line 2559
    const-string v0, "SystemServer"

    const-string/jumbo v1, "startFlymeThemeService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2561
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {v2, v1}, Landroid/content/res/flymetheme/FlymeThemeService;-><init>(Landroid/content/Context;)V

    .line 2562
    .local v2, "flymeThemeService":Landroid/content/res/flymetheme/FlymeThemeService;
    const-string v3, "flyme_theme_service"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2563
    nop

    .line 2565
    :try_start_15
    invoke-virtual {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->systemReady()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    .line 2570
    goto :goto_36

    .line 2566
    :catchall_19
    move-exception v3

    .line 2567
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making flymeThemeService Service ready"

    .line 2568
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "***********************************************"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT FAILURE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2572
    .end local v3  # "e":Ljava/lang/Throwable;
    .end local v4  # "msg":Ljava/lang/String;
    :goto_36
    return-void
.end method

.method static startFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 4
    .param p0, "dst"  # Lcom/android/server/SystemServer;
    .param p1, "wm"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2575
    const-string v0, "SystemServer"

    const-string v1, "FlymeWallpaperService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    if-nez p1, :cond_a

    return-void

    .line 2577
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->startFlymeWallpaperService()Lcom/android/server/wallpaper/FlymeWallpaperService;

    move-result-object v0

    .line 2578
    .local v0, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    const-string v1, "flyme_wallpaper"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2579
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 64

    .line 935
    move-object/from16 v5, p0

    const-string/jumbo v1, "onBootPhase"

    const-string/jumbo v2, "window"

    const-string v0, "SecondaryZygotePreload"

    const-string v3, "dexopt"

    const-string v4, "SystemServer"

    iget-object v15, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 936
    .local v15, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 937
    .local v6, "vibrator":Lcom/android/server/VibratorService;
    const/4 v7, 0x0

    .line 938
    .local v7, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v12, 0x0

    .line 939
    .local v12, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v13, 0x0

    .line 940
    .local v13, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v14, 0x0

    .line 941
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    const/16 v16, 0x0

    .line 942
    .local v16, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v17, 0x0

    .line 943
    .local v17, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v18, 0x0

    .line 944
    .local v18, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v19, 0x0

    .line 945
    .local v19, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v20, 0x0

    .line 946
    .local v20, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v21, 0x0

    .line 947
    .local v21, "serial":Lcom/android/server/SerialService;
    const/16 v22, 0x0

    .line 948
    .local v22, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/4 v8, 0x0

    .line 949
    .local v8, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v9, 0x0

    .line 950
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v10, 0x0

    .line 951
    .local v10, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v23, 0x0

    .line 952
    .local v23, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v24, 0x0

    .line 953
    .local v24, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v25, 0x0

    .line 954
    .local v25, "wigigP2pService":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 956
    .local v26, "wigigService":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object/from16 v27, v6

    .end local v6  # "vibrator":Lcom/android/server/VibratorService;
    .local v27, "vibrator":Lcom/android/server/VibratorService;
    const-string v6, "config.disable_systemtextclassifier"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 959
    .local v28, "disableSystemTextClassifier":Z
    const-string v6, "config.disable_networktime"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 961
    .local v29, "disableNetworkTime":Z
    const-string v6, "config.disable_cameraservice"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 963
    .local v30, "disableCameraService":Z
    const-string v6, "config.disable_slices"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 964
    .local v31, "disableSlices":Z
    const-string v6, "config.enable_lefty"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 966
    .local v32, "enableLeftyService":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 967
    .local v34, "isEmulator":Z
    const-string/jumbo v6, "persist.vendor.wigig.enable"

    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 969
    .local v35, "enableWigig":Z
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v11, "android.hardware.type.watch"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    .line 972
    .local v36, "isWatch":Z
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v11, "org.chromium.arc"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v37

    .line 975
    .local v37, "isArc":Z
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v11, "android.hardware.vr.high_performance"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v38

    .line 979
    .local v38, "enableVrService":Z
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_97

    const-string v6, "debug.crash_system"

    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_91

    goto :goto_98

    .line 980
    :cond_91
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 979
    :cond_97
    const/4 v11, 0x0

    .line 984
    :goto_98
    move-object/from16 v33, v0

    .line 989
    .local v33, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :try_start_9a
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9e} :catch_333

    :try_start_9e
    sget-object v11, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    invoke-virtual {v6, v11, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1004
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v6, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v6, v15}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1007
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1009
    const-string v0, "StartKeyChainSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1010
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1011
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1013
    const-string v0, "StartSchedulingPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v0, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1015
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1017
    const-string v0, "StartTelecomLoaderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1018
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1019
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1021
    const-string v0, "StartTelephonyRegistry"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v0, v15}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_f4
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_f4} :catch_32c

    move-object v11, v0

    .line 1023
    .end local v9  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_f5
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1024
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1026
    const-string v0, "StartEntropyMixer"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v15}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1028
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1030
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1033
    const-string v0, "StartAccountManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1034
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1035
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1037
    const-string v0, "StartContentService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1038
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1039
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1041
    const-string v0, "InstallSystemProviders"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1042
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1044
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1045
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1050
    const-string v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1051
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1052
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1054
    const-string v0, "StartVibratorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1055
    new-instance v0, Lcom/android/server/VibratorService;

    invoke-direct {v0, v15}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_15a
    .catch Ljava/lang/RuntimeException; {:try_start_f5 .. :try_end_15a} :catch_31f

    move-object v9, v0

    .line 1056
    .end local v27  # "vibrator":Lcom/android/server/VibratorService;
    .local v9, "vibrator":Lcom/android/server/VibratorService;
    :try_start_15b
    const-string/jumbo v0, "vibrator"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1057
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1059
    const-string v0, "StartDynamicSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1060
    new-instance v0, Lcom/android/server/DynamicSystemService;

    invoke-direct {v0, v15}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_16e
    .catch Ljava/lang/RuntimeException; {:try_start_15b .. :try_end_16e} :catch_312

    move-object v7, v0

    .line 1061
    :try_start_16f
    const-string v0, "dynamic_system"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1062
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_177
    .catch Ljava/lang/RuntimeException; {:try_start_16f .. :try_end_177} :catch_303

    .line 1064
    if-nez v36, :cond_19b

    .line 1065
    :try_start_179
    const-string v0, "StartConsumerIrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v15}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 1067
    const-string v0, "consumer_ir"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1068
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_18c
    .catch Ljava/lang/RuntimeException; {:try_start_179 .. :try_end_18c} :catch_18f

    move-object/from16 v27, v10

    goto :goto_19d

    .line 1156
    .end local v33  # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_18f
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    goto/16 :goto_33f

    .line 1064
    .restart local v33  # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_19b
    move-object/from16 v27, v10

    .line 1071
    .end local v10  # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v27, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_19d
    :try_start_19d
    const-string v0, "StartAlarmManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1072
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/AlarmManagerService;

    invoke-direct {v6, v15}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1073
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1075
    const-string v0, "StartInputManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1076
    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_19d .. :try_end_1b9} :catch_2f6

    move-object v10, v0

    .line 1077
    .end local v8  # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v10, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_1ba
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1079
    const-string v0, "StartWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1081
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v6, "StartSensorService"

    invoke-static {v0, v6}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1082
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1083
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v0, :cond_1d2

    const/4 v8, 0x1

    goto :goto_1d3

    :cond_1d2
    const/4 v8, 0x0

    :goto_1d3
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v41, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct/range {v41 .. v41}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iget-object v6, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_1de
    .catch Ljava/lang/RuntimeException; {:try_start_1ba .. :try_end_1de} :catch_2e7

    move-object/from16 v39, v6

    move-object/from16 v42, v12

    const/4 v12, 0x1

    .end local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .local v42, "storageManager":Landroid/os/storage/IStorageManager;
    move-object v6, v15

    move-object/from16 v43, v7

    .end local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v43, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    move-object v7, v10

    move-object/from16 v44, v9

    .end local v9  # "vibrator":Lcom/android/server/VibratorService;
    .local v44, "vibrator":Lcom/android/server/VibratorService;
    move v9, v0

    move-object v12, v10

    .end local v10  # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v10, v41

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    const/4 v13, 0x0

    .end local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v40, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v41, "networkManagement":Lcom/android/server/NetworkManagementService;
    move-object/from16 v11, v39

    :try_start_1f4
    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_1f8
    .catch Ljava/lang/RuntimeException; {:try_start_1f4 .. :try_end_1f8} :catch_2df

    move-object v6, v0

    .line 1085
    .end local v20  # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v6, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v0, 0x11

    :try_start_1fb
    invoke-static {v2, v6, v13, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1087
    const-string/jumbo v0, "input"

    const/4 v7, 0x1

    invoke-static {v0, v12, v13, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1089
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1091
    const-string v0, "SetWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1092
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1093
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1095
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1097
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1102
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v7, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v8, "StartHidlServices"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1110
    if-nez v36, :cond_23e

    if-eqz v38, :cond_23e

    .line 1111
    const-string v0, "StartVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1112
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1113
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1116
    :cond_23e
    const-string v0, "StartInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1118
    invoke-virtual {v12}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1119
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1122
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1123
    iget-object v0, v5, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1124
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1126
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_268

    .line 1127
    const-string v0, "No Bluetooth Service (factory test)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_289

    .line 1128
    :cond_268
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.bluetooth"

    .line 1129
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27a

    .line 1130
    const-string v0, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_289

    .line 1132
    :cond_27a
    const-string v0, "StartBluetoothService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1133
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1134
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1137
    :goto_289
    const-string v0, "IpConnectivityMetrics"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1138
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1139
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1141
    const-string v0, "NetworkWatchlistService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1142
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1143
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1145
    const-string v0, "PinnerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1146
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1147
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1149
    const-string v0, "ActivityTriggerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1150
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1151
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1153
    const-string v0, "SignedConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1154
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1155
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_2d2
    .catch Ljava/lang/RuntimeException; {:try_start_1fb .. :try_end_2d2} :catch_2d5

    .line 1159
    .end local v33  # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    move-object v9, v6

    goto/16 :goto_352

    .line 1156
    :catch_2d5
    move-exception v0

    move-object/from16 v20, v6

    move-object v8, v12

    move-object/from16 v7, v43

    move-object/from16 v9, v44

    goto/16 :goto_33f

    .end local v6  # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v20  # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2df
    move-exception v0

    move-object v8, v12

    move-object/from16 v7, v43

    move-object/from16 v9, v44

    goto/16 :goto_33f

    .end local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v9  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v10  # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v12, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_2e7
    move-exception v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    move-object v12, v10

    move-object v8, v12

    .end local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v9  # "vibrator":Lcom/android/server/VibratorService;
    .end local v10  # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44  # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_33f

    .end local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v8  # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v12, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_2f6
    move-exception v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    .end local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v9  # "vibrator":Lcom/android/server/VibratorService;
    .end local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44  # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_33f

    .end local v27  # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v9  # "vibrator":Lcom/android/server/VibratorService;
    .local v10, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_303
    move-exception v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    move-object/from16 v27, v10

    .end local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v9  # "vibrator":Lcom/android/server/VibratorService;
    .end local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44  # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_33f

    .end local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v9  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_312
    move-exception v0

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    move-object/from16 v27, v10

    .end local v9  # "vibrator":Lcom/android/server/VibratorService;
    .end local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v44  # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_33f

    .end local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v44  # "vibrator":Lcom/android/server/VibratorService;
    .restart local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v27, "vibrator":Lcom/android/server/VibratorService;
    :catch_31f
    move-exception v0

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    move-object/from16 v9, v27

    move-object/from16 v27, v10

    .end local v11  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_33f

    .end local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_32c
    move-exception v0

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    const/4 v13, 0x0

    goto :goto_339

    :catch_333
    move-exception v0

    move-object/from16 v42, v12

    move-object/from16 v41, v13

    move v13, v11

    :goto_339
    move-object/from16 v40, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v10

    .line 1157
    .end local v10  # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v12  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v13  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v9, "vibrator":Lcom/android/server/VibratorService;
    .local v27, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v40  # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_33f
    const-string v6, "System"

    const-string v10, "******************************************"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-string v10, "************ Failure starting core service"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v43, v7

    move-object v12, v8

    move-object/from16 v44, v9

    move-object/from16 v9, v20

    .line 1163
    .end local v0  # "e":Ljava/lang/RuntimeException;
    .end local v7  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v8  # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v20  # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v43  # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44  # "vibrator":Lcom/android/server/VibratorService;
    :goto_352
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v11

    .line 1164
    .local v11, "safeMode":Z
    if-eqz v11, :cond_362

    .line 1169
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1173
    :cond_362
    const/4 v6, 0x0

    .line 1174
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v7, 0x0

    .line 1175
    .local v7, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 1176
    .local v8, "location":Lcom/android/server/LocationManagerService;
    const/4 v10, 0x0

    .line 1177
    .local v10, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v20, 0x0

    .line 1178
    .local v20, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v33, 0x0

    .line 1181
    .local v33, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v13, 0x1

    if-eq v0, v13, :cond_3a1

    .line 1182
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1183
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v0, :cond_380

    .line 1184
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_387

    .line 1187
    :cond_380
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1189
    :goto_387
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1191
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1193
    :try_start_38f
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_396
    .catchall {:try_start_38f .. :try_end_396} :catchall_397

    .line 1196
    goto :goto_39e

    .line 1194
    :catchall_397
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting Accessibility Manager"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1197
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_39e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1200
    :cond_3a1
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1202
    :try_start_3a6
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_3a9
    .catchall {:try_start_3a6 .. :try_end_3a9} :catchall_3aa

    .line 1205
    goto :goto_3b3

    .line 1203
    :catchall_3aa
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 1204
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "making display ready"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1206
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_3b3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1208
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v13, 0x1

    if-eq v0, v13, :cond_405

    .line 1209
    const-string/jumbo v0, "system_init.startmountservice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "0"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_405

    .line 1210
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1216
    :try_start_3cf
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1217
    const-string/jumbo v0, "mount"

    .line 1218
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_3e1
    .catchall {:try_start_3cf .. :try_end_3e1} :catchall_3e4

    .line 1221
    .end local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    move-object/from16 v42, v0

    goto :goto_3eb

    .line 1219
    .end local v0  # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v42  # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_3e4
    move-exception v0

    .line 1220
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting StorageManagerService"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1222
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_3eb
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1224
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1226
    :try_start_3f3
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3fa
    .catchall {:try_start_3f3 .. :try_end_3fa} :catchall_3fb

    .line 1229
    goto :goto_402

    .line 1227
    :catchall_3fb
    move-exception v0

    .line 1228
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting StorageStatsService"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1230
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_402
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1236
    :cond_405
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1237
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1238
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1240
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_446

    .line 1241
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1243
    :try_start_41d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1244
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_429
    .catchall {:try_start_41d .. :try_end_429} :catchall_42a

    goto :goto_431

    .line 1245
    :catchall_42a
    move-exception v0

    .line 1246
    .restart local v0  # "e":Ljava/lang/Throwable;
    :try_start_42b
    const-string/jumbo v13, "update packages"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_431
    .catchall {:try_start_42b .. :try_end_431} :catchall_43d

    .line 1248
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_431
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1249
    nop

    .line 1250
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_446

    .line 1248
    :catchall_43d
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_446
    :goto_446
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1255
    :try_start_44b
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_450
    .catchall {:try_start_44b .. :try_end_450} :catchall_451

    .line 1258
    goto :goto_458

    .line 1256
    :catchall_451
    move-exception v0

    .line 1257
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "performing fstrim"

    invoke-direct {v5, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1259
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_458
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1261
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v3, "starting "

    const/4 v13, 0x1

    if-eq v0, v13, :cond_dc5

    .line 1262
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1264
    :try_start_468
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1265
    const-string/jumbo v0, "lock_settings"

    .line 1266
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1265
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_47a
    .catchall {:try_start_468 .. :try_end_47a} :catchall_47d

    .line 1269
    .end local v20  # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v20, v0

    goto :goto_484

    .line 1267
    .end local v0  # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v20  # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_47d
    move-exception v0

    .line 1268
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting LockSettingsService service"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_484
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1272
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    xor-int/2addr v0, v13

    move v13, v0

    .line 1273
    .local v13, "hasPdb":Z
    const-string/jumbo v0, "ro.gsid.image_running"

    move-object/from16 v46, v6

    const/4 v6, 0x0

    .end local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v46, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4a5

    const/4 v0, 0x1

    goto :goto_4a6

    :cond_4a5
    const/4 v0, 0x0

    :goto_4a6
    move v6, v0

    .line 1274
    .local v6, "hasGsi":Z
    if-eqz v13, :cond_4bd

    if-nez v6, :cond_4bd

    .line 1275
    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1276
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v47, v6

    .end local v6  # "hasGsi":Z
    .local v47, "hasGsi":Z
    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1277
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_4bf

    .line 1274
    .end local v47  # "hasGsi":Z
    .restart local v6  # "hasGsi":Z
    :cond_4bd
    move/from16 v47, v6

    .line 1280
    .end local v6  # "hasGsi":Z
    .restart local v47  # "hasGsi":Z
    :goto_4bf
    const-string v0, "StartTestHarnessMode"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1281
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1282
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1284
    if-nez v13, :cond_4d6

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_4e5

    .line 1286
    :cond_4d6
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1287
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1288
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1291
    :cond_4e5
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1292
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1293
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1297
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1298
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1299
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1301
    if-nez v36, :cond_52a

    .line 1302
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1304
    :try_start_50a
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v15, v9}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_50f
    .catchall {:try_start_50a .. :try_end_50f} :catchall_519

    move-object v6, v0

    .line 1305
    .end local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_510
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_516
    .catchall {:try_start_510 .. :try_end_516} :catchall_517

    .line 1308
    goto :goto_526

    .line 1306
    :catchall_517
    move-exception v0

    goto :goto_51c

    .end local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_519
    move-exception v0

    move-object/from16 v6, v46

    .line 1307
    .end local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_51c
    move-object/from16 v46, v6

    .end local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string/jumbo v6, "starting StatusBarManagerService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v6, v46

    .line 1309
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_526
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_52c

    .line 1301
    .end local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_52a
    move-object/from16 v6, v46

    .line 1312
    .end local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_52c
    invoke-direct {v5, v15}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;)V

    .line 1313
    invoke-direct {v5, v15}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;)V

    .line 1315
    invoke-direct {v5, v15}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;)V

    .line 1318
    const-string v0, "StartAppPredictionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1319
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v46, v6

    .end local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v6, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1320
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1323
    const-string v0, "StartContentSuggestionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1324
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1325
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1327
    const-string v0, "InitNetworkStackClient"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1329
    :try_start_55a
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_561
    .catchall {:try_start_55a .. :try_end_561} :catchall_562

    .line 1332
    goto :goto_569

    .line 1330
    :catchall_562
    move-exception v0

    .line 1331
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "initializing NetworkStackClient"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1333
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_569
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1335
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1337
    :try_start_571
    invoke-static {v15}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_575
    .catchall {:try_start_571 .. :try_end_575} :catchall_57f

    move-object v6, v0

    .line 1338
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v6, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_576
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57c
    .catchall {:try_start_576 .. :try_end_57c} :catchall_57d

    .line 1341
    goto :goto_58c

    .line 1339
    :catchall_57d
    move-exception v0

    goto :goto_582

    .end local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_57f
    move-exception v0

    move-object/from16 v6, v41

    .line 1340
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_582
    move-object/from16 v41, v6

    .end local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v6, "starting NetworkManagement Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v6, v41

    .line 1342
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_58c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1345
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1347
    :try_start_594
    invoke-static {v15}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v14, v0

    .line 1348
    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59f
    .catchall {:try_start_594 .. :try_end_59f} :catchall_5a2

    .line 1351
    move-object/from16 v48, v7

    goto :goto_5ab

    .line 1349
    :catchall_5a2
    move-exception v0

    .line 1350
    .restart local v0  # "e":Ljava/lang/Throwable;
    move-object/from16 v48, v7

    .end local v7  # "notification":Landroid/app/INotificationManager;
    .local v48, "notification":Landroid/app/INotificationManager;
    const-string/jumbo v7, "starting IpSec Service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_5ab
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1354
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1355
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1356
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1358
    if-nez v28, :cond_5ce

    .line 1359
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1360
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 1361
    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1362
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1365
    :cond_5ce
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1366
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1367
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1369
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1371
    :try_start_5e2
    invoke-static {v15, v6}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0
    :try_end_5e6
    .catchall {:try_start_5e2 .. :try_end_5e6} :catchall_5f0

    move-object v7, v0

    .line 1372
    .end local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_5e7
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5ed
    .catchall {:try_start_5e7 .. :try_end_5ed} :catchall_5ee

    .line 1375
    goto :goto_5fd

    .line 1373
    :catchall_5ee
    move-exception v0

    goto :goto_5f3

    .end local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catchall_5f0
    move-exception v0

    move-object/from16 v7, v16

    .line 1374
    .end local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_5f3
    move-object/from16 v16, v7

    .end local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v7, "starting NetworkStats Service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v16

    .line 1376
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_5fd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1378
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1380
    :try_start_605
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;
    :try_end_607
    .catchall {:try_start_605 .. :try_end_607} :catchall_61c

    move-object/from16 v49, v8

    .end local v8  # "location":Lcom/android/server/LocationManagerService;
    .local v49, "location":Lcom/android/server/LocationManagerService;
    :try_start_609
    iget-object v8, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v15, v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_60e
    .catchall {:try_start_609 .. :try_end_60e} :catchall_618

    move-object v8, v0

    .line 1382
    .end local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_60f
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_615
    .catchall {:try_start_60f .. :try_end_615} :catchall_616

    .line 1385
    goto :goto_62b

    .line 1383
    :catchall_616
    move-exception v0

    goto :goto_621

    .end local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_618
    move-exception v0

    move-object/from16 v8, v17

    goto :goto_621

    .end local v49  # "location":Lcom/android/server/LocationManagerService;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    :catchall_61c
    move-exception v0

    move-object/from16 v49, v8

    move-object/from16 v8, v17

    .line 1384
    .end local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v49  # "location":Lcom/android/server/LocationManagerService;
    :goto_621
    move-object/from16 v16, v8

    .end local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const-string/jumbo v8, "starting NetworkPolicy Service"

    invoke-direct {v5, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v8, v16

    .line 1386
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v16  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_62b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1388
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v50, v10

    .end local v10  # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    const-string v10, "android.hardware.wifi"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65a

    .line 1391
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1392
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1393
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1394
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1395
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1397
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1400
    :cond_65a
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_675

    .line 1402
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1403
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1405
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1408
    :cond_675
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.aware"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_690

    .line 1410
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1411
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1412
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1415
    :cond_690
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.direct"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6ab

    .line 1417
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1418
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1419
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1422
    :cond_6ab
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.lowpan"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c6

    .line 1424
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1425
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1426
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1429
    :cond_6c6
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.ethernet"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "android.hardware.usb.host"

    if-nez v0, :cond_6de

    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1430
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6db

    goto :goto_6de

    :cond_6db
    move/from16 v51, v13

    goto :goto_6ef

    .line 1431
    :cond_6de
    :goto_6de
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1432
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v51, v13

    .end local v13  # "hasPdb":Z
    .local v51, "hasPdb":Z
    const-string v13, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1433
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1436
    :goto_6ef
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1438
    :try_start_6f4
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v15, v6, v7, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_6f9
    .catchall {:try_start_6f4 .. :try_end_6f9} :catchall_711

    move-object v13, v0

    .line 1440
    .end local v18  # "connectivity":Lcom/android/server/ConnectivityService;
    .local v13, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_6fa
    const-string v0, "connectivity"
    :try_end_6fc
    .catchall {:try_start_6fa .. :try_end_6fc} :catchall_70b

    move-object/from16 v41, v6

    .end local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x6

    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v16, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_702
    invoke-static {v0, v13, v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1443
    invoke-virtual {v8, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_708
    .catchall {:try_start_702 .. :try_end_708} :catchall_709

    .line 1446
    goto :goto_71e

    .line 1444
    :catchall_709
    move-exception v0

    goto :goto_718

    .end local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catchall_70b
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v16, v7

    .end local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_718

    .end local v13  # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v18  # "connectivity":Lcom/android/server/ConnectivityService;
    :catchall_711
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v16, v7

    move-object/from16 v13, v18

    .line 1445
    .end local v6  # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v7  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v18  # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v13  # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v41  # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_718
    const-string/jumbo v6, "starting Connectivity Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1447
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_71e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1449
    if-eqz v35, :cond_7aa

    .line 1451
    :try_start_723
    const-string v0, "Wigig Service"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v0, "/system/framework/wigig-service.jar:/system/product/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/product/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/product/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 1457
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 1458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1459
    .local v6, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_73d
    .catchall {:try_start_723 .. :try_end_73d} :catchall_7a0

    .line 1461
    .local v7, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v18, v0

    move-object/from16 v17, v8

    const/4 v8, 0x1

    .end local v0  # "wigigClassPath":Ljava/lang/String;
    .end local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v18, "wigigClassPath":Ljava/lang/String;
    :try_start_742
    new-array v0, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v39, 0x0

    aput-object v8, v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1462
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v52, v7

    const/4 v8, 0x1

    .end local v7  # "wigigP2pClass":Ljava/lang/Class;
    .local v52, "wigigP2pClass":Ljava/lang/Class;
    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v25, v7

    .line 1463
    const-string v7, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string/jumbo v7, "wigigp2p"

    move-object/from16 v8, v25

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1466
    const-string v7, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1468
    .local v7, "wigigClass":Ljava/lang/Class;
    move-object/from16 v53, v0

    const/4 v8, 0x1

    .end local v0  # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v53, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    new-array v0, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v39, 0x0

    aput-object v8, v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1469
    .end local v53  # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0  # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v53, v6

    const/4 v8, 0x1

    .end local v6  # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v53, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v6, v8

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v26, v6

    .line 1470
    const-string v6, "Successfully loaded WigigService class"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-string/jumbo v6, "wigig"

    move-object/from16 v8, v26

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79d
    .catchall {:try_start_742 .. :try_end_79d} :catchall_79e

    .line 1474
    .end local v0  # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v7  # "wigigClass":Ljava/lang/Class;
    .end local v18  # "wigigClassPath":Ljava/lang/String;
    .end local v52  # "wigigP2pClass":Ljava/lang/Class;
    .end local v53  # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_7ac

    .line 1472
    :catchall_79e
    move-exception v0

    goto :goto_7a3

    .end local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_7a0
    move-exception v0

    move-object/from16 v17, v8

    .line 1473
    .end local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_7a3
    const-string/jumbo v6, "starting WigigService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7ac

    .line 1449
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_7aa
    move-object/from16 v17, v8

    .line 1477
    .end local v8  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_7ac
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1479
    :try_start_7b1
    invoke-static {v15}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_7b5
    .catchall {:try_start_7b1 .. :try_end_7b5} :catchall_7c1

    move-object v6, v0

    .line 1480
    .end local v19  # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v6, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_7b6
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7bc
    .catchall {:try_start_7b6 .. :try_end_7bc} :catchall_7bf

    .line 1484
    move-object/from16 v19, v6

    goto :goto_7cc

    .line 1482
    :catchall_7bf
    move-exception v0

    goto :goto_7c4

    .end local v6  # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v19  # "serviceDiscovery":Lcom/android/server/NsdService;
    :catchall_7c1
    move-exception v0

    move-object/from16 v6, v19

    .line 1483
    .end local v19  # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v6  # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_7c4
    const-string/jumbo v7, "starting Service Discovery Service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v19, v6

    .line 1485
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v6  # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v19  # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_7cc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1487
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1489
    :try_start_7d4
    const-string/jumbo v0, "system_update"

    new-instance v6, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v6, v15}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7df
    .catchall {:try_start_7d4 .. :try_end_7df} :catchall_7e0

    .line 1493
    goto :goto_7e7

    .line 1491
    :catchall_7e0
    move-exception v0

    .line 1492
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SystemUpdateManagerService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1494
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_7e7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1496
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1498
    :try_start_7ef
    const-string/jumbo v0, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v15}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7fa
    .catchall {:try_start_7ef .. :try_end_7fa} :catchall_7fb

    .line 1502
    goto :goto_802

    .line 1500
    :catchall_7fb
    move-exception v0

    .line 1501
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1503
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_802
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1505
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1506
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1507
    invoke-static {v15}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 1508
    invoke-static {v15}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1509
    nop

    .line 1510
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1509
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v7

    .line 1511
    .end local v48  # "notification":Landroid/app/INotificationManager;
    .local v7, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1513
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1514
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1515
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1517
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1519
    :try_start_83a
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_83f
    .catchall {:try_start_83a .. :try_end_83f} :catchall_849

    move-object v8, v0

    .line 1520
    .end local v49  # "location":Lcom/android/server/LocationManagerService;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    :try_start_840
    const-string/jumbo v0, "location"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_846
    .catchall {:try_start_840 .. :try_end_846} :catchall_847

    .line 1523
    goto :goto_852

    .line 1521
    :catchall_847
    move-exception v0

    goto :goto_84c

    .end local v8  # "location":Lcom/android/server/LocationManagerService;
    .restart local v49  # "location":Lcom/android/server/LocationManagerService;
    :catchall_849
    move-exception v0

    move-object/from16 v8, v49

    .line 1522
    .end local v49  # "location":Lcom/android/server/LocationManagerService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v8  # "location":Lcom/android/server/LocationManagerService;
    :goto_84c
    const-string/jumbo v6, "starting Location Manager"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1524
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_852
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1526
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1528
    :try_start_85a
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v15}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_85f
    .catchall {:try_start_85a .. :try_end_85f} :catchall_86a

    move-object v6, v0

    .line 1529
    .end local v50  # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v6, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_860
    const-string v0, "country_detector"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_865
    .catchall {:try_start_860 .. :try_end_865} :catchall_868

    .line 1532
    move-object/from16 v18, v6

    goto :goto_875

    .line 1530
    :catchall_868
    move-exception v0

    goto :goto_86d

    .end local v6  # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50  # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_86a
    move-exception v0

    move-object/from16 v6, v50

    .line 1531
    .end local v50  # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v6  # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_86d
    move-object/from16 v18, v6

    .end local v6  # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v18, "countryDetector":Lcom/android/server/CountryDetectorService;
    const-string/jumbo v6, "starting Country Detector"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1533
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_875
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1535
    const/4 v6, 0x1

    .line 1537
    .local v6, "useNewTimeServices":Z
    const-string v0, "StartTimeDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1539
    :try_start_87e
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_880
    .catchall {:try_start_87e .. :try_end_880} :catchall_88a

    move/from16 v48, v6

    .end local v6  # "useNewTimeServices":Z
    .local v48, "useNewTimeServices":Z
    :try_start_882
    const-string v6, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_887
    .catchall {:try_start_882 .. :try_end_887} :catchall_888

    .line 1542
    goto :goto_893

    .line 1540
    :catchall_888
    move-exception v0

    goto :goto_88d

    .end local v48  # "useNewTimeServices":Z
    .restart local v6  # "useNewTimeServices":Z
    :catchall_88a
    move-exception v0

    move/from16 v48, v6

    .line 1541
    .end local v6  # "useNewTimeServices":Z
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v48  # "useNewTimeServices":Z
    :goto_88d
    const-string/jumbo v6, "starting StartTimeDetectorService service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1543
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_893
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1546
    if-nez v36, :cond_8af

    .line 1547
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1549
    :try_start_89d
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_8a4
    .catchall {:try_start_89d .. :try_end_8a4} :catchall_8a5

    .line 1552
    goto :goto_8ac

    .line 1550
    :catchall_8a5
    move-exception v0

    .line 1551
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1553
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_8ac
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1556
    :cond_8af
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x111007a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8d6

    .line 1557
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1560
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    .line 1561
    .local v0, "lifecycle":Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getService()Lcom/android/server/wallpaper/IWallpaperManagerService;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v6, v5, Lcom/android/server/SystemServer;->wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1563
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1566
    .end local v0  # "lifecycle":Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    :cond_8d6
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1567
    if-nez v37, :cond_8e9

    .line 1568
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v52, v7

    move-object/from16 v49, v8

    goto :goto_92c

    .line 1570
    :cond_8e9
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1040167

    .line 1571
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1573
    .local v6, "className":Ljava/lang/String;
    :try_start_8f4
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_8f6
    .catchall {:try_start_8f4 .. :try_end_8f6} :catchall_915

    move-object/from16 v52, v7

    .end local v7  # "notification":Landroid/app/INotificationManager;
    .local v52, "notification":Landroid/app/INotificationManager;
    :try_start_8f8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_900
    .catchall {:try_start_8f8 .. :try_end_900} :catchall_911

    move-object/from16 v49, v8

    .end local v8  # "location":Lcom/android/server/LocationManagerService;
    .restart local v49  # "location":Lcom/android/server/LocationManagerService;
    :try_start_902
    const-string v8, "$Lifecycle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_90e
    .catchall {:try_start_902 .. :try_end_90e} :catchall_90f

    .line 1576
    goto :goto_92c

    .line 1574
    :catchall_90f
    move-exception v0

    goto :goto_91a

    .end local v49  # "location":Lcom/android/server/LocationManagerService;
    .restart local v8  # "location":Lcom/android/server/LocationManagerService;
    :catchall_911
    move-exception v0

    move-object/from16 v49, v8

    .end local v8  # "location":Lcom/android/server/LocationManagerService;
    .restart local v49  # "location":Lcom/android/server/LocationManagerService;
    goto :goto_91a

    .end local v49  # "location":Lcom/android/server/LocationManagerService;
    .end local v52  # "notification":Landroid/app/INotificationManager;
    .restart local v7  # "notification":Landroid/app/INotificationManager;
    .restart local v8  # "location":Lcom/android/server/LocationManagerService;
    :catchall_915
    move-exception v0

    move-object/from16 v52, v7

    move-object/from16 v49, v8

    .line 1575
    .end local v7  # "notification":Landroid/app/INotificationManager;
    .end local v8  # "location":Lcom/android/server/LocationManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v49  # "location":Lcom/android/server/LocationManagerService;
    .restart local v52  # "notification":Landroid/app/INotificationManager;
    :goto_91a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1578
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v6  # "className":Ljava/lang/String;
    :goto_92c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1580
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.broadcastradio"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_948

    .line 1581
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1582
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1583
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1586
    :cond_948
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1587
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1588
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1590
    if-eqz v36, :cond_968

    .line 1591
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1592
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1593
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1596
    :cond_968
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1599
    :try_start_96d
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v15, v12}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v12, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_975
    .catchall {:try_start_96d .. :try_end_975} :catchall_976

    .line 1603
    goto :goto_97d

    .line 1601
    :catchall_976
    move-exception v0

    .line 1602
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1604
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_97d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1606
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.midi"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_999

    .line 1608
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1609
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1610
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1614
    :cond_999
    const-string v0, "StartAdbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1616
    :try_start_99e
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9a5
    .catchall {:try_start_99e .. :try_end_9a5} :catchall_9a6

    .line 1619
    goto :goto_9ac

    .line 1617
    :catchall_9a6
    move-exception v0

    .line 1618
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting AdbService"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_9ac
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1622
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c3

    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1623
    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c3

    if-eqz v34, :cond_9d2

    .line 1627
    :cond_9c3
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1628
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1629
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1632
    :cond_9d2
    if-nez v36, :cond_9f5

    .line 1633
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1636
    :try_start_9d9
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v15}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_9de
    .catchall {:try_start_9d9 .. :try_end_9de} :catchall_9e8

    move-object v6, v0

    .line 1637
    .end local v21  # "serial":Lcom/android/server/SerialService;
    .local v6, "serial":Lcom/android/server/SerialService;
    :try_start_9df
    const-string/jumbo v0, "serial"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9e5
    .catchall {:try_start_9df .. :try_end_9e5} :catchall_9e6

    .line 1640
    goto :goto_9f0

    .line 1638
    :catchall_9e6
    move-exception v0

    goto :goto_9eb

    .end local v6  # "serial":Lcom/android/server/SerialService;
    .restart local v21  # "serial":Lcom/android/server/SerialService;
    :catchall_9e8
    move-exception v0

    move-object/from16 v6, v21

    .line 1639
    .end local v21  # "serial":Lcom/android/server/SerialService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v6  # "serial":Lcom/android/server/SerialService;
    :goto_9eb
    const-string v7, "Failure starting SerialService"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1641
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_9f0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v21, v6

    .line 1644
    .end local v6  # "serial":Lcom/android/server/SerialService;
    .restart local v21  # "serial":Lcom/android/server/SerialService;
    :cond_9f5
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1646
    :try_start_9fa
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9ff
    .catchall {:try_start_9fa .. :try_end_9ff} :catchall_a0a

    move-object v6, v0

    .line 1647
    .end local v24  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v6, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_a00
    const-string v0, "hardware_properties"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a05
    .catchall {:try_start_a00 .. :try_end_a05} :catchall_a08

    .line 1651
    move-object/from16 v24, v6

    goto :goto_a14

    .line 1649
    :catchall_a08
    move-exception v0

    goto :goto_a0d

    .end local v6  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v24  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_a0a
    move-exception v0

    move-object/from16 v6, v24

    .line 1650
    .end local v24  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v6  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_a0d
    const-string v7, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v24, v6

    .line 1652
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v6  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v24  # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_a14
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1654
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1655
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1656
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1658
    const-string v0, "StartColorDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1659
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1660
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1662
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1663
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1664
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1666
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1667
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1668
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1670
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1671
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1672
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1674
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7b

    .line 1675
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1676
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1677
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1680
    :cond_a7b
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a92

    .line 1681
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110067

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_aa1

    .line 1682
    :cond_a92
    const-string v0, "StartAppWidgetService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1683
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1684
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1688
    :cond_aa1
    const-string v0, "StartRoleManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1689
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/role/RoleManagerService;

    iget-object v7, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;

    invoke-direct {v8, v7}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v7, v8}, Lcom/android/server/role/RoleManagerService;-><init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1691
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1697
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1698
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1701
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_ae2

    .line 1702
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1703
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1704
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1706
    :cond_ae2
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1707
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1708
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1710
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1711
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1712
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1714
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1716
    :try_start_b05
    const-string v0, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v15}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b0f
    .catchall {:try_start_b05 .. :try_end_b0f} :catchall_b10

    .line 1719
    goto :goto_b17

    .line 1717
    :catchall_b10
    move-exception v0

    .line 1718
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1720
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_b17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1722
    const-string v0, "RuntimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1724
    :try_start_b1f
    const-string/jumbo v0, "runtime"

    new-instance v6, Lcom/android/server/RuntimeService;

    invoke-direct {v6, v15}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2a
    .catchall {:try_start_b1f .. :try_end_b2a} :catchall_b2b

    .line 1727
    goto :goto_b32

    .line 1725
    :catchall_b2b
    move-exception v0

    .line 1726
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting RuntimeService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1728
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_b32
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1734
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_b48

    .line 1735
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110079

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b48

    const/4 v0, 0x1

    goto :goto_b49

    :cond_b48
    const/4 v0, 0x0

    :goto_b49
    move v6, v0

    .line 1737
    .local v6, "startRulesManagerService":Z
    if-eqz v6, :cond_b5b

    .line 1738
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1739
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1740
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1743
    :cond_b5b
    if-nez v36, :cond_b9b

    if-nez v29, :cond_b9b

    .line 1744
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1747
    :try_start_b64
    new-instance v0, Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-direct {v0, v15}, Lcom/android/server/NewNetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_b69
    .catchall {:try_start_b64 .. :try_end_b69} :catchall_b8d

    move-object v7, v0

    .line 1751
    .end local v22  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v7, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_b6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using networkTimeUpdater class="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b88
    .catchall {:try_start_b6a .. :try_end_b88} :catchall_b8b

    .line 1755
    move-object/from16 v22, v7

    goto :goto_b98

    .line 1753
    :catchall_b8b
    move-exception v0

    goto :goto_b90

    .end local v7  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v22  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catchall_b8d
    move-exception v0

    move-object/from16 v7, v22

    .line 1754
    .end local v22  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v7  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_b90
    const-string/jumbo v8, "starting NetworkTimeUpdate service"

    invoke-direct {v5, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v22, v7

    .line 1756
    .end local v0  # "e":Ljava/lang/Throwable;
    .end local v7  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v22  # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_b98
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1759
    :cond_b9b
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1761
    :try_start_ba0
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v15}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_ba5
    .catchall {:try_start_ba0 .. :try_end_ba5} :catchall_ba6

    .line 1764
    goto :goto_bad

    .line 1762
    :catchall_ba6
    move-exception v0

    .line 1763
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1765
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_bad
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1769
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1770
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1771
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1775
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1776
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1777
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1779
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1780
    new-instance v0, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v0, v15}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    const-string v7, "graphicsstats"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1782
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1784
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_bf6

    .line 1785
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1786
    new-instance v0, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v0}, Lcom/android/server/coverage/CoverageService;-><init>()V

    const-string v7, "coverage"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1787
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1790
    :cond_bf6
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0f

    .line 1791
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1792
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1793
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1796
    :cond_c0f
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.companion_device_setup"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c28

    .line 1797
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1798
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1799
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1802
    :cond_c28
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1803
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1804
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1806
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1807
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1808
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1810
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5f

    .line 1811
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1812
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1813
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1816
    :cond_c5f
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "android.software.leanback"

    if-nez v0, :cond_c73

    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1817
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c82

    .line 1818
    :cond_c73
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1819
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1820
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1823
    :cond_c82
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9b

    .line 1824
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1825
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1826
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1829
    :cond_c9b
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb2

    .line 1830
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1831
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1832
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1835
    :cond_cb2
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1837
    :try_start_cb7
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v15}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_cbc
    .catchall {:try_start_cb7 .. :try_end_cbc} :catchall_cc6

    move-object v7, v0

    .line 1838
    .end local v33  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v7, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_cbd
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cc3
    .catchall {:try_start_cbd .. :try_end_cc3} :catchall_cc4

    .line 1841
    goto :goto_ccf

    .line 1839
    :catchall_cc4
    move-exception v0

    goto :goto_cc9

    .end local v7  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_cc6
    move-exception v0

    move-object/from16 v7, v33

    .line 1840
    .end local v33  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v0  # "e":Ljava/lang/Throwable;
    .restart local v7  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_cc9
    const-string/jumbo v8, "starting MediaRouterService"

    invoke-direct {v5, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1842
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_ccf
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1844
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1845
    const-string v8, "android.hardware.biometrics.face"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 1846
    .local v8, "hasFeatureFace":Z
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1847
    const-string v10, "android.hardware.biometrics.iris"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 1848
    .local v10, "hasFeatureIris":Z
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1849
    move/from16 v50, v6

    .end local v6  # "startRulesManagerService":Z
    .local v50, "startRulesManagerService":Z
    const-string v6, "android.hardware.fingerprint"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1851
    .local v6, "hasFeatureFingerprint":Z
    if-eqz v8, :cond_d00

    .line 1852
    const-string v0, "StartFaceSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1853
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v33, v7

    .end local v7  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const-class v7, Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1854
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_d02

    .line 1851
    .end local v33  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v7  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_d00
    move-object/from16 v33, v7

    .line 1857
    .end local v7  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33  # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_d02
    if-eqz v10, :cond_d13

    .line 1858
    const-string v0, "StartIrisSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1859
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/iris/IrisService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1860
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1863
    :cond_d13
    if-eqz v6, :cond_d24

    .line 1864
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1865
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1866
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1869
    :cond_d24
    if-nez v8, :cond_d2a

    if-nez v10, :cond_d2a

    if-eqz v6, :cond_d39

    .line 1871
    :cond_d2a
    const-string v0, "StartBiometricService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1872
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1873
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1876
    :cond_d39
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1878
    :try_start_d3e
    invoke-static {v15}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_d41
    .catchall {:try_start_d3e .. :try_end_d41} :catchall_d42

    .line 1881
    goto :goto_d4b

    .line 1879
    :catchall_d42
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1880
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting StartBackgroundDexOptService"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1882
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_d4b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1884
    if-nez v36, :cond_d65

    .line 1887
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1889
    :try_start_d55
    invoke-static {v15}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_d58
    .catchall {:try_start_d55 .. :try_end_d58} :catchall_d59

    .line 1892
    goto :goto_d62

    .line 1890
    :catchall_d59
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1891
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DynamicCodeLoggingService"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1893
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_d62
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1896
    :cond_d65
    if-nez v36, :cond_d7b

    .line 1897
    const-string v7, "StartPruneInstantAppsJobService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1899
    :try_start_d6c
    invoke-static {v15}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_d6f
    .catchall {:try_start_d6c .. :try_end_d6f} :catchall_d70

    .line 1902
    goto :goto_d78

    .line 1900
    :catchall_d70
    move-exception v0

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    .line 1901
    .restart local v0  # "e":Ljava/lang/Throwable;
    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1903
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_d78
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1907
    :cond_d7b
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1908
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1909
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1911
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1912
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1913
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1915
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1916
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1917
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v50, v18

    move-object/from16 v47, v33

    move-object/from16 v48, v52

    move-object/from16 v18, v14

    move-object/from16 v33, v24

    move-object/from16 v14, v25

    move-object/from16 v24, v19

    move-object/from16 v25, v21

    move-object/from16 v19, v16

    move-object/from16 v21, v17

    move-object/from16 v62, v22

    move-object/from16 v22, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v62

    goto :goto_de3

    .line 1261
    .end local v13  # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v47  # "hasGsi":Z
    .end local v48  # "useNewTimeServices":Z
    .end local v49  # "location":Lcom/android/server/LocationManagerService;
    .end local v50  # "startRulesManagerService":Z
    .end local v51  # "hasPdb":Z
    .end local v52  # "notification":Landroid/app/INotificationManager;
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v7, "notification":Landroid/app/INotificationManager;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    .local v10, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v18, "connectivity":Lcom/android/server/ConnectivityService;
    :cond_dc5
    move-object/from16 v46, v6

    move-object/from16 v48, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v10

    .end local v6  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v7  # "notification":Landroid/app/INotificationManager;
    .end local v8  # "location":Lcom/android/server/LocationManagerService;
    .end local v10  # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v46  # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v48, "notification":Landroid/app/INotificationManager;
    .restart local v49  # "location":Lcom/android/server/LocationManagerService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    move-object/from16 v13, v26

    move-object/from16 v47, v33

    move-object/from16 v26, v22

    move-object/from16 v33, v24

    move-object/from16 v22, v18

    move-object/from16 v24, v19

    move-object/from16 v18, v14

    move-object/from16 v19, v16

    move-object/from16 v14, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v17

    .line 1920
    .end local v16  # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v17  # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v13, "wigigService":Ljava/lang/Object;
    .local v14, "wigigP2pService":Ljava/lang/Object;
    .local v18, "ipSecService":Lcom/android/server/IpSecService;
    .local v19, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v21, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v22, "connectivity":Lcom/android/server/ConnectivityService;
    .local v24, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v25, "serial":Lcom/android/server/SerialService;
    .local v26, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v33, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v47, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_de3
    if-nez v36, :cond_df4

    .line 1921
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1922
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1923
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1926
    :cond_df4
    if-eqz v36, :cond_e52

    .line 1928
    const-string v0, "StartWearPowerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1929
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1930
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1932
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1933
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1934
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1936
    const-string v0, "StartWearDisplayService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1937
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1938
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1940
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1941
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1942
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1944
    if-eqz v32, :cond_e43

    .line 1945
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1946
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1947
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1950
    :cond_e43
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1951
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1952
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1955
    :cond_e52
    if-nez v31, :cond_e63

    .line 1956
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1957
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1958
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1961
    :cond_e63
    if-nez v30, :cond_e74

    .line 1962
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1963
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1964
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1967
    :cond_e74
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.type.embedded"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8f

    .line 1968
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1969
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1970
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1974
    :cond_e8f
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1975
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1976
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1979
    const-string v0, "StartIncidentCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1980
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1981
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1983
    if-eqz v11, :cond_eb4

    .line 1984
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1988
    :cond_eb4
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1989
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/MmsServiceBroker;

    .line 1990
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1992
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.autofill"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee1

    .line 1993
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1994
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1995
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1999
    :cond_ee1
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2000
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2001
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2003
    const-string v0, "AppServiceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2004
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2005
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2009
    const-string v0, "GestureManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2010
    new-instance v0, Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/policy/gesture/GestureManagerService;-><init>(Landroid/content/Context;)V

    .line 2011
    .local v0, "gesture":Lcom/android/server/policy/gesture/GestureManagerService;
    const-string v6, "gesture_manager"

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2012
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2017
    .end local v0  # "gesture":Lcom/android/server/policy/gesture/GestureManagerService;
    const-string v0, "FlymePackageManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2019
    invoke-virtual {v0, v6, v0}, Lcom/android/server/pm/PackageManagerService;->startFlymePackageManagerService(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v6

    .line 2020
    .local v6, "service":Lcom/android/server/pm/FlymePackageManagerService;
    const-string v0, "flyme_packagemanager"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2025
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2028
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->startPermissionControlService()V

    .line 2029
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->startFlymeHipsService()V

    .line 2033
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer;->startSceneSerice(Lcom/android/server/SystemServer;)V

    .line 2034
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer;->startFlymePerfService(Lcom/android/server/SystemServer;)V

    .line 2037
    :try_start_f34
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_f37
    .catchall {:try_start_f34 .. :try_end_f37} :catchall_f38

    .line 2040
    goto :goto_f41

    .line 2038
    :catchall_f38
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2039
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Vibrator Service ready"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2041
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_f41
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2043
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2044
    if-eqz v20, :cond_f58

    .line 2046
    :try_start_f4b
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_f4e
    .catchall {:try_start_f4b .. :try_end_f4e} :catchall_f4f

    .line 2049
    goto :goto_f58

    .line 2047
    :catchall_f4f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2048
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Lock Settings Service ready"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_f58
    :goto_f58
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2054
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2055
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2056
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2058
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2059
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2060
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2064
    if-eqz v35, :cond_fc8

    .line 2066
    :try_start_f7b
    const-string v0, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2068
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v4, v8, v10

    invoke-virtual {v0, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2069
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    const/16 v16, 0x0

    aput-object v8, v10, v16

    invoke-virtual {v4, v14, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2073
    .local v8, "wigigClass":Ljava/lang/Class;
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v10, v7, v17

    invoke-virtual {v8, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2074
    .end local v4  # "m":Ljava/lang/reflect/Method;
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/16 v10, 0x1f4

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v7, v4, v10

    invoke-virtual {v1, v13, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc0
    .catchall {:try_start_f7b .. :try_end_fc0} :catchall_fc2

    .line 2078
    nop

    .end local v0  # "wigigP2pClass":Ljava/lang/Class;
    .end local v1  # "m":Ljava/lang/reflect/Method;
    .end local v8  # "wigigClass":Ljava/lang/Class;
    goto :goto_fc8

    .line 2076
    :catchall_fc2
    move-exception v0

    .line 2077
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Wigig services ready"

    invoke-direct {v5, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2081
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_fc8
    :goto_fc8
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2084
    :try_start_fcd
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_fd0
    .catchall {:try_start_fcd .. :try_end_fd0} :catchall_fd1

    .line 2087
    goto :goto_fda

    .line 2085
    :catchall_fd1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2086
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Window Manager Service ready"

    invoke-direct {v5, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2088
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_fda
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2090
    if-eqz v11, :cond_fe4

    .line 2091
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2097
    :cond_fe4
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 2098
    .local v4, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v1, v0

    .line 2099
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v45, v0

    check-cast v45, Landroid/view/WindowManager;

    .line 2100
    .local v45, "w":Landroid/view/WindowManager;
    invoke-interface/range {v45 .. v45}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2101
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2104
    invoke-virtual {v15}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v51

    .line 2105
    .local v51, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_1012

    .line 2106
    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2109
    :cond_1012
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2112
    :try_start_1017
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_1022
    .catchall {:try_start_1017 .. :try_end_1022} :catchall_1023

    .line 2115
    goto :goto_102a

    .line 2113
    :catchall_1023
    move-exception v0

    .line 2114
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "making Power Manager Service ready"

    invoke-direct {v5, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2116
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_102a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2119
    const-string v0, "StartPermissionPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2120
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2121
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2124
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/SystemServer;->startFlymeStatusBarManagerService(Z)V

    .line 2128
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer;->startFlymeThemeService(Lcom/android/server/SystemServer;)V

    .line 2129
    iget-object v0, v5, Lcom/android/server/SystemServer;->wallpaper:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->startFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 2132
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2133
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2134
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2136
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2139
    :try_start_105a
    iget-object v0, v5, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v7, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v11, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_1061
    .catchall {:try_start_105a .. :try_end_1061} :catchall_1062

    .line 2142
    goto :goto_1069

    .line 2140
    :catchall_1062
    move-exception v0

    .line 2141
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Display Manager Service ready"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2143
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_1069
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2145
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2148
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2149
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x1070027

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2151
    .local v8, "classes":[Ljava/lang/String;
    array-length v7, v8

    :goto_1084
    if-ge v2, v7, :cond_10bf

    aget-object v10, v8, v2

    .line 2152
    .local v10, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v1

    .end local v1  # "metrics":Landroid/util/DisplayMetrics;
    .local v39, "metrics":Landroid/util/DisplayMetrics;
    const-string v1, "StartDeviceSpecificServices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2154
    :try_start_109e
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_10a3
    .catchall {:try_start_109e .. :try_end_10a3} :catchall_10a4

    .line 2157
    goto :goto_10b7

    .line 2155
    :catchall_10a4
    move-exception v0

    .line 2156
    .restart local v0  # "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2158
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_10b7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2151
    .end local v10  # "className":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v39

    goto :goto_1084

    .line 2160
    .end local v39  # "metrics":Landroid/util/DisplayMetrics;
    .restart local v1  # "metrics":Landroid/util/DisplayMetrics;
    :cond_10bf
    move-object/from16 v39, v1

    .end local v1  # "metrics":Landroid/util/DisplayMetrics;
    .restart local v39  # "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2162
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2163
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2164
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2167
    move-object/from16 v7, v41

    .line 2168
    .local v7, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v10, v19

    .line 2169
    .local v10, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v52, v8

    .end local v8  # "classes":[Ljava/lang/String;
    .local v52, "classes":[Ljava/lang/String;
    move-object/from16 v8, v21

    .line 2170
    .local v8, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v53, v6

    .end local v6  # "service":Lcom/android/server/pm/FlymePackageManagerService;
    .local v53, "service":Lcom/android/server/pm/FlymePackageManagerService;
    move-object/from16 v6, v22

    .line 2171
    .local v6, "connectivityF":Lcom/android/server/ConnectivityService;
    move/from16 v54, v11

    .end local v11  # "safeMode":Z
    .local v54, "safeMode":Z
    move-object/from16 v11, v49

    .line 2172
    .local v11, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v55, v12

    .end local v12  # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v55, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v12, v50

    .line 2173
    .local v12, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v56, v13

    .end local v13  # "wigigService":Ljava/lang/Object;
    .local v56, "wigigService":Ljava/lang/Object;
    move-object/from16 v13, v26

    .line 2174
    .local v13, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v57, v14

    .end local v14  # "wigigP2pService":Ljava/lang/Object;
    .local v57, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v14, v55

    .line 2175
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v15

    .end local v15  # "context":Landroid/content/Context;
    .local v58, "context":Landroid/content/Context;
    move-object/from16 v15, v40

    .line 2176
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v16, v47

    .line 2177
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v23

    .line 2178
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v59, v9

    .end local v9  # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v59, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v9, v18

    .line 2179
    .local v9, "ipSecServiceF":Lcom/android/server/IpSecService;
    move-object/from16 v60, v4

    .end local v4  # "config":Landroid/content/res/Configuration;
    .local v60, "config":Landroid/content/res/Configuration;
    move-object/from16 v4, v59

    .line 2186
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Lcom/android/server/-$$Lambda$SystemServer$RIWNR87PnJ4Y6VHItRXU0J6ocqQ;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object/from16 v61, v0

    move-object v0, v3

    move-object/from16 v3, v58

    move/from16 v5, v54

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$RIWNR87PnJ4Y6VHItRXU0J6ocqQ;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v61

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2438
    return-void
.end method

.method private startPermissionControlService()V
    .registers 5

    .line 2584
    const-string v0, "SystemServer"

    const-string v1, "FlymePermissionService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :try_start_7
    const-string v1, "flyme_permission"

    new-instance v2, Lcom/meizu/server/FlymePermissionService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/meizu/server/FlymePermissionService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    .line 2590
    goto :goto_1a

    .line 2588
    :catchall_14
    move-exception v1

    .line 2589
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "BOOT FAILURE "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2591
    .end local v1  # "e":Ljava/lang/Throwable;
    :goto_1a
    return-void
.end method

.method static startSceneSerice(Lcom/android/server/SystemServer;)V
    .registers 5
    .param p0, "dst"  # Lcom/android/server/SystemServer;

    .line 2595
    const-string/jumbo v0, "persist.sys.enable_scene"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2596
    .local v0, "enable":Z
    if-eqz v0, :cond_1f

    .line 2597
    const-string v1, "SystemServer"

    const-string/jumbo v2, "start SceneService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2599
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/server/sence/SceneService;

    invoke-direct {v2, v1}, Lcom/android/server/sence/SceneService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "scene_server"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2601
    .end local v1  # "context":Landroid/content/Context;
    :cond_1f
    return-void
.end method

.method private static native startSensorService()V
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 2441
    const v0, 0x104015f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2443
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2444
    const-string v1, "SystemServer"

    const-string v2, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    return-void

    .line 2448
    :cond_15
    const-string v1, "StartSystemCaptionsManagerService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2449
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2450
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2451
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "windowManager"  # Lcom/android/server/wm/WindowManagerService;

    .line 2503
    invoke-static {p0}, Lcom/android/server/SystemServer;->isDeviceProvisionedInSettingsDb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "is_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2507
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2508
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2510
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2512
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2513
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2514
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 2517
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2519
    return-void
.end method

.method private static traceEnd()V
    .registers 1

    .line 2522
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2523
    return-void
.end method


# virtual methods
.method public synthetic lambda$startOtherServices$3$SystemServer()V
    .registers 6

    .line 2206
    const-string v0, "WebViewFactoryPreparation"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemServerTimingAsync"

    const-wide/32 v3, 0x80000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2209
    .local v1, "traceLog":Landroid/util/TimingsTraceLog;
    invoke-virtual {v1, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v0, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2212
    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2213
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2214
    return-void
.end method

.method public synthetic lambda$startOtherServices$4$SystemServer(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 25
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "windowManagerF"  # Lcom/android/server/wm/WindowManagerService;
    .param p3, "safeMode"  # Z
    .param p4, "connectivityF"  # Lcom/android/server/ConnectivityService;
    .param p5, "networkManagementF"  # Lcom/android/server/NetworkManagementService;
    .param p6, "networkPolicyF"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "ipSecServiceF"  # Lcom/android/server/IpSecService;
    .param p8, "networkStatsF"  # Lcom/android/server/net/NetworkStatsService;
    .param p9, "locationF"  # Lcom/android/server/LocationManagerService;
    .param p10, "countryDetectorF"  # Lcom/android/server/CountryDetectorService;
    .param p11, "networkTimeUpdaterF"  # Lcom/android/server/NetworkTimeUpdateService;
    .param p12, "inputManagerF"  # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"  # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"  # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"  # Lcom/android/server/MmsServiceBroker;

    .line 2187
    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    const-string v0, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2189
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x226

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2191
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2192
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2194
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    .line 2197
    goto :goto_2b

    .line 2195
    :catchall_24
    move-exception v0

    .line 2196
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "observing native crashes"

    invoke-direct {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2198
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_2b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2202
    const-string v4, "WebViewFactoryPreparation"

    .line 2203
    .local v4, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2204
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v5, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v6, "WebViewFactoryPreparation"

    if-nez v5, :cond_4a

    iget-object v5, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v5, :cond_4a

    .line 2205
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    new-instance v7, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    invoke-virtual {v5, v7, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v5, v0

    goto :goto_4b

    .line 2217
    :cond_4a
    move-object v5, v0

    .end local v0  # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v5, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_4b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2218
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2219
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2220
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2224
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer;->startBootFaceRecognitionService(Landroid/content/Context;)V

    .line 2227
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2229
    :try_start_6c
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    .line 2232
    goto :goto_79

    .line 2230
    :catchall_70
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2231
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting System UI"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2235
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_79
    const-string v0, "SystemServer: StartSystemUI"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 2237
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2243
    if-eqz p3, :cond_98

    .line 2244
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2246
    const/4 v0, 0x1

    :try_start_89
    invoke-virtual {p4, v0}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    .line 2249
    goto :goto_95

    .line 2247
    :catchall_8d
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2248
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2250
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_95
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2252
    :cond_98
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2254
    if-eqz p5, :cond_ad

    .line 2255
    :try_start_9f
    invoke-virtual {p5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_ad

    .line 2257
    :catchall_a3
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2258
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ae

    .line 2259
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_ad
    :goto_ad
    nop

    .line 2260
    :goto_ae
    const/4 v0, 0x0

    .line 2261
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v3, :cond_b8

    .line 2262
    nop

    .line 2263
    invoke-virtual {p6}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_b9

    .line 2261
    :cond_b8
    move-object v7, v0

    .line 2265
    .end local v0  # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_b9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2266
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2268
    if-eqz p7, :cond_d1

    .line 2269
    :try_start_c3
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_d1

    .line 2271
    :catchall_c7
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2272
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making IpSec Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 2273
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_d1
    :goto_d1
    nop

    .line 2274
    :goto_d2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2275
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2277
    if-eqz p8, :cond_ea

    .line 2278
    :try_start_dc
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_ea

    .line 2280
    :catchall_e0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2281
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Stats Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_eb

    .line 2282
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_ea
    :goto_ea
    nop

    .line 2285
    :goto_eb
    const-string v0, "SystemServer: MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 2287
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2288
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2290
    if-eqz v2, :cond_108

    .line 2291
    :try_start_fa
    invoke-virtual {p4}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fe

    goto :goto_108

    .line 2293
    :catchall_fe
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2294
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Connectivity Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_109

    .line 2295
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_108
    :goto_108
    nop

    .line 2298
    :goto_109
    const-string v0, "SystemServer: MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 2300
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2301
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2303
    if-eqz v3, :cond_126

    .line 2304
    :try_start_118
    invoke-virtual {p6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c

    goto :goto_126

    .line 2306
    :catchall_11c
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2307
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Policy Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_127

    .line 2308
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_126
    :goto_126
    nop

    .line 2311
    :goto_127
    const-string v0, "SystemServer: MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 2313
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2316
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2320
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2323
    const-string v0, "SystemServer: PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 2326
    if-eqz v5, :cond_143

    .line 2327
    invoke-static {v5, v6}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2329
    :cond_143
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x258

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2333
    const-string v0, "SystemServer: PhaseThirdPartyAppsCanEnd"

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->addBootEvent(Ljava/lang/String;)V

    .line 2335
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2337
    const-string v0, "StartNetworkStack"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2344
    :try_start_157
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0
    :try_end_15b
    .catchall {:try_start_157 .. :try_end_15b} :catchall_162

    move-object v6, p1

    :try_start_15c
    invoke-virtual {v0, p1}, Landroid/net/NetworkStackClient;->start(Landroid/content/Context;)V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_160

    .line 2347
    goto :goto_16a

    .line 2345
    :catchall_160
    move-exception v0

    goto :goto_164

    :catchall_162
    move-exception v0

    move-object v6, p1

    .line 2346
    .restart local v0  # "e":Ljava/lang/Throwable;
    :goto_164
    const-string/jumbo v8, "starting Network Stack"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2348
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_16a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2350
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2352
    if-eqz p9, :cond_181

    .line 2353
    :try_start_174
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_178

    goto :goto_181

    .line 2355
    :catchall_178
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2356
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying Location Service running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_182

    .line 2357
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_181
    :goto_181
    nop

    .line 2358
    :goto_182
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2359
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2361
    if-eqz p10, :cond_199

    .line 2362
    :try_start_18c
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_190

    goto :goto_199

    .line 2364
    :catchall_190
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2365
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying CountryDetectorService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19a

    .line 2366
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_199
    :goto_199
    nop

    .line 2367
    :goto_19a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2368
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2370
    if-eqz p11, :cond_1b1

    .line 2371
    :try_start_1a4
    invoke-interface/range {p11 .. p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1a8

    goto :goto_1b1

    .line 2373
    :catchall_1a8
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2374
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying NetworkTimeService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b2

    .line 2375
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_1b1
    :goto_1b1
    nop

    .line 2376
    :goto_1b2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2377
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2380
    if-eqz p12, :cond_1c9

    .line 2381
    :try_start_1bc
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_1bf
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_1c0

    goto :goto_1c9

    .line 2383
    :catchall_1c0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2384
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying InputManagerService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ca

    .line 2385
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_1c9
    :goto_1c9
    nop

    .line 2386
    :goto_1ca
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2387
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2389
    if-eqz p13, :cond_1e1

    .line 2390
    :try_start_1d4
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_1d7
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_1d8

    goto :goto_1e1

    .line 2392
    :catchall_1d8
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2393
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e2

    .line 2394
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_1e1
    :goto_1e1
    nop

    .line 2395
    :goto_1e2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2396
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2398
    if-eqz p14, :cond_1f9

    .line 2399
    :try_start_1ec
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_1ef
    .catchall {:try_start_1ec .. :try_end_1ef} :catchall_1f0

    goto :goto_1f9

    .line 2401
    :catchall_1f0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2402
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying MediaRouterService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1fa

    .line 2403
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_1f9
    :goto_1f9
    nop

    .line 2404
    :goto_1fa
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2405
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2407
    if-eqz p15, :cond_211

    .line 2408
    :try_start_204
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_207
    .catchall {:try_start_204 .. :try_end_207} :catchall_208

    goto :goto_211

    .line 2410
    :catchall_208
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2411
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying MmsService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_212

    .line 2412
    .end local v0  # "e":Ljava/lang/Throwable;
    :cond_211
    :goto_211
    nop

    .line 2413
    :goto_212
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2415
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2419
    :try_start_21a
    const-string/jumbo v0, "incident"

    .line 2420
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2419
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2421
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_22a

    .line 2422
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_22a
    .catchall {:try_start_21a .. :try_end_22a} :catchall_22b

    .line 2426
    .end local v0  # "incident":Landroid/os/IIncidentManager;
    :cond_22a
    goto :goto_231

    .line 2424
    :catchall_22b
    move-exception v0

    .line 2425
    .local v0, "e":Ljava/lang/Throwable;
    const-string v8, "Notifying incident daemon running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2427
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_231
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2430
    :try_start_234
    sget-object v0, Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;

    if-eqz v0, :cond_23d

    .line 2431
    sget-object v0, Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;

    invoke-virtual {v0}, Lcom/android/server/DeviceControlService;->systemReady()V
    :try_end_23d
    .catchall {:try_start_234 .. :try_end_23d} :catchall_23e

    .line 2435
    :cond_23d
    goto :goto_245

    .line 2433
    :catchall_23e
    move-exception v0

    .line 2434
    .restart local v0  # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making DeviceControlService ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2437
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_245
    return-void
.end method
