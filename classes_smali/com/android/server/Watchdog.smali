.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field public static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 86
    const-string v0, "/system/bin/audioserver"

    const-string v1, "/system/bin/cameraserver"

    const-string v2, "/system/bin/drmserver"

    const-string v3, "/system/bin/mediadrmserver"

    const-string v4, "/system/bin/mediaserver"

    const-string v5, "/system/bin/sdcard"

    const-string v6, "/system/bin/surfaceflinger"

    const-string v7, "/system/bin/vold"

    const-string v8, "media.extractor"

    const-string v9, "media.metrics"

    const-string v10, "media.codec"

    const-string v11, "media.swcodec"

    const-string v12, "com.android.bluetooth"

    const-string v13, "/system/bin/statsd"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 103
    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v4, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v5, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v6, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v7, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v8, "android.hardware.health@2.0::IHealth"

    const-string v9, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v10, "android.hardware.media.omx@1.0::IOmx"

    const-string v11, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v12, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v13, "android.hardware.sensors@1.0::ISensors"

    const-string v14, "android.hardware.vr@1.0::IVr"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 301
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 309
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "foreground thread"

    const-wide/32 v5, 0xea60

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 311
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v4, "main thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "i/o thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "surface animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 335
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 340
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 470
    const/4 v1, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 472
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 476
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doSysRq(C)V
    .registers 4

    .line 679
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 681
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 684
    goto :goto_16

    .line 682
    :catch_e
    move-exception p1

    .line 683
    const-string v0, "Watchdog"

    const-string v1, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    :goto_16
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 4

    .line 449
    nop

    .line 450
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 451
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 452
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 454
    :cond_1e
    return v1
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 460
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 461
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 462
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 465
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 293
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 294
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 297
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getInterestingHalPids()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 481
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 482
    nop

    .line 483
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 484
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 485
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 486
    iget v3, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    .line 487
    goto :goto_12

    .line 490
    :cond_24
    sget-object v3, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v4, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 491
    goto :goto_12

    .line 494
    :cond_2f
    iget v2, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    goto :goto_12

    .line 496
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v0

    .line 497
    :catch_3f
    move-exception v0

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static getInterestingNativePids()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 503
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 505
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 506
    if-eqz v1, :cond_25

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 508
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 509
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 513
    :cond_25
    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3

    .line 375
    monitor-enter p0

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 377
    monitor-exit p0

    .line 378
    return-void

    .line 377
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4

    .line 381
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 382
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12

    .line 385
    monitor-enter p0

    .line 386
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 387
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    monitor-exit p0

    .line 389
    return-void

    .line 388
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 348
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 349
    new-instance p2, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6

    .line 405
    monitor-enter p0

    .line 406
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 408
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    .line 410
    :cond_24
    goto :goto_7

    .line 411
    :cond_25
    monitor-exit p0

    .line 412
    return-void

    .line 411
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4

    .line 355
    monitor-enter p0

    .line 356
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 357
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 359
    :cond_b
    monitor-exit p0

    .line 360
    return-void

    .line 359
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 4

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 443
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 445
    goto :goto_25

    .line 444
    :catch_24
    move-exception p1

    .line 446
    :goto_25
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6

    .line 427
    monitor-enter p0

    .line 428
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 429
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 430
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 432
    :cond_24
    goto :goto_7

    .line 433
    :cond_25
    monitor-exit p0

    .line 434
    return-void

    .line 433
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public run()V
    .registers 12

    .line 518
    const/4 v0, 0x0

    move v1, v0

    .line 523
    :goto_2
    nop

    .line 524
    monitor-enter p0

    .line 525
    nop

    .line 528
    move v2, v0

    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 529
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 530
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 533
    :cond_1c
    nop

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    move v8, v0

    move-wide v6, v4

    .line 542
    :goto_25
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    const/4 v10, 0x2

    if-lez v9, :cond_4c

    .line 543
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v9
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_16c

    if-eqz v9, :cond_33

    .line 544
    move v8, v10

    .line 547
    :cond_33
    :try_start_33
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_16c

    .line 551
    goto :goto_3d

    .line 549
    :catch_37
    move-exception v6

    .line 550
    :try_start_38
    const-string v7, "Watchdog"

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    :goto_3d
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 553
    move v8, v10

    .line 555
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long v6, v4, v6

    goto :goto_25

    .line 558
    :cond_4c
    nop

    .line 559
    iget-object v2, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    if-eqz v2, :cond_58

    .line 560
    iget-object v2, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v2

    goto :goto_59

    .line 559
    :cond_58
    move v2, v0

    .line 563
    :goto_59
    const/4 v3, 0x0

    if-nez v2, :cond_9b

    .line 564
    invoke-direct {p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v2

    .line 565
    if-nez v2, :cond_66

    .line 567
    nop

    .line 568
    monitor-exit p0

    move v1, v0

    goto :goto_2

    .line 569
    :cond_66
    const/4 v4, 0x1

    if-ne v2, v4, :cond_6b

    .line 571
    monitor-exit p0

    goto :goto_2

    .line 572
    :cond_6b
    if-ne v2, v10, :cond_92

    .line 573
    if-nez v1, :cond_8f

    .line 574
    const-string v1, "Watchdog"

    const-string v2, "WAITED_HALF"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    nop

    .line 580
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v2

    .line 579
    invoke-static {v1, v3, v3, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    .line 581
    move v1, v4

    .line 583
    :cond_8f
    monitor-exit p0

    goto/16 :goto_2

    .line 587
    :cond_92
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 588
    invoke-direct {p0, v1}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 589
    goto :goto_a1

    .line 590
    :cond_9b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 591
    const-string v2, "Open FD high water mark reached"

    .line 593
    :goto_a1
    iget-boolean v4, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 594
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_38 .. :try_end_a4} :catchall_16c

    .line 599
    const/16 v5, 0xaf2

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 601
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget v6, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v6, :cond_c4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_c4
    nop

    .line 606
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v6

    .line 605
    invoke-static {v5, v3, v3, v6}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v3

    .line 610
    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 613
    const/16 v5, 0x77

    invoke-direct {p0, v5}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 614
    const/16 v5, 0x6c

    invoke-direct {p0, v5}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 619
    new-instance v5, Lcom/android/server/Watchdog$1;

    const-string/jumbo v6, "watchdogWriteToDropbox"

    invoke-direct {v5, p0, v6, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 631
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 633
    const-wide/16 v6, 0x7d0

    :try_start_e9
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_ec
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_ec} :catch_ed

    .line 634
    :goto_ec
    goto :goto_ef

    :catch_ed
    move-exception v3

    goto :goto_ec

    .line 637
    :goto_ef
    monitor-enter p0

    .line 638
    :try_start_f0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 639
    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_169

    .line 640
    if-eqz v3, :cond_114

    .line 641
    const-string v5, "Watchdog"

    const-string v6, "Reporting stuck state to activity controller"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :try_start_fc
    const-string v5, "Service dumps disabled due to hung system process."

    invoke-static {v5}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 645
    invoke-interface {v3, v2}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v3

    .line 646
    if-ltz v3, :cond_112

    .line 647
    const-string v3, "Watchdog"

    const-string v5, "Activity controller requested to coninue to wait"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_10e} :catch_113

    .line 648
    nop

    .line 649
    move v1, v0

    goto/16 :goto_2

    .line 652
    :cond_112
    goto :goto_114

    .line 651
    :catch_113
    move-exception v3

    .line 656
    :cond_114
    :goto_114
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 657
    move v8, v10

    .line 659
    :cond_11b
    if-lt v8, v10, :cond_125

    .line 660
    const-string v1, "Watchdog"

    const-string v2, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    .line 661
    :cond_125
    if-lez v8, :cond_12f

    .line 662
    const-string v1, "Watchdog"

    const-string v2, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    .line 663
    :cond_12f
    if-nez v4, :cond_139

    .line 664
    const-string v1, "Watchdog"

    const-string v2, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    .line 666
    :cond_139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Watchdog"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {v1}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 668
    const-string v1, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 670
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 673
    :goto_165
    nop

    .line 674
    move v1, v0

    goto/16 :goto_2

    .line 639
    :catchall_169
    move-exception v0

    :try_start_16a
    monitor-exit p0
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    throw v0

    .line 594
    :catchall_16c
    move-exception v0

    :try_start_16d
    monitor-exit p0
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    throw v0
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 2

    .line 363
    monitor-enter p0

    .line 364
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 365
    monitor-exit p0

    .line 366
    return-void

    .line 365
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setAllowRestart(Z)V
    .registers 2

    .line 369
    monitor-enter p0

    .line 370
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 371
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method
