.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 185
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 366
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 374
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private createSystemContext()V
    .registers 4

    .line 626
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 628
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 630
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 631
    invoke-virtual {v0, v2}, Landroid/content/Context;->setTheme(I)V

    .line 632
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 3

    .line 2308
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 563
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

    .line 829
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 831
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 833
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 834
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 6

    .line 951
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v2, Landroid/util/TimingsTraceLog;

    const-string v3, "SystemServerTimingAsync"

    const-wide/32 v4, 0x80000

    invoke-direct {v2, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 954
    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 955
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 956
    const-string v0, "Unable to preload default resources"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_26
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    .line 961
    goto :goto_30

    .line 959
    :catch_2a
    move-exception v0

    .line 960
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    :goto_30
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 4

    .line 1063
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1065
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1066
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1067
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1068
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1

    .line 356
    new-instance p0, Lcom/android/server/SystemServer;

    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->run()V

    .line 357
    return-void
.end method

.method private performPendingShutdown()V
    .registers 9

    .line 572
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_89

    .line 575
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

    .line 578
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    if-le v4, v5, :cond_30

    .line 579
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 581
    :cond_30
    move-object v1, v6

    .line 589
    :goto_31
    if-eqz v1, :cond_72

    const-string/jumbo v4, "recovery-update"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 590
    new-instance v4, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 592
    nop

    .line 594
    :try_start_4a
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4f

    .line 597
    goto :goto_55

    .line 595
    :catch_4f
    move-exception v2

    .line 596
    const-string v4, "Error reading uncrypt package file"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    :goto_55
    if-eqz v6, :cond_72

    const-string v2, "/data"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 600
    new-instance v2, Ljava/io/File;

    const-string v4, "/cache/recovery/block.map"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_72

    .line 601
    const-string v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 608
    :cond_72
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 620
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 623
    :cond_89
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 567
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    return-void
.end method

.method private run()V
    .registers 13

    .line 393
    const-string v0, "System"

    const-string/jumbo v1, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    :try_start_a
    const-string v4, "InitBeforeStartServices"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v4, "sys.system_server.start_count"

    iget v5, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string/jumbo v4, "sys.system_server.start_elapsed"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string/jumbo v4, "sys.system_server.start_uptime"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/16 v4, 0xbc3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 401
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

    .line 400
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_1ae

    const-wide/32 v9, 0x5265c00

    cmp-long v4, v4, v9

    const-string v5, "SystemServer"

    if-gez v4, :cond_6b

    .line 408
    :try_start_63
    const-string v4, "System clock is before 1970; setting to 1970."

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v9, v10}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 415
    :cond_6b
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    if-eqz v4, :cond_77

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 417
    :cond_77
    const-string v4, "Timezone not set; setting to GMT."

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v4, "GMT"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_81
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 432
    const-string/jumbo v4, "persist.sys.locale"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v1, "persist.sys.country"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v1, "persist.sys.localevar"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_a8
    invoke-static {v8}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 441
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 444
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 447
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 450
    const-string v2, "Entered the Android system server!"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    .line 452
    const/16 v3, 0xbc2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 453
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v3, :cond_ce

    .line 454
    const-string v3, "boot_system_server_init"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 464
    :cond_ce
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 471
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 475
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 479
    invoke-static {v8}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 482
    invoke-static {v8}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 485
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 488
    const/16 v2, 0x1f

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 491
    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 493
    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 494
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 495
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-wide/16 v3, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 499
    const-string v2, "android_servers"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 502
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_118

    .line 503
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 508
    :cond_118
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 511
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 514
    new-instance v2, Lcom/android/server/SystemServiceManager;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 515
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v8, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v10, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 517
    const-class v2, Lcom/android/server/SystemServiceManager;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 519
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_13c
    .catchall {:try_start_63 .. :try_end_13c} :catchall_1ae

    .line 521
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 522
    nop

    .line 526
    :try_start_140
    const-string v2, "StartServices"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 528
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 529
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 530
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_151
    .catchall {:try_start_140 .. :try_end_151} :catchall_19d

    .line 536
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 537
    nop

    .line 539
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 541
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_187

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_187

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 543
    const-string v2, "boot_system_server_ready"

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 545
    const v1, 0xea60

    if-le v0, v1, :cond_187

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServerTiming"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_187
    invoke-static {}, Ldalvik/system/VMRuntime;->hasBootImageSpaces()Z

    move-result v0

    if-nez v0, :cond_192

    .line 554
    const-string v0, "Runtime is not running with a boot image!"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_192
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :catchall_19d
    move-exception v1

    .line 532
    :try_start_19e
    const-string v2, "******************************************"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v2, "************ Failure starting system services"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    throw v1
    :try_end_1a9
    .catchall {:try_start_19e .. :try_end_1a9} :catchall_1a9

    .line 536
    :catchall_1a9
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 521
    :catchall_1ae
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startAttentionService(Landroid/content/Context;)V
    .registers 3

    .line 2359
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 2360
    const-string p1, "SystemServer"

    const-string v0, "AttentionService is not configured on this device"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return-void

    .line 2364
    :cond_e
    const-string p1, "StartAttentionManagerService"

    invoke-static {p1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2365
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2366
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2367
    return-void
.end method

.method private startBootstrapServices()V
    .registers 12

    .line 643
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string v2, "StartWatchdog"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 645
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 646
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 648
    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v4, "ReadingSystemConfig"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    sget-object v6, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 652
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 657
    const-string v4, "StartInstaller"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 658
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    .line 659
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 663
    const-string v5, "DeviceIdentifiersPolicyService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 664
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 665
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 668
    const-string v5, "UriGrantsManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 669
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 670
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 673
    const-string v5, "StartActivityManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 675
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 676
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    .line 677
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v6, v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 679
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 680
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 681
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 682
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 688
    const-string v5, "StartPowerManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 689
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 690
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 692
    const-string v5, "StartThermalManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 693
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 694
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 698
    const-string v5, "InitPowerManagement"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 699
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 700
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 703
    const-string v5, "StartRecoverySystemService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 704
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 705
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 710
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 713
    const-string v5, "StartLightsService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 714
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 715
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 717
    const-string v5, "StartSidekickService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 719
    const/4 v5, 0x0

    const-string v6, "config.enable_sidekick_graphics"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 720
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 722
    :cond_f5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 726
    const-string v6, "StartDisplayManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 727
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 728
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 731
    const-string v6, "WaitForDisplay"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 732
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 733
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 736
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 737
    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_139

    .line 738
    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_148

    .line 740
    :cond_139
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_148

    .line 741
    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iput-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 746
    :cond_148
    :goto_148
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v3, :cond_158

    .line 747
    nop

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    long-to-int v3, v9

    .line 747
    const-string v7, "boot_package_manager_init_start"

    invoke-static {v6, v7, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 750
    :cond_158
    const-string v3, "StartPackageManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 752
    :try_start_15d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 753
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_16b

    goto :goto_16c

    :cond_16b
    move v8, v5

    :goto_16c
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v4, v8, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_174
    .catchall {:try_start_15d .. :try_end_174} :catchall_26f

    .line 756
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 757
    nop

    .line 758
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 759
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 760
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 761
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_1a4

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 762
    nop

    .line 763
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v0, v7

    .line 762
    const-string v3, "boot_package_manager_init_ready"

    invoke-static {v6, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 768
    :cond_1a4
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_1e2

    .line 769
    const-string v0, "config.disable_otadexopt"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 771
    if-nez v0, :cond_1e2

    .line 772
    const-string v0, "StartOtaDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 774
    :try_start_1b5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1c3
    .catchall {:try_start_1b5 .. :try_end_1c3} :catchall_1c4

    goto :goto_1cb

    .line 776
    :catchall_1c4
    move-exception v0

    .line 777
    :try_start_1c5
    const-string/jumbo v3, "starting OtaDexOptService"

    invoke-direct {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1cb
    .catchall {:try_start_1c5 .. :try_end_1cb} :catchall_1d6

    .line 779
    :goto_1cb
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 781
    goto :goto_1e2

    .line 779
    :catchall_1d6
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 785
    :cond_1e2
    :goto_1e2
    const-string v0, "StartUserManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 787
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 790
    const-string v0, "InitAttributerCache"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 792
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 795
    const-string v0, "SetSystemProcess"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 797
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 801
    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 803
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 807
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 810
    const-string v0, "StartOverlayManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 812
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 814
    const-string v0, "StartSensorPrivacyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/SensorPrivacyService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 816
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 818
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_260

    .line 820
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 821
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 828
    :cond_260
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v2, "StartSensorService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 835
    return-void

    .line 756
    :catchall_26f
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v1
.end method

.method private startContentCaptureService(Landroid/content/Context;)V
    .registers 5

    .line 2325
    nop

    .line 2326
    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2328
    const-string v1, "SystemServer"

    if-eqz v0, :cond_28

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2329
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2330
    if-eqz v0, :cond_22

    .line 2331
    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2333
    :cond_22
    const-string p1, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    return-void

    .line 2339
    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-nez v0, :cond_3a

    .line 2340
    const v0, 0x104015b

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 2341
    const-string p1, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    return-void

    .line 2346
    :cond_3a
    const-string p1, "StartContentCaptureService"

    invoke-static {p1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2347
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2349
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2350
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2351
    if-eqz p1, :cond_57

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_57

    .line 2352
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 2355
    :cond_57
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2356
    return-void
.end method

.method private startCoreServices()V
    .registers 3

    .line 841
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 844
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 847
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 849
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 850
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 849
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 851
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 854
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 855
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 857
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 861
    :cond_49
    const-string v0, "StartCachedDeviceStateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 863
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 866
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 868
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 871
    const-string v0, "StartLooperStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 873
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 876
    const-string v0, "StartRollbackManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 878
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 881
    const-string v0, "StartBugreportManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 883
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 886
    const-string v0, "GpuService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 888
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 889
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 33

    .line 895
    move-object/from16 v2, p0

    const-string/jumbo v1, "window"

    const-string v3, "dexopt"

    const-string v4, "SystemServer"

    iget-object v11, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 896
    nop

    .line 897
    nop

    .line 898
    nop

    .line 899
    nop

    .line 900
    nop

    .line 901
    nop

    .line 902
    nop

    .line 903
    nop

    .line 904
    nop

    .line 905
    nop

    .line 906
    nop

    .line 907
    nop

    .line 908
    nop

    .line 909
    nop

    .line 910
    nop

    .line 911
    nop

    .line 912
    nop

    .line 914
    const/4 v12, 0x0

    const-string v0, "config.disable_systemtextclassifier"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 917
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 919
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 921
    const-string v0, "config.disable_slices"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 922
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 924
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 926
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 929
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "org.chromium.arc"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    .line 932
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 936
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_7a

    const-string v5, "debug.crash_system"

    invoke-static {v5, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_74

    goto :goto_7a

    .line 937
    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 940
    :cond_7a
    :goto_7a
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 949
    const/4 v8, 0x0

    :try_start_86
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    sget-object v6, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v7, "SecondaryZygotePreload"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 964
    const-string v5, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 965
    const-string/jumbo v5, "sec_key_att_app_id_provider"

    new-instance v6, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v6, v11}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 967
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 969
    const-string v5, "StartKeyChainSystemService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 970
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 971
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 973
    const-string v5, "StartSchedulingPolicyService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 974
    const-string/jumbo v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 975
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 977
    const-string v5, "StartTelecomLoaderService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 978
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 979
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 981
    const-string v5, "StartTelephonyRegistry"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 982
    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v11}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_e2} :catch_2fa

    .line 983
    :try_start_e2
    const-string/jumbo v5, "telephony.registry"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 984
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 986
    const-string v5, "StartEntropyMixer"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 987
    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v11}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 988
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 990
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 993
    const-string v5, "StartAccountManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 994
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 995
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 997
    const-string v5, "StartContentService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 998
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 999
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1001
    const-string v5, "InstallSystemProviders"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1002
    iget-object v5, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1004
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1005
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1010
    const-string v5, "StartDropBoxManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1011
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1012
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1014
    const-string v5, "StartVibratorService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1015
    new-instance v6, Lcom/android/server/VibratorService;

    invoke-direct {v6, v11}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_147
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_147} :catch_2e9

    .line 1016
    :try_start_147
    const-string/jumbo v5, "vibrator"

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1017
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1019
    const-string v5, "StartDynamicSystemService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1020
    new-instance v5, Lcom/android/server/DynamicSystemService;

    invoke-direct {v5, v11}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    .line 1021
    const-string v9, "dynamic_system"

    invoke-static {v9, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1022
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_162
    .catch Ljava/lang/RuntimeException; {:try_start_147 .. :try_end_162} :catch_2da

    .line 1024
    if-nez v19, :cond_187

    .line 1025
    :try_start_164
    const-string v5, "StartConsumerIrService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1026
    new-instance v5, Lcom/android/server/ConsumerIrService;

    invoke-direct {v5, v11}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 1027
    const-string v9, "consumer_ir"

    invoke-static {v9, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1028
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_164 .. :try_end_176} :catch_177

    goto :goto_187

    .line 1112
    :catch_177
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    move-object/from16 v15, v23

    goto/16 :goto_30a

    .line 1031
    :cond_187
    :goto_187
    :try_start_187
    const-string v5, "StartAlarmManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1032
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v11}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1033
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1035
    const-string v5, "StartInputManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1036
    new-instance v9, Lcom/android/server/input/InputManagerService;

    invoke-direct {v9, v11}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a3
    .catch Ljava/lang/RuntimeException; {:try_start_187 .. :try_end_1a3} :catch_2da

    .line 1037
    :try_start_1a3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1039
    const-string v5, "StartWindowManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1041
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v12, "StartSensorService"

    invoke-static {v5, v12}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1042
    iput-object v8, v2, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1043
    iget-boolean v5, v2, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_1ba

    const/4 v12, 0x1

    goto :goto_1bb

    :cond_1ba
    const/4 v12, 0x0

    :goto_1bb
    iget-boolean v5, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v22, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V
    :try_end_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_1c2} :catch_2ca

    :try_start_1c2
    iget-object v8, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_1c6
    .catch Ljava/lang/RuntimeException; {:try_start_1c2 .. :try_end_1c6} :catch_2b8

    move/from16 v24, v5

    move-object v5, v11

    move-object/from16 v25, v6

    move-object v6, v9

    move-object/from16 v26, v7

    move v7, v12

    move-object v12, v8

    const/16 v23, 0x0

    move/from16 v8, v24

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    move-object v15, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v10

    move-object v10, v12

    :try_start_1df
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8
    :try_end_1e3
    .catch Ljava/lang/RuntimeException; {:try_start_1df .. :try_end_1e3} :catch_2b1

    .line 1045
    const/16 v5, 0x11

    const/4 v6, 0x0

    :try_start_1e6
    invoke-static {v1, v8, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1047
    const-string v5, "input"

    invoke-static {v5, v15, v6, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1049
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1051
    const-string v5, "SetWindowManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1052
    iget-object v5, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1053
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1055
    const-string v5, "WindowManagerServiceOnInitReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1057
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1062
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    sget-object v6, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v7, "StartHidlServices"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1070
    if-nez v19, :cond_227

    if-eqz v0, :cond_227

    .line 1071
    const-string v0, "StartVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1072
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1073
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1076
    :cond_227
    const-string v0, "StartInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1078
    invoke-virtual {v15}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1079
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1082
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1083
    iget-object v0, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1084
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1086
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-ne v0, v14, :cond_250

    .line 1087
    const-string v0, "No Bluetooth Service (factory test)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_271

    .line 1088
    :cond_250
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.bluetooth"

    .line 1089
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_262

    .line 1090
    const-string v0, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_271

    .line 1092
    :cond_262
    const-string v0, "StartBluetoothService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1093
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1094
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1097
    :goto_271
    const-string v0, "IpConnectivityMetrics"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1098
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1099
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1101
    const-string v0, "NetworkWatchlistService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1102
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1103
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1105
    const-string v0, "PinnerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1106
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1107
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1109
    const-string v0, "SignedConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1110
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1111
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_2ab
    .catch Ljava/lang/RuntimeException; {:try_start_1e6 .. :try_end_2ab} :catch_2af

    .line 1115
    move-object/from16 v6, v25

    goto/16 :goto_316

    .line 1112
    :catch_2af
    move-exception v0

    goto :goto_2b4

    :catch_2b1
    move-exception v0

    move-object/from16 v8, v23

    :goto_2b4
    move-object/from16 v6, v25

    goto/16 :goto_30a

    :catch_2b8
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v22, v10

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    const/16 v23, 0x0

    move-object v15, v9

    move-object/from16 v8, v23

    goto :goto_30a

    :catch_2ca
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    move-object v15, v9

    goto :goto_30a

    :catch_2da
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    goto :goto_2f8

    :catch_2e9
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    move-object/from16 v6, v23

    move-object v8, v6

    :goto_2f8
    move-object v15, v8

    goto :goto_30a

    :catch_2fa
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v21, v14

    move/from16 v24, v15

    const/4 v14, 0x1

    move-object/from16 v6, v23

    move-object v8, v6

    move-object v15, v8

    move-object/from16 v26, v15

    .line 1113
    :goto_30a
    const-string v5, "System"

    const-string v7, "******************************************"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v7, "************ Failure starting core service"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    :goto_316
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v5

    .line 1120
    if-eqz v5, :cond_325

    .line 1125
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    invoke-static {v0, v7, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1129
    :cond_325
    nop

    .line 1130
    nop

    .line 1131
    nop

    .line 1132
    nop

    .line 1133
    nop

    .line 1134
    nop

    .line 1137
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v14, :cond_361

    .line 1138
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1139
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v0, :cond_340

    .line 1140
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_347

    .line 1143
    :cond_340
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1145
    :goto_347
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1147
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1149
    :try_start_34f
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_356
    .catchall {:try_start_34f .. :try_end_356} :catchall_357

    .line 1152
    goto :goto_35e

    .line 1150
    :catchall_357
    move-exception v0

    .line 1151
    const-string/jumbo v7, "starting Accessibility Manager"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1153
    :goto_35e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1156
    :cond_361
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1158
    :try_start_366
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_369
    .catchall {:try_start_366 .. :try_end_369} :catchall_36a

    .line 1161
    goto :goto_371

    .line 1159
    :catchall_36a
    move-exception v0

    move-object v7, v0

    .line 1160
    const-string v0, "making display ready"

    invoke-direct {v2, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1162
    :goto_371
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1164
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v14, :cond_3bf

    .line 1165
    const-string/jumbo v0, "system_init.startmountservice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3bf

    .line 1166
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1172
    :try_start_38c
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1173
    const-string/jumbo v0, "mount"

    .line 1174
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1173
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_39d
    .catchall {:try_start_38c .. :try_end_39d} :catchall_39e

    .line 1177
    goto :goto_3a5

    .line 1175
    :catchall_39e
    move-exception v0

    .line 1176
    const-string/jumbo v7, "starting StorageManagerService"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1178
    :goto_3a5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1180
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1182
    :try_start_3ad
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3b4
    .catchall {:try_start_3ad .. :try_end_3b4} :catchall_3b5

    .line 1185
    goto :goto_3bc

    .line 1183
    :catchall_3b5
    move-exception v0

    .line 1184
    const-string/jumbo v7, "starting StorageStatsService"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1186
    :goto_3bc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1192
    :cond_3bf
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1193
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1194
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1196
    iget-boolean v0, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_400

    .line 1197
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1199
    :try_start_3d7
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1200
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3e3
    .catchall {:try_start_3d7 .. :try_end_3e3} :catchall_3e4

    goto :goto_3eb

    .line 1201
    :catchall_3e4
    move-exception v0

    .line 1202
    :try_start_3e5
    const-string/jumbo v7, "update packages"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3eb
    .catchall {:try_start_3e5 .. :try_end_3eb} :catchall_3f7

    .line 1204
    :goto_3eb
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1205
    nop

    .line 1206
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_400

    .line 1204
    :catchall_3f7
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_400
    :goto_400
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1211
    :try_start_405
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_40a
    .catchall {:try_start_405 .. :try_end_40a} :catchall_40b

    .line 1214
    goto :goto_412

    .line 1212
    :catchall_40b
    move-exception v0

    .line 1213
    const-string/jumbo v3, "performing fstrim"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1215
    :goto_412
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1217
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v3, "starting "

    if-eq v0, v14, :cond_c8d

    .line 1218
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1220
    :try_start_421
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1221
    const-string v0, "lock_settings"

    .line 1222
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1221
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_432
    .catchall {:try_start_421 .. :try_end_432} :catchall_434

    .line 1225
    move-object v7, v0

    goto :goto_43d

    .line 1223
    :catchall_434
    move-exception v0

    .line 1224
    const-string/jumbo v7, "starting LockSettingsService service"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v23

    .line 1226
    :goto_43d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1228
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1229
    xor-int/2addr v0, v14

    const-string/jumbo v9, "ro.gsid.image_running"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_45a

    move v9, v14

    goto :goto_45b

    :cond_45a
    const/4 v9, 0x0

    .line 1230
    :goto_45b
    if-eqz v0, :cond_46e

    if-nez v9, :cond_46e

    .line 1231
    const-string v9, "StartPersistentDataBlock"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1232
    iget-object v9, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1233
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1236
    :cond_46e
    const-string v9, "StartTestHarnessMode"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1237
    iget-object v9, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1238
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1240
    if-nez v0, :cond_485

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_494

    .line 1242
    :cond_485
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1243
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1244
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1247
    :cond_494
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1248
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1249
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1253
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1254
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1255
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1257
    if-nez v19, :cond_4cf

    .line 1258
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1260
    :try_start_4b9
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v11, v8}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 1261
    const-string/jumbo v9, "statusbar"

    invoke-static {v9, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c4
    .catchall {:try_start_4b9 .. :try_end_4c4} :catchall_4c5

    .line 1264
    goto :goto_4cc

    .line 1262
    :catchall_4c5
    move-exception v0

    .line 1263
    const-string/jumbo v9, "starting StatusBarManagerService"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1265
    :goto_4cc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1268
    :cond_4cf
    invoke-direct {v2, v11}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;)V

    .line 1269
    invoke-direct {v2, v11}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;)V

    .line 1271
    invoke-direct {v2, v11}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;)V

    .line 1274
    const v0, 0x1040156

    invoke-direct {v2, v11, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4f1

    .line 1275
    const-string v0, "StartAppPredictionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1276
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1277
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_4f6

    .line 1279
    :cond_4f1
    const-string v0, "AppPredictionService not defined by OEM"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_4f6
    const v0, 0x104015c

    invoke-direct {v2, v11, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_50f

    .line 1284
    const-string v0, "StartContentSuggestionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1285
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1286
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_514

    .line 1288
    :cond_50f
    const-string v0, "ContentSuggestionsService not defined by OEM"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :goto_514
    const-string v0, "InitNetworkStackClient"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1293
    :try_start_519
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_520
    .catchall {:try_start_519 .. :try_end_520} :catchall_521

    .line 1296
    goto :goto_527

    .line 1294
    :catchall_521
    move-exception v0

    .line 1295
    const-string v9, "initializing NetworkStackClient"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1297
    :goto_527
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1299
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1301
    :try_start_52f
    invoke-static {v11}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9
    :try_end_533
    .catchall {:try_start_52f .. :try_end_533} :catchall_53c

    .line 1302
    :try_start_533
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_539
    .catchall {:try_start_533 .. :try_end_539} :catchall_53a

    .line 1305
    goto :goto_545

    .line 1303
    :catchall_53a
    move-exception v0

    goto :goto_53f

    :catchall_53c
    move-exception v0

    move-object/from16 v9, v23

    .line 1304
    :goto_53f
    const-string/jumbo v10, "starting NetworkManagement Service"

    invoke-direct {v2, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1306
    :goto_545
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1309
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1311
    :try_start_54d
    invoke-static {v11}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v10
    :try_end_551
    .catchall {:try_start_54d .. :try_end_551} :catchall_559

    .line 1312
    :try_start_551
    const-string v0, "ipsec"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_556
    .catchall {:try_start_551 .. :try_end_556} :catchall_557

    .line 1315
    goto :goto_562

    .line 1313
    :catchall_557
    move-exception v0

    goto :goto_55c

    :catchall_559
    move-exception v0

    move-object/from16 v10, v23

    .line 1314
    :goto_55c
    const-string/jumbo v12, "starting IpSec Service"

    invoke-direct {v2, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1316
    :goto_562
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1318
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1319
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1320
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1322
    if-nez v13, :cond_585

    .line 1323
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1324
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 1325
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1326
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1329
    :cond_585
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1330
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1331
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1333
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1335
    :try_start_599
    invoke-static {v11, v9}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v12
    :try_end_59d
    .catchall {:try_start_599 .. :try_end_59d} :catchall_5a6

    .line 1336
    :try_start_59d
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a3
    .catchall {:try_start_59d .. :try_end_5a3} :catchall_5a4

    .line 1339
    goto :goto_5af

    .line 1337
    :catchall_5a4
    move-exception v0

    goto :goto_5a9

    :catchall_5a6
    move-exception v0

    move-object/from16 v12, v23

    .line 1338
    :goto_5a9
    const-string/jumbo v13, "starting NetworkStats Service"

    invoke-direct {v2, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1340
    :goto_5af
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1342
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1344
    :try_start_5b7
    new-instance v13, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v13, v11, v0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_5be
    .catchall {:try_start_5b7 .. :try_end_5be} :catchall_5c7

    .line 1346
    :try_start_5be
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c4
    .catchall {:try_start_5be .. :try_end_5c4} :catchall_5c5

    .line 1349
    goto :goto_5d0

    .line 1347
    :catchall_5c5
    move-exception v0

    goto :goto_5ca

    :catchall_5c7
    move-exception v0

    move-object/from16 v13, v23

    .line 1348
    :goto_5ca
    const-string/jumbo v14, "starting NetworkPolicy Service"

    invoke-direct {v2, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1350
    :goto_5d0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1352
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.wifi"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5fd

    .line 1355
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1356
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1357
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1358
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1359
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1361
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1364
    :cond_5fd
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_618

    .line 1366
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1367
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1369
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1372
    :cond_618
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.wifi.aware"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_633

    .line 1374
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1375
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1376
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1379
    :cond_633
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.wifi.direct"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64e

    .line 1381
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1382
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1383
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1386
    :cond_64e
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.lowpan"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_669

    .line 1388
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1389
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1390
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1393
    :cond_669
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.ethernet"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v14, "android.hardware.usb.host"

    if-nez v0, :cond_681

    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1394
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67e

    goto :goto_681

    :cond_67e
    move-object/from16 v27, v7

    goto :goto_692

    .line 1395
    :cond_681
    :goto_681
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1396
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v27, v7

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1397
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1400
    :goto_692
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1402
    :try_start_697
    new-instance v7, Lcom/android/server/ConnectivityService;

    invoke-direct {v7, v11, v9, v12, v13}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_69c
    .catchall {:try_start_697 .. :try_end_69c} :catchall_6b3

    .line 1404
    :try_start_69c
    const-string v0, "connectivity"
    :try_end_69e
    .catchall {:try_start_69c .. :try_end_69e} :catchall_6ad

    move-object/from16 v28, v9

    const/4 v9, 0x6

    move-object/from16 v29, v10

    const/4 v10, 0x0

    :try_start_6a4
    invoke-static {v0, v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1407
    invoke-virtual {v13, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_6aa
    .catchall {:try_start_6a4 .. :try_end_6aa} :catchall_6ab

    .line 1410
    goto :goto_6c0

    .line 1408
    :catchall_6ab
    move-exception v0

    goto :goto_6ba

    :catchall_6ad
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto :goto_6ba

    :catchall_6b3
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v7, v23

    .line 1409
    :goto_6ba
    const-string/jumbo v9, "starting Connectivity Service"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1411
    :goto_6c0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1413
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1415
    :try_start_6c8
    invoke-static {v11}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0

    .line 1416
    const-string/jumbo v9, "servicediscovery"

    invoke-static {v9, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d2
    .catchall {:try_start_6c8 .. :try_end_6d2} :catchall_6d3

    .line 1420
    goto :goto_6da

    .line 1418
    :catchall_6d3
    move-exception v0

    .line 1419
    const-string/jumbo v9, "starting Service Discovery Service"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1421
    :goto_6da
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1423
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1425
    :try_start_6e2
    const-string/jumbo v0, "system_update"

    new-instance v9, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v9, v11}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ed
    .catchall {:try_start_6e2 .. :try_end_6ed} :catchall_6ee

    .line 1429
    goto :goto_6f5

    .line 1427
    :catchall_6ee
    move-exception v0

    .line 1428
    const-string/jumbo v9, "starting SystemUpdateManagerService"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1430
    :goto_6f5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1432
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1434
    :try_start_6fd
    const-string/jumbo v0, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v11}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_708
    .catchall {:try_start_6fd .. :try_end_708} :catchall_709

    .line 1438
    goto :goto_710

    .line 1436
    :catchall_709
    move-exception v0

    .line 1437
    const-string/jumbo v9, "starting UpdateLockService"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1439
    :goto_710
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1441
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1442
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1443
    invoke-static {v11}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 1444
    invoke-static {v11}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1445
    nop

    .line 1446
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1445
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 1447
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1449
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1450
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1451
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1453
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1455
    :try_start_747
    new-instance v9, Lcom/android/server/LocationManagerService;

    invoke-direct {v9, v11}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_74c
    .catchall {:try_start_747 .. :try_end_74c} :catchall_754

    .line 1456
    :try_start_74c
    const-string v0, "location"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_751
    .catchall {:try_start_74c .. :try_end_751} :catchall_752

    .line 1459
    goto :goto_75d

    .line 1457
    :catchall_752
    move-exception v0

    goto :goto_757

    :catchall_754
    move-exception v0

    move-object/from16 v9, v23

    .line 1458
    :goto_757
    const-string/jumbo v10, "starting Location Manager"

    invoke-direct {v2, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1460
    :goto_75d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1462
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1464
    :try_start_765
    new-instance v10, Lcom/android/server/CountryDetectorService;

    invoke-direct {v10, v11}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_76a
    .catchall {:try_start_765 .. :try_end_76a} :catchall_774

    .line 1465
    :try_start_76a
    const-string v0, "country_detector"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76f
    .catchall {:try_start_76a .. :try_end_76f} :catchall_772

    .line 1468
    move-object/from16 v30, v7

    goto :goto_77f

    .line 1466
    :catchall_772
    move-exception v0

    goto :goto_777

    :catchall_774
    move-exception v0

    move-object/from16 v10, v23

    .line 1467
    :goto_777
    move-object/from16 v30, v7

    const-string/jumbo v7, "starting Country Detector"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1469
    :goto_77f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1473
    const-string v0, "StartTimeDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1475
    :try_start_787
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_78e
    .catchall {:try_start_787 .. :try_end_78e} :catchall_78f

    .line 1478
    goto :goto_796

    .line 1476
    :catchall_78f
    move-exception v0

    .line 1477
    const-string/jumbo v7, "starting StartTimeDetectorService service"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1479
    :goto_796
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1482
    if-nez v19, :cond_7b2

    .line 1483
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1485
    :try_start_7a0
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_7a7
    .catchall {:try_start_7a0 .. :try_end_7a7} :catchall_7a8

    .line 1488
    goto :goto_7af

    .line 1486
    :catchall_7a8
    move-exception v0

    .line 1487
    const-string/jumbo v7, "starting Search Service"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1489
    :goto_7af
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1492
    :cond_7b2
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x111007f

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7cf

    .line 1493
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1494
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1495
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_7d4

    .line 1497
    :cond_7cf
    const-string v0, "Wallpaper service disabled by config"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :goto_7d4
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1501
    if-nez v20, :cond_7e7

    .line 1502
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v20, v9

    move-object/from16 v31, v10

    goto :goto_828

    .line 1504
    :cond_7e7
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x104016d

    .line 1505
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1507
    :try_start_7f2
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_7f4
    .catchall {:try_start_7f2 .. :try_end_7f4} :catchall_811

    move-object/from16 v20, v9

    :try_start_7f6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7fe
    .catchall {:try_start_7f6 .. :try_end_7fe} :catchall_80f

    move-object/from16 v31, v10

    :try_start_800
    const-string v10, "$Lifecycle"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_80c
    .catchall {:try_start_800 .. :try_end_80c} :catchall_80d

    .line 1510
    goto :goto_828

    .line 1508
    :catchall_80d
    move-exception v0

    goto :goto_816

    :catchall_80f
    move-exception v0

    goto :goto_814

    :catchall_811
    move-exception v0

    move-object/from16 v20, v9

    :goto_814
    move-object/from16 v31, v10

    .line 1509
    :goto_816
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1512
    :goto_828
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1514
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.broadcastradio"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_844

    .line 1515
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1516
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1517
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1520
    :cond_844
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1521
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1522
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1524
    if-eqz v19, :cond_864

    .line 1525
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1526
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1527
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1530
    :cond_864
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1533
    :try_start_869
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v11, v15}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v15, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_871
    .catchall {:try_start_869 .. :try_end_871} :catchall_872

    .line 1537
    goto :goto_879

    .line 1535
    :catchall_872
    move-exception v0

    .line 1536
    const-string/jumbo v7, "starting WiredAccessoryManager"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1538
    :goto_879
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1540
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.midi"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_895

    .line 1542
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1543
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1544
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1548
    :cond_895
    const-string v0, "StartAdbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1550
    :try_start_89a
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_8a1
    .catchall {:try_start_89a .. :try_end_8a1} :catchall_8a2

    .line 1553
    goto :goto_8a8

    .line 1551
    :catchall_8a2
    move-exception v0

    .line 1552
    const-string v0, "Failure starting AdbService"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :goto_8a8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1556
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8bf

    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1557
    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8bf

    if-eqz v18, :cond_8ce

    .line 1561
    :cond_8bf
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1562
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1563
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1566
    :cond_8ce
    if-nez v19, :cond_8ea

    .line 1567
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1570
    :try_start_8d5
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v11}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    .line 1571
    const-string/jumbo v7, "serial"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8e0
    .catchall {:try_start_8d5 .. :try_end_8e0} :catchall_8e1

    .line 1574
    goto :goto_8e7

    .line 1572
    :catchall_8e1
    move-exception v0

    .line 1573
    const-string v7, "Failure starting SerialService"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1575
    :goto_8e7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1578
    :cond_8ea
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1580
    :try_start_8ef
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v11}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 1581
    const-string v7, "hardware_properties"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8f9
    .catchall {:try_start_8ef .. :try_end_8f9} :catchall_8fa

    .line 1585
    goto :goto_900

    .line 1583
    :catchall_8fa
    move-exception v0

    .line 1584
    const-string v7, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    :goto_900
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1588
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1589
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1590
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1592
    const-string v0, "StartColorDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1593
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1594
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1596
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1597
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1598
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1600
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1601
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1602
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1604
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1605
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1606
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1608
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_967

    .line 1609
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1610
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1611
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1614
    :cond_967
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97e

    .line 1615
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x111006b

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_98d

    .line 1616
    :cond_97e
    const-string v0, "StartAppWidgetService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1617
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1618
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1622
    :cond_98d
    const-string v0, "StartRoleManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1623
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v7, Lcom/android/server/role/RoleManagerService;

    iget-object v9, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;

    invoke-direct {v10, v9}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v7, v9, v10}, Lcom/android/server/role/RoleManagerService;-><init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1625
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1631
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1632
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1633
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1635
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_9ce

    .line 1636
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1637
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1638
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1640
    :cond_9ce
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1641
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1642
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1644
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1645
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1646
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1648
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1650
    :try_start_9f1
    const-string v0, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v11}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9fb
    .catchall {:try_start_9f1 .. :try_end_9fb} :catchall_9fc

    .line 1653
    goto :goto_a03

    .line 1651
    :catchall_9fc
    move-exception v0

    .line 1652
    const-string/jumbo v7, "starting DiskStats Service"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1654
    :goto_a03
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1656
    const-string v0, "RuntimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1658
    :try_start_a0b
    const-string/jumbo v0, "runtime"

    new-instance v7, Lcom/android/server/RuntimeService;

    invoke-direct {v7, v11}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a16
    .catchall {:try_start_a0b .. :try_end_a16} :catchall_a17

    .line 1661
    goto :goto_a1e

    .line 1659
    :catchall_a17
    move-exception v0

    .line 1660
    const-string/jumbo v7, "starting RuntimeService"

    invoke-direct {v2, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1662
    :goto_a1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1668
    iget-boolean v0, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_a34

    .line 1669
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x111007e

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a34

    const/4 v0, 0x1

    goto :goto_a35

    :cond_a34
    const/4 v0, 0x0

    .line 1671
    :goto_a35
    if-eqz v0, :cond_a46

    .line 1672
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1673
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1674
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1677
    :cond_a46
    if-nez v19, :cond_a82

    if-nez v21, :cond_a82

    .line 1678
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1681
    :try_start_a4f
    new-instance v7, Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-direct {v7, v11}, Lcom/android/server/NewNetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_a54
    .catchall {:try_start_a4f .. :try_end_a54} :catchall_a75

    .line 1685
    :try_start_a54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using networkTimeUpdater class="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a72
    .catchall {:try_start_a54 .. :try_end_a72} :catchall_a73

    .line 1689
    goto :goto_a7e

    .line 1687
    :catchall_a73
    move-exception v0

    goto :goto_a78

    :catchall_a75
    move-exception v0

    move-object/from16 v7, v23

    .line 1688
    :goto_a78
    const-string/jumbo v9, "starting NetworkTimeUpdate service"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1690
    :goto_a7e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_a84

    .line 1693
    :cond_a82
    move-object/from16 v7, v23

    :goto_a84
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1695
    :try_start_a89
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v11}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_a8e
    .catchall {:try_start_a89 .. :try_end_a8e} :catchall_a8f

    .line 1698
    goto :goto_a96

    .line 1696
    :catchall_a8f
    move-exception v0

    .line 1697
    const-string/jumbo v9, "starting CertBlacklister"

    invoke-direct {v2, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1699
    :goto_a96
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1703
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1704
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1705
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1709
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1710
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1711
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1713
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1714
    new-instance v0, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v0, v11}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    const-string v9, "graphicsstats"

    invoke-static {v9, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1716
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1718
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_adf

    .line 1719
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v0}, Lcom/android/server/coverage/CoverageService;-><init>()V

    const-string v9, "coverage"

    invoke-static {v9, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1721
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1724
    :cond_adf
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.software.print"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af8

    .line 1725
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1726
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1727
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1730
    :cond_af8
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.software.companion_device_setup"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b11

    .line 1731
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1732
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1733
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1736
    :cond_b11
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1737
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1738
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1740
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1741
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1742
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1744
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b48

    .line 1745
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1746
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1747
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1750
    :cond_b48
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.software.live_tv"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v9, "android.software.leanback"

    if-nez v0, :cond_b5c

    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1751
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6b

    .line 1752
    :cond_b5c
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1753
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1754
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1757
    :cond_b6b
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.picture_in_picture"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b84

    .line 1758
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1759
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1760
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1763
    :cond_b84
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9b

    .line 1764
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1765
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1766
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1769
    :cond_b9b
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1771
    :try_start_ba0
    new-instance v9, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v9, v11}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_ba5
    .catchall {:try_start_ba0 .. :try_end_ba5} :catchall_bad

    .line 1772
    :try_start_ba5
    const-string v0, "media_router"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_baa
    .catchall {:try_start_ba5 .. :try_end_baa} :catchall_bab

    .line 1775
    goto :goto_bb6

    .line 1773
    :catchall_bab
    move-exception v0

    goto :goto_bb0

    :catchall_bad
    move-exception v0

    move-object/from16 v9, v23

    .line 1774
    :goto_bb0
    const-string/jumbo v10, "starting MediaRouterService"

    invoke-direct {v2, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1776
    :goto_bb6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1778
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1779
    const-string v10, "android.hardware.biometrics.face"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1780
    iget-object v10, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1781
    const-string v14, "android.hardware.biometrics.iris"

    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 1782
    iget-object v14, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1783
    move-object/from16 v18, v7

    const-string v7, "android.hardware.fingerprint"

    invoke-virtual {v14, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    .line 1785
    if-eqz v0, :cond_be4

    .line 1786
    const-string v0, "StartFaceSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1787
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1788
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1791
    :cond_be4
    if-eqz v10, :cond_bf5

    .line 1792
    const-string v0, "StartIrisSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1793
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/biometrics/iris/IrisService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1794
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1797
    :cond_bf5
    if-eqz v7, :cond_c06

    .line 1798
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1799
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1800
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1804
    :cond_c06
    const-string v0, "StartBiometricService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1805
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1806
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1808
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1810
    :try_start_c1a
    invoke-static {v11}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_c1d
    .catchall {:try_start_c1a .. :try_end_c1d} :catchall_c1e

    .line 1813
    goto :goto_c26

    .line 1811
    :catchall_c1e
    move-exception v0

    move-object v7, v0

    .line 1812
    const-string/jumbo v0, "starting StartBackgroundDexOptService"

    invoke-direct {v2, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1814
    :goto_c26
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1816
    if-nez v19, :cond_c3f

    .line 1819
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1821
    :try_start_c30
    invoke-static {v11}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_c33
    .catchall {:try_start_c30 .. :try_end_c33} :catchall_c34

    .line 1824
    goto :goto_c3c

    .line 1822
    :catchall_c34
    move-exception v0

    move-object v7, v0

    .line 1823
    const-string/jumbo v0, "starting DynamicCodeLoggingService"

    invoke-direct {v2, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1825
    :goto_c3c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1828
    :cond_c3f
    if-nez v19, :cond_c52

    .line 1829
    const-string v7, "StartPruneInstantAppsJobService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1831
    :try_start_c46
    invoke-static {v11}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_c49
    .catchall {:try_start_c46 .. :try_end_c49} :catchall_c4a

    .line 1834
    goto :goto_c4f

    .line 1832
    :catchall_c4a
    move-exception v0

    move-object v10, v0

    .line 1833
    invoke-direct {v2, v7, v10}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1835
    :goto_c4f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1839
    :cond_c52
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1840
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1841
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1843
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1844
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1845
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1847
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1848
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1849
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object v10, v12

    move-object/from16 v14, v18

    move-object/from16 v23, v27

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v18, v9

    move-object/from16 v9, v29

    goto :goto_c9a

    .line 1217
    :cond_c8d
    move-object/from16 v7, v23

    move-object v9, v7

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v18, v14

    move-object/from16 v20, v18

    move-object/from16 v30, v20

    .line 1852
    :goto_c9a
    if-nez v19, :cond_cae

    .line 1853
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1854
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v21, v15

    const-class v15, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1855
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_cb0

    .line 1852
    :cond_cae
    move-object/from16 v21, v15

    .line 1858
    :goto_cb0
    if-eqz v19, :cond_d0e

    .line 1860
    const-string v0, "StartWearPowerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1861
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1862
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1864
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1865
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1866
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1868
    const-string v0, "StartWearDisplayService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1869
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1870
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1872
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1873
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1874
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1876
    if-eqz v17, :cond_cff

    .line 1877
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1878
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1879
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1882
    :cond_cff
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1883
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1884
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1887
    :cond_d0e
    if-nez v16, :cond_d1f

    .line 1888
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1889
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1890
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1893
    :cond_d1f
    if-nez v24, :cond_d30

    .line 1894
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1895
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1896
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1899
    :cond_d30
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v15, "android.hardware.type.embedded"

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4b

    .line 1900
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1901
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1902
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1906
    :cond_d4b
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1907
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1908
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1911
    const-string v0, "StartIncidentCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1912
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1913
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1916
    iget-object v0, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v15, -0x1

    .line 1917
    move-object/from16 v16, v14

    const-string/jumbo v14, "service.adb.tcp.port"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1916
    const-string v15, "adb_port"

    invoke-static {v0, v15, v14}, Llineageos/providers/LineageSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1920
    iget-object v0, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1921
    invoke-static {v15}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Lcom/android/server/SystemServer$AdbPortObserver;

    invoke-direct {v15, v2}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    .line 1920
    move-object/from16 v17, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v14, v12, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1924
    if-eqz v5, :cond_d92

    .line 1925
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1929
    :cond_d92
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1930
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MmsServiceBroker;

    .line 1931
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1933
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.software.autofill"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dbf

    .line 1934
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1935
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1936
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1940
    :cond_dbf
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1941
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1942
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1944
    const-string v0, "AppServiceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1945
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1946
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1950
    :try_start_ddd
    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1951
    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1952
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1953
    new-array v14, v12, [Ljava/lang/Object;

    iget-object v12, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1954
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string/jumbo v14, "run"
    :try_end_e03
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ddd .. :try_end_e03} :catch_e18
    .catch Ljava/lang/IllegalAccessException; {:try_start_ddd .. :try_end_e03} :catch_e18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ddd .. :try_end_e03} :catch_e18
    .catch Ljava/lang/InstantiationException; {:try_start_ddd .. :try_end_e03} :catch_e18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ddd .. :try_end_e03} :catch_e18

    move-object/from16 v24, v10

    const/4 v15, 0x0

    :try_start_e06
    new-array v10, v15, [Ljava/lang/Class;

    invoke-virtual {v12, v14, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1955
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1956
    new-array v12, v15, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e06 .. :try_end_e15} :catch_e16
    .catch Ljava/lang/IllegalAccessException; {:try_start_e06 .. :try_end_e15} :catch_e16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e06 .. :try_end_e15} :catch_e16
    .catch Ljava/lang/InstantiationException; {:try_start_e06 .. :try_end_e15} :catch_e16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e06 .. :try_end_e15} :catch_e16

    .line 1964
    goto :goto_e34

    .line 1957
    :catch_e16
    move-exception v0

    goto :goto_e1b

    :catch_e18
    move-exception v0

    move-object/from16 v24, v10

    .line 1962
    :goto_e1b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to start  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v22

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1968
    :goto_e34
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1970
    :try_start_e39
    invoke-virtual {v6}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_e3c
    .catchall {:try_start_e39 .. :try_end_e3c} :catchall_e3d

    .line 1973
    goto :goto_e44

    .line 1971
    :catchall_e3d
    move-exception v0

    move-object v4, v0

    .line 1972
    const-string v0, "making Vibrator Service ready"

    invoke-direct {v2, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1974
    :goto_e44
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1976
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1977
    if-eqz v23, :cond_e59

    .line 1979
    :try_start_e4e
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_e51
    .catchall {:try_start_e4e .. :try_end_e51} :catchall_e52

    .line 1982
    goto :goto_e59

    .line 1980
    :catchall_e52
    move-exception v0

    move-object v4, v0

    .line 1981
    const-string v0, "making Lock Settings Service ready"

    invoke-direct {v2, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1984
    :cond_e59
    :goto_e59
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1987
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1988
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1e0

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1989
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1991
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1992
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1f4

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1993
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1995
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1997
    :try_start_e7f
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_e82
    .catchall {:try_start_e7f .. :try_end_e82} :catchall_e83

    .line 2000
    goto :goto_e8a

    .line 1998
    :catchall_e83
    move-exception v0

    move-object v4, v0

    .line 1999
    const-string v0, "making Window Manager Service ready"

    invoke-direct {v2, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2001
    :goto_e8a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2003
    if-eqz v5, :cond_e94

    .line 2004
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2010
    :cond_e94
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 2011
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2012
    invoke-virtual {v11, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2013
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2014
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2017
    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 2018
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_ebf

    .line 2019
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2022
    :cond_ebf
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2025
    :try_start_ec4
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_ecf
    .catchall {:try_start_ec4 .. :try_end_ecf} :catchall_ed0

    .line 2028
    goto :goto_ed6

    .line 2026
    :catchall_ed0
    move-exception v0

    .line 2027
    const-string v1, "making Power Manager Service ready"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2029
    :goto_ed6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2032
    const-string v0, "StartPermissionPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2033
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2034
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2036
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2037
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2038
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2040
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2043
    :try_start_efa
    iget-object v0, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v1, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v5, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_f01
    .catchall {:try_start_efa .. :try_end_f01} :catchall_f02

    .line 2046
    goto :goto_f08

    .line 2044
    :catchall_f02
    move-exception v0

    .line 2045
    const-string v1, "making Display Manager Service ready"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2047
    :goto_f08
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2049
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2052
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2053
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2055
    array-length v4, v1

    :goto_f23
    if-ge v6, v4, :cond_f5a

    aget-object v10, v1, v6

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StartDeviceSpecificServices "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2058
    :try_start_f3b
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_f40
    .catchall {:try_start_f3b .. :try_end_f40} :catchall_f41

    .line 2061
    goto :goto_f54

    .line 2059
    :catchall_f41
    move-exception v0

    .line 2060
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2062
    :goto_f54
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2055
    add-int/lit8 v6, v6, 0x1

    goto :goto_f23

    .line 2064
    :cond_f5a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2066
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2067
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2068
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2071
    nop

    .line 2072
    nop

    .line 2073
    nop

    .line 2074
    nop

    .line 2075
    nop

    .line 2076
    nop

    .line 2077
    nop

    .line 2078
    nop

    .line 2079
    nop

    .line 2080
    nop

    .line 2081
    nop

    .line 2082
    nop

    .line 2083
    nop

    .line 2090
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v15, Lcom/android/server/-$$Lambda$SystemServer$RIWNR87PnJ4Y6VHItRXU0J6ocqQ;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v8

    move-object/from16 v6, v30

    move-object v8, v13

    move-object/from16 v10, v24

    move-object/from16 v11, v20

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v14, v21

    move-object/from16 v20, v0

    move-object v0, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$RIWNR87PnJ4Y6VHItRXU0J6ocqQ;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2305
    return-void
.end method

.method private static native startSensorService()V
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;)V
    .registers 3

    .line 2313
    const v0, 0x1040165

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_11

    .line 2314
    const-string p1, "SystemServer"

    const-string v0, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    return-void

    .line 2318
    :cond_11
    const-string p1, "StartSystemCaptionsManagerService"

    invoke-static {p1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2319
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2320
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2321
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 2370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2371
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2373
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2375
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2376
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2377
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2

    .line 2380
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2382
    return-void
.end method

.method private static traceEnd()V
    .registers 1

    .line 2385
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2386
    return-void
.end method


# virtual methods
.method public synthetic lambda$startOtherServices$3$SystemServer()V
    .registers 6

    .line 2110
    const-string v0, "WebViewFactoryPreparation"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemServerTimingAsync"

    const-wide/32 v3, 0x80000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2113
    invoke-virtual {v1, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v0, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2116
    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2117
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2118
    return-void
.end method

.method public synthetic lambda$startOtherServices$4$SystemServer(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 24

    .line 2091
    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    const-string v0, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2093
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x226

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2095
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2096
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2098
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    .line 2101
    goto :goto_2b

    .line 2099
    :catchall_24
    move-exception v0

    .line 2100
    const-string/jumbo v4, "observing native crashes"

    invoke-direct {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2102
    :goto_2b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2106
    nop

    .line 2107
    nop

    .line 2108
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v4, "WebViewFactoryPreparation"

    const/4 v5, 0x0

    if-nez v0, :cond_4a

    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v0, :cond_4a

    .line 2109
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v6, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    invoke-virtual {v0, v6, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v6, v0

    goto :goto_4b

    .line 2121
    :cond_4a
    move-object v6, v5

    :goto_4b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2122
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2123
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2124
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2127
    :cond_64
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2129
    :try_start_69
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    .line 2132
    goto :goto_75

    .line 2130
    :catchall_6d
    move-exception v0

    move-object v7, v0

    .line 2131
    const-string/jumbo v0, "starting System UI"

    invoke-direct {p0, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2133
    :goto_75
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2139
    if-eqz p3, :cond_8e

    .line 2140
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2142
    const/4 v0, 0x1

    :try_start_80
    invoke-virtual {p4, v0}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    .line 2145
    goto :goto_8b

    .line 2143
    :catchall_84
    move-exception v0

    move-object v7, v0

    .line 2144
    const-string v0, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2146
    :goto_8b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2148
    :cond_8e
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2150
    if-eqz p5, :cond_a1

    .line 2151
    :try_start_95
    invoke-virtual {p5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_a1

    .line 2153
    :catchall_99
    move-exception v0

    move-object v7, v0

    .line 2154
    const-string v0, "making Network Managment Service ready"

    invoke-direct {p0, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a2

    .line 2155
    :cond_a1
    :goto_a1
    nop

    .line 2156
    :goto_a2
    nop

    .line 2157
    if-eqz v3, :cond_aa

    .line 2158
    nop

    .line 2159
    invoke-virtual {p6}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    .line 2161
    :cond_aa
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2162
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2164
    if-eqz p7, :cond_c0

    .line 2165
    :try_start_b4
    invoke-virtual {p7}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_c0

    .line 2167
    :catchall_b8
    move-exception v0

    move-object v7, v0

    .line 2168
    const-string v0, "making IpSec Service ready"

    invoke-direct {p0, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c1

    .line 2169
    :cond_c0
    :goto_c0
    nop

    .line 2170
    :goto_c1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2171
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2173
    if-eqz p8, :cond_d7

    .line 2174
    :try_start_cb
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d7

    .line 2176
    :catchall_cf
    move-exception v0

    move-object v7, v0

    .line 2177
    const-string v0, "making Network Stats Service ready"

    invoke-direct {p0, v0, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d8

    .line 2178
    :cond_d7
    :goto_d7
    nop

    .line 2179
    :goto_d8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2180
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2182
    if-eqz v2, :cond_ee

    .line 2183
    :try_start_e2
    invoke-virtual {p4}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_ee

    .line 2185
    :catchall_e6
    move-exception v0

    move-object v2, v0

    .line 2186
    const-string v0, "making Connectivity Service ready"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ef

    .line 2187
    :cond_ee
    :goto_ee
    nop

    .line 2188
    :goto_ef
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2189
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2191
    if-eqz v3, :cond_105

    .line 2192
    :try_start_f9
    invoke-virtual {p6, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_105

    .line 2194
    :catchall_fd
    move-exception v0

    move-object v2, v0

    .line 2195
    const-string v0, "making Network Policy Service ready"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_106

    .line 2196
    :cond_105
    :goto_105
    nop

    .line 2197
    :goto_106
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2200
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2204
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2206
    if-eqz v6, :cond_118

    .line 2207
    invoke-static {v6, v4}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2209
    :cond_118
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2211
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2213
    const-string v0, "StartNetworkStack"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2220
    :try_start_127
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    move-object v2, p1

    invoke-virtual {v0, p1}, Landroid/net/NetworkStackClient;->start(Landroid/content/Context;)V
    :try_end_12f
    .catchall {:try_start_127 .. :try_end_12f} :catchall_130

    .line 2223
    goto :goto_137

    .line 2221
    :catchall_130
    move-exception v0

    .line 2222
    const-string/jumbo v2, "starting Network Stack"

    invoke-direct {p0, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2224
    :goto_137
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2226
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2228
    if-eqz p9, :cond_14d

    .line 2229
    :try_start_141
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_145

    goto :goto_14d

    .line 2231
    :catchall_145
    move-exception v0

    move-object v2, v0

    .line 2232
    const-string v0, "Notifying Location Service running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14e

    .line 2233
    :cond_14d
    :goto_14d
    nop

    .line 2234
    :goto_14e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2235
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2237
    if-eqz p10, :cond_164

    .line 2238
    :try_start_158
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_15c

    goto :goto_164

    .line 2240
    :catchall_15c
    move-exception v0

    move-object v2, v0

    .line 2241
    const-string v0, "Notifying CountryDetectorService running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_165

    .line 2242
    :cond_164
    :goto_164
    nop

    .line 2243
    :goto_165
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2244
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2246
    if-eqz p11, :cond_17b

    .line 2247
    :try_start_16f
    invoke-interface/range {p11 .. p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_173

    goto :goto_17b

    .line 2249
    :catchall_173
    move-exception v0

    move-object v2, v0

    .line 2250
    const-string v0, "Notifying NetworkTimeService running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17c

    .line 2251
    :cond_17b
    :goto_17b
    nop

    .line 2252
    :goto_17c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2253
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2256
    if-eqz p12, :cond_192

    .line 2257
    :try_start_186
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_189
    .catchall {:try_start_186 .. :try_end_189} :catchall_18a

    goto :goto_192

    .line 2259
    :catchall_18a
    move-exception v0

    move-object v2, v0

    .line 2260
    const-string v0, "Notifying InputManagerService running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_193

    .line 2261
    :cond_192
    :goto_192
    nop

    .line 2262
    :goto_193
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2263
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2265
    if-eqz p13, :cond_1a9

    .line 2266
    :try_start_19d
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1a1

    goto :goto_1a9

    .line 2268
    :catchall_1a1
    move-exception v0

    move-object v2, v0

    .line 2269
    const-string v0, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1aa

    .line 2270
    :cond_1a9
    :goto_1a9
    nop

    .line 2271
    :goto_1aa
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2272
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2274
    if-eqz p14, :cond_1c0

    .line 2275
    :try_start_1b4
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1b8

    goto :goto_1c0

    .line 2277
    :catchall_1b8
    move-exception v0

    move-object v2, v0

    .line 2278
    const-string v0, "Notifying MediaRouterService running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c1

    .line 2279
    :cond_1c0
    :goto_1c0
    nop

    .line 2280
    :goto_1c1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2281
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2283
    if-eqz p15, :cond_1d7

    .line 2284
    :try_start_1cb
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_1ce
    .catchall {:try_start_1cb .. :try_end_1ce} :catchall_1cf

    goto :goto_1d7

    .line 2286
    :catchall_1cf
    move-exception v0

    move-object v2, v0

    .line 2287
    const-string v0, "Notifying MmsService running"

    invoke-direct {p0, v0, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d8

    .line 2288
    :cond_1d7
    :goto_1d7
    nop

    .line 2289
    :goto_1d8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2291
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2295
    :try_start_1e0
    const-string v0, "incident"

    .line 2296
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2295
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2297
    if-eqz v0, :cond_1ef

    .line 2298
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_1ef
    .catchall {:try_start_1e0 .. :try_end_1ef} :catchall_1f0

    .line 2302
    :cond_1ef
    goto :goto_1f6

    .line 2300
    :catchall_1f0
    move-exception v0

    .line 2301
    const-string v2, "Notifying incident daemon running"

    invoke-direct {p0, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2303
    :goto_1f6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2304
    return-void
.end method
