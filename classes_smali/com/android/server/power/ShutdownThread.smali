.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DONE_POLL_WAIT_MS:I = 0x1f4

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final METRICS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-metrics"

.field private static METRIC_AM:Ljava/lang/String; = null

.field private static METRIC_PM:Ljava/lang/String; = null

.field private static METRIC_RADIO:Ljava/lang/String; = null

.field private static METRIC_RADIOS:Ljava/lang/String; = null

.field private static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field private static METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = null

.field private static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final MZ_MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x2ee0

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final RADIOS_STATE_POLL_SLEEP_MS:I = 0x64

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TRON_METRICS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static beginAnimationTime:J

.field private static endAnimationTime:J

.field private static mDelayDim:Ljava/lang/Runnable;

.field private static mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static final sIsStartedGuard:Ljava/lang/Object;

.field private static sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 114
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 116
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 117
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 118
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 128
    const-string/jumbo v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 134
    const-string v0, "begin_shutdown"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    .line 887
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    .line 894
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 895
    sput-wide v0, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 900
    const-string/jumbo v0, "ro.vendor.customize.isp"

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    .line 912
    new-instance v0, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    .line 995
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$9;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"  # Landroid/content/Context;

    .line 69
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/ShutdownThread;

    .line 69
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/ShutdownThread;

    .line 69
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/ShutdownThread;

    .line 69
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/ShutdownThread;

    .line 69
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"  # Landroid/os/PowerManager;

    .line 69
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$200()Landroid/util/TimingsTraceLog;
    .registers 1

    .line 69
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 69
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic access$600()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/CharSequence;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Landroid/util/ArrayMap;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;

    .line 404
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_10

    .line 406
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown sequence already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit v0

    return-void

    .line 409
    :cond_10
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 410
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_ba

    .line 412
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 413
    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 414
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 417
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 419
    const/4 v3, 0x0

    :try_start_2b
    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v4, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 421
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 422
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_43} :catch_44

    .line 426
    goto :goto_50

    .line 423
    :catch_44
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 429
    .end local v0  # "e":Ljava/lang/SecurityException;
    :goto_50
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 430
    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 432
    :try_start_5c
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 434
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 435
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_7a} :catch_7b

    .line 439
    goto :goto_87

    .line 436
    :catch_7b
    move-exception v0

    .line 437
    .restart local v0  # "e":Ljava/lang/SecurityException;
    const-string v1, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 442
    .end local v0  # "e":Ljava/lang/SecurityException;
    :cond_87
    :goto_87
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 443
    const v0, 0x3345a

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 447
    :cond_95
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 449
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "mIBootAnim.isCustBootAnim() is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->bootanimCust(Landroid/content/Context;)V

    .line 451
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 453
    return-void

    .line 410
    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method private static bootanimCust(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"  # Landroid/content/Context;

    .line 935
    const-string/jumbo v0, "service.shutanim.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "set service.shutanim.running to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isChinaMobileF()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 940
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 943
    :cond_37
    :try_start_37
    const-string/jumbo v0, "window"

    .line 944
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 943
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 945
    .local v0, "wm":Landroid/view/IWindowManager;
    if-eqz v0, :cond_48

    .line 946
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_48} :catch_49

    .line 950
    .end local v0  # "wm":Landroid/view/IWindowManager;
    :cond_48
    goto :goto_4d

    .line 948
    :catch_49
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 951
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_4d
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->mzShowShutDownAnimation(Landroid/content/Context;)V

    .line 952
    return-void
.end method

.method private static delayForPlayAnimation()V
    .registers 6

    .line 954
    sget-wide v0, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    .line 955
    return-void

    .line 957
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 958
    sget-wide v0, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    .line 960
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v0, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 963
    goto :goto_27

    .line 961
    :catch_1f
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :cond_27
    :goto_27
    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "property"  # Ljava/lang/String;

    .line 909
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isChinaMobileF()Z
    .registers 2

    .line 902
    sget-object v0, Lcom/android/server/power/ShutdownThread;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "chinamobile_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 903
    const/4 v0, 0x1

    return v0

    .line 905
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static metricEnded(Ljava/lang/String;)V
    .registers 7
    .param p0, "metricKey"  # Ljava/lang/String;

    .line 612
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 613
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static metricShutdownStart()V
    .registers 5

    .line 619
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 620
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static metricStarted(Ljava/lang/String;)V
    .registers 7
    .param p0, "metricKey"  # Ljava/lang/String;

    .line 606
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 607
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static mzShowShutDownAnimation(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 968
    new-instance v0, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    .line 969
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;->setCancelable(Z)V

    .line 970
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 971
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 972
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 973
    .local v0, "mWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 974
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 975
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;->show()V

    .line 977
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 978
    return-void
.end method

.method private static newTimingsLog()Landroid/util/TimingsTraceLog;
    .registers 4

    .line 602
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "confirm"  # Z

    .line 265
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const-string v1, "Cannot request to shutdown when Monkey is running, returning."

    const-string v2, "ShutdownThread"

    if-eqz v0, :cond_e

    .line 266
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 271
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ShutdownThread, reboot confirm is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    const-string/jumbo v3, "ro.monkey"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 273
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string/jumbo v3, "nopower"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 274
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 279
    :cond_47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 280
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 281
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 282
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 283
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 284
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 17
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "reboot"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 720
    const-string v0, "ERROR"

    const-string/jumbo v1, "vendor.peripheral.shutdown_critical_list"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "subsysProp":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ShutdownThread"

    if-nez v2, :cond_bd

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown critical subsyslist is :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v2, "Waiting for a maximum of 10000ms"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "subsysList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 730
    .local v4, "wait_count":I
    const/4 v5, 0x1

    .line 732
    .local v5, "okToShutdown":Z
    array-length v6, v2

    .line 734
    .local v6, "subsysListLength":I
    :cond_38
    const/4 v5, 0x1

    .line 735
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3a
    const-string v8, "ONLINE"

    const-string v9, ".state"

    const-string/jumbo v10, "vendor.peripheral."

    if-ge v7, v6, :cond_65

    .line 736
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v2, v7

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 737
    invoke-static {v9, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 742
    .local v9, "subsysState":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 746
    const/4 v5, 0x0

    .line 735
    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 749
    .end local v7  # "i":I
    .end local v9  # "subsysState":Ljava/lang/String;
    :cond_65
    if-nez v5, :cond_6e

    .line 750
    const-wide/16 v11, 0x64

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 751
    add-int/lit8 v4, v4, 0x1

    .line 753
    :cond_6e
    const/4 v7, 0x1

    if-eq v5, v7, :cond_75

    const/16 v11, 0x64

    if-lt v4, v11, :cond_38

    .line 755
    :cond_75
    if-eq v5, v7, :cond_b8

    .line 756
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_78
    array-length v11, v2

    if-ge v7, v11, :cond_b7

    .line 757
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v2, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 758
    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 763
    .local v11, "subsysState":Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b4

    .line 764
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Subsystem "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v2, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "did not shut down within timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    .end local v7  # "i":I
    .end local v11  # "subsysState":Ljava/lang/String;
    :cond_b7
    goto :goto_bd

    .line 769
    :cond_b8
    const-string v0, "Vendor subsystem(s) shutdown successful"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v2  # "subsysList":[Ljava/lang/String;
    .end local v4  # "wait_count":I
    .end local v5  # "okToShutdown":Z
    .end local v6  # "subsysListLength":I
    :cond_bd
    :goto_bd
    if-eqz p1, :cond_df

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebooting, reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 775
    const-string v0, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x0

    .end local p2  # "reason":Ljava/lang/String;
    .local v0, "reason":Ljava/lang/String;
    goto :goto_e2

    .line 772
    .end local v0  # "reason":Ljava/lang/String;
    .restart local p2  # "reason":Ljava/lang/String;
    :cond_df
    move-object/from16 v2, p2

    move-object v0, v2

    .line 794
    .end local p2  # "reason":Ljava/lang/String;
    .restart local v0  # "reason":Ljava/lang/String;
    :goto_e2
    const-string v2, "Performing low-level shutdown..."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "confirm"  # Z

    .line 295
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 296
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 297
    return-void

    .line 300
    :cond_13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 301
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 302
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 303
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 304
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 305
    return-void
.end method

.method private static saveMetrics(ZLjava/lang/String;)V
    .registers 11
    .param p0, "reboot"  # Z
    .param p1, "reason"  # Ljava/lang/String;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .local v0, "metricValue":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "reboot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    if-eqz p0, :cond_11

    const-string/jumbo v1, "y"

    goto :goto_14

    :cond_11
    const-string/jumbo v1, "n"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 804
    .local v1, "metricsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    const-string v3, "ShutdownThread"

    if-ge v2, v1, :cond_73

    .line 805
    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 806
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 807
    .local v5, "value":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_60

    .line 808
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "metricEnded wasn\'t called for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    goto :goto_70

    .line 811
    :cond_60
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 804
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "value":J
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 813
    .end local v2  # "i":I
    :cond_73
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/shutdown-metrics.tmp"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v2, "tmp":Ljava/io/File;
    const/4 v4, 0x0

    .line 815
    .local v4, "saved":Z
    :try_start_7b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_80} :catch_9e

    .line 816
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_92

    .line 817
    const/4 v4, 0x1

    .line 818
    :try_start_8e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_9e

    .line 820
    .end local v5  # "fos":Ljava/io/FileOutputStream;
    goto :goto_a4

    .line 815
    .restart local v5  # "fos":Ljava/io/FileOutputStream;
    :catchall_92
    move-exception v6

    .end local v0  # "metricValue":Ljava/lang/StringBuilder;
    .end local v1  # "metricsSize":I
    .end local v2  # "tmp":Ljava/io/File;
    .end local v4  # "saved":Z
    .end local v5  # "fos":Ljava/io/FileOutputStream;
    .end local p0  # "reboot":Z
    .end local p1  # "reason":Ljava/lang/String;
    :try_start_93
    throw v6
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    .line 818
    .restart local v0  # "metricValue":Ljava/lang/StringBuilder;
    .restart local v1  # "metricsSize":I
    .restart local v2  # "tmp":Ljava/io/File;
    .restart local v4  # "saved":Z
    .restart local v5  # "fos":Ljava/io/FileOutputStream;
    .restart local p0  # "reboot":Z
    .restart local p1  # "reason":Ljava/lang/String;
    :catchall_94
    move-exception v7

    :try_start_95
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_9d

    :catchall_99
    move-exception v8

    :try_start_9a
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "metricValue":Ljava/lang/StringBuilder;
    .end local v1  # "metricsSize":I
    .end local v2  # "tmp":Ljava/io/File;
    .end local v4  # "saved":Z
    .end local p0  # "reboot":Z
    .end local p1  # "reason":Ljava/lang/String;
    :goto_9d
    throw v7
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_9e

    .end local v5  # "fos":Ljava/io/FileOutputStream;
    .restart local v0  # "metricValue":Ljava/lang/StringBuilder;
    .restart local v1  # "metricsSize":I
    .restart local v2  # "tmp":Ljava/io/File;
    .restart local v4  # "saved":Z
    .restart local p0  # "reboot":Z
    .restart local p1  # "reason":Ljava/lang/String;
    :catch_9e
    move-exception v5

    .line 819
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Cannot save shutdown metrics"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    .end local v5  # "e":Ljava/io/IOException;
    :goto_a4
    if-eqz v4, :cond_b0

    .line 822
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/shutdown-metrics.txt"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 824
    :cond_b0
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "progress"  # I
    .param p2, "message"  # Ljava/lang/CharSequence;

    .line 625
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 636
    return-void
.end method

.method private static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 9
    .param p0, "context"  # Landroid/content/Context;

    .line 309
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "pd":Landroid/app/ProgressDialog;
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_69

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 337
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 339
    const v1, 0x104060c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_54

    .line 341
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 342
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 343
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 344
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 346
    const v1, 0x104060a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_c4

    .line 349
    :cond_54
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 350
    return-object v2

    .line 352
    :cond_5b
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 353
    const v1, 0x104060b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_c4

    .line 356
    :cond_69
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const v5, 0x1040686

    const v6, 0x10405f4

    if-eqz v1, :cond_ac

    const-string/jumbo v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 357
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 361
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_c4

    .line 366
    :cond_94
    const v1, 0x1040608

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    const v1, 0x1040607

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_c4

    .line 372
    :cond_ac
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 373
    return-object v2

    .line 375
    :cond_b3
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 379
    :goto_c4
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 380
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 382
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 383
    return-object v0
.end method

.method private static showSysuiReboot()Z
    .registers 4

    .line 387
    const-string v0, "ShutdownThread"

    const-string v1, "Attempting to use SysUI shutdown UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_7
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 391
    .local v1, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showShutdownUi(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 393
    const-string v2, "SysUI handling shutdown UI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_21

    .line 394
    const/4 v0, 0x1

    return v0

    .line 398
    .end local v1  # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_20
    goto :goto_22

    .line 396
    :catch_21
    move-exception v1

    .line 399
    :goto_22
    const-string v1, "SysUI is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "confirm"  # Z

    .line 162
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const-string v1, "Cannot request to shutdown when Monkey is running, returning."

    const-string/jumbo v2, "nopower"

    const-string v3, "ShutdownThread"

    if-eqz v0, :cond_17

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 163
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 168
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ShutdownThread, shutdown confirm is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    const-string/jumbo v4, "ro.monkey"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 170
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 171
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 176
    :cond_4d
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 177
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 178
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 179
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 180
    return-void
.end method

.method private static shutdownInner(Landroid/content/Context;Z)V
    .registers 8
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "confirm"  # Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 189
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_6
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    .line 191
    const-string v1, "ShutdownThread"

    const-string v2, "Request to shutdown already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_a4

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 198
    .local v0, "longPressBehavior":I
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_27

    .line 199
    const v1, 0x1040605

    goto :goto_31

    .line 200
    :cond_27
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 201
    const v1, 0x1040685

    goto :goto_31

    .line 202
    :cond_2e
    const v1, 0x1040684

    :goto_31
    nop

    .line 204
    .local v1, "resourceId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShutdownThread"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p1, :cond_a0

    .line 207
    new-instance v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 208
    .local v2, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_56

    .line 209
    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 211
    :cond_56
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_63

    .line 213
    const v4, 0x1040606

    goto :goto_66

    .line 214
    :cond_63
    const v4, 0x10405f4

    .line 212
    :goto_66
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 215
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    const/4 v5, 0x0

    .line 221
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 223
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 224
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 226
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 227
    .end local v2  # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    goto :goto_a3

    .line 228
    :cond_a0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    .line 230
    :goto_a3
    return-void

    .line 194
    .end local v0  # "longPressBehavior":I
    .end local v1  # "resourceId":I
    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method private shutdownRadios(I)V
    .registers 12
    .param p1, "timeout"  # I

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 642
    .local v0, "endTime":J
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 643
    .local v2, "done":[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$5;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v0

    move v8, p1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 700
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 702
    int-to-long v4, p1

    :try_start_17
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 704
    goto :goto_1c

    .line 703
    :catch_1b
    move-exception v4

    .line 705
    :goto_1c
    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_28

    .line 706
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for Radio shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_28
    return-void
.end method

.method private static startBootAnimation()V
    .registers 2

    .line 927
    const-string v0, "ShutdownThread"

    const-string v1, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string/jumbo v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v0, "ctl.start"

    const-string/jumbo v1, "shutdownanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method private uncrypt()V
    .registers 10

    .line 827
    const-string v0, "ShutdownThread"

    const-string v1, "Calling uncrypt and monitoring the progress..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 850
    .local v1, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 851
    .local v3, "done":[Z
    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    .line 852
    new-instance v5, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 867
    .local v5, "t":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 870
    const-wide/32 v6, 0xdbba0

    :try_start_1d
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 872
    goto :goto_22

    .line 871
    :catch_21
    move-exception v6

    .line 873
    :goto_22
    aget-boolean v6, v3, v4

    if-nez v6, :cond_53

    .line 874
    const-string v6, "Timed out waiting for uncrypt."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/16 v6, 0x64

    .line 876
    .local v6, "uncryptTimeoutError":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x384

    .line 877
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    .line 876
    const-string/jumbo v2, "uncrypt_time: %d\nuncrypt_error: %d\n"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "timeoutMessage":Ljava/lang/String;
    :try_start_47
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v4, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    .line 882
    goto :goto_53

    .line 880
    :catch_4d
    move-exception v4

    .line 881
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "Failed to write timeout message to uncrypt status"

    invoke-static {v0, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v2  # "timeoutMessage":Ljava/lang/String;
    .end local v4  # "e":Ljava/io/IOException;
    .end local v6  # "uncryptTimeoutError":I
    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 458
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 18

    .line 467
    move-object/from16 v1, p0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v2

    .line 468
    .local v2, "shutdownTimingLog":Landroid/util/TimingsTraceLog;
    const-string v0, "SystemServerShutdown"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->metricShutdownStart()V

    .line 470
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 472
    new-instance v7, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v7, v1}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 485
    .local v7, "br":Landroid/content/BroadcastReceiver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_24

    const-string v3, "1"

    goto :goto_26

    :cond_24
    const-string v3, "0"

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_2e

    goto :goto_30

    :cond_2e
    const-string v3, ""

    :goto_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .end local v0  # "reason":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_49

    .line 494
    const-string/jumbo v0, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_49
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 498
    const-string v0, "SendShutdownBroadcast"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 499
    const-string v0, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 504
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x50000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 505
    iget-object v3, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 509
    .local v3, "endTime":J
    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v8

    .line 510
    :goto_82
    :try_start_82
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const/4 v9, 0x0

    if-nez v0, :cond_c2

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 512
    .local v10, "delay":J
    const-wide/16 v13, 0x0

    cmp-long v0, v10, v13

    if-gtz v0, :cond_9b

    .line 513
    const-string v0, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    goto :goto_c2

    .line 515
    :cond_9b
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_b4

    .line 516
    sub-long v13, v5, v10

    long-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L  # 2.0

    mul-double/2addr v13, v15

    const-wide v15, 0x40c3880000000000L  # 10000.0

    div-double/2addr v13, v15

    double-to-int v0, v13

    .line 518
    .local v0, "status":I
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v13, v0, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_b4
    .catchall {:try_start_82 .. :try_end_b4} :catchall_1b8

    .line 521
    .end local v0  # "status":I
    :cond_b4
    :try_start_b4
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v13, 0x1f4

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_1b8

    .line 523
    goto :goto_c1

    .line 522
    :catch_c0
    move-exception v0

    .line 524
    .end local v10  # "delay":J
    :goto_c1
    goto :goto_82

    .line 525
    :cond_c2
    :goto_c2
    :try_start_c2
    monitor-exit v8
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_1b8

    .line 526
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_cd

    .line 527
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x2

    invoke-direct {v0, v5, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 529
    :cond_cd
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 530
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 532
    const-string v0, "ShutdownThread"

    const-string v5, "Shutting down activity manager..."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "ShutdownActivityManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 534
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 536
    nop

    .line 537
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 538
    .local v5, "am":Landroid/app/IActivityManager;
    if-eqz v5, :cond_fa

    .line 540
    const/16 v0, 0x2710

    :try_start_f5
    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_f8} :catch_f9

    .line 542
    goto :goto_fa

    .line 541
    :catch_f9
    move-exception v0

    .line 544
    :cond_fa
    :goto_fa
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_104

    .line 545
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v6, 0x4

    invoke-direct {v0, v6, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 547
    :cond_104
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 548
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 550
    const-string v0, "ShutdownThread"

    const-string v6, "Shutting down package manager..."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "ShutdownPackageManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 554
    nop

    .line 555
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 556
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_12c

    .line 557
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 559
    :cond_12c
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_136

    .line 560
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v8, 0x6

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 562
    :cond_136
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 563
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 566
    const-string v6, "ShutdownRadios"

    invoke-virtual {v2, v6}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 567
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 568
    const/16 v6, 0x2ee0

    invoke-direct {v1, v6}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 569
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_158

    .line 570
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v8, 0x12

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 572
    :cond_158
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 573
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 575
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_16e

    .line 576
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v8, 0x14

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 583
    :cond_16e
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_18c

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_18c

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_18c

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isChinaMobileF()Z

    move-result v6

    if-eqz v6, :cond_18f

    .line 584
    :cond_18c
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 588
    :cond_18f
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    if-eqz v6, :cond_19f

    .line 589
    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;->dismiss()V

    .line 590
    sput-object v9, Lcom/android/server/power/ShutdownThread;->sod:Lcom/android/server/power/ShutdownThread$ShutdownOrientationDialog;

    .line 591
    const-string v6, "ShutdownThread"

    const-string v8, "***sod.dismiss() called!"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_19f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 595
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 596
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/android/server/power/ShutdownThread;->saveMetrics(ZLjava/lang/String;)V

    .line 598
    iget-object v6, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 599
    return-void

    .line 525
    .end local v0  # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v5  # "am":Landroid/app/IActivityManager;
    :catchall_1b8
    move-exception v0

    :try_start_1b9
    monitor-exit v8
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1b8

    throw v0
.end method
