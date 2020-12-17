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

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 98
    const-string v0, "/system/bin/keystore"

    const-string v1, "/system/bin/gatekeeperd"

    const-string v2, "/system/bin/audioserver"

    const-string v3, "/system/bin/cameraserver"

    const-string v4, "/system/bin/drmserver"

    const-string v5, "/system/bin/mediadrmserver"

    const-string v6, "/system/bin/mediaserver"

    const-string v7, "/system/bin/sdcard"

    const-string v8, "/system/bin/surfaceflinger"

    const-string v9, "/system/bin/vold"

    const-string/jumbo v10, "media.extractor"

    const-string/jumbo v11, "media.metrics"

    const-string/jumbo v12, "media.codec"

    const-string/jumbo v13, "media.swcodec"

    const-string v14, "com.android.bluetooth"

    const-string v15, "/system/bin/statsd"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 119
    const-string v1, "android.hardware.keymaster@3.0::IKeymasterDevice"

    const-string v2, "android.hardware.keymaster@4.0::IKeymasterDevice"

    const-string v3, "android.hardware.gatekeeper@1.0::IGatekeeper"

    const-string v4, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v5, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v6, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v7, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v8, "android.hardware.graphics.allocator@3.0::IAllocator"

    const-string v9, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v10, "android.hardware.health@2.0::IHealth"

    const-string v11, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v12, "android.hardware.media.omx@1.0::IOmx"

    const-string v13, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v14, "android.hardware.sensors@2.0::ISensors"

    const-string v15, "android.hardware.vr@1.0::IVr"

    const-string v16, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 328
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 336
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    const-wide/32 v6, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 338
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "main thread"

    const-wide/32 v5, 0xea60

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "i/o thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "surface animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 362
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 367
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p1, "writeTo"  # Ljava/io/File;
    .param p2, "copyFrom"  # Ljava/io/File;

    .line 795
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 796
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 797
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 800
    .local v2, "line":Ljava/lang/String;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_21

    .line 801
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 802
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_11

    .line 804
    :cond_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 805
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 809
    .end local v0  # "in":Ljava/io/BufferedReader;
    .end local v1  # "out":Ljava/io/FileWriter;
    .end local v2  # "line":Ljava/lang/String;
    goto :goto_33

    .line 806
    :catch_28
    move-exception v0

    .line 807
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 810
    .end local v0  # "e":Ljava/io/IOException;
    :goto_33
    return-void
.end method

.method private binderStateRead()V
    .registers 6

    .line 814
    const-string v0, "Watchdog"

    :try_start_2
    const-string v1, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/kernel/debug/binder/state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 817
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/anr/BinderTraces_pid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 819
    .local v2, "out":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 822
    .local v3, "line":Ljava/lang/String;
    :goto_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_47

    .line 823
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 824
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(I)V

    goto :goto_37

    .line 826
    :cond_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 827
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4d} :catch_4e

    .line 830
    .end local v1  # "in":Ljava/io/BufferedReader;
    .end local v2  # "out":Ljava/io/FileWriter;
    .end local v3  # "line":Ljava/lang/String;
    goto :goto_54

    .line 828
    :catch_4e
    move-exception v1

    .line 829
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to collect state file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    .end local v1  # "e":Ljava/io/IOException;
    :goto_54
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

    .line 496
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 497
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 499
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 503
    .end local v1  # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .registers 5
    .param p1, "c"  # C

    .line 785
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 787
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 790
    .end local v0  # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_16

    .line 788
    :catch_e
    move-exception v0

    .line 789
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    .end local v0  # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 478
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 479
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 477
    .end local v2  # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 481
    .end local v1  # "i":I
    :cond_1d
    return v0
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

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 487
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 488
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 489
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v2  # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 492
    .end local v1  # "i":I
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 320
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 321
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 324
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getInterestingHalPids()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 508
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 509
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 510
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 512
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 513
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    .line 514
    goto :goto_12

    .line 517
    :cond_24
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 518
    goto :goto_12

    .line 521
    :cond_2f
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    nop

    .end local v4  # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_12

    .line 523
    :cond_3a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3f} :catch_40

    return-object v3

    .line 524
    .end local v0  # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1  # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2  # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_40
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 532
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 533
    .local v1, "nativePids":[I
    if-eqz v1, :cond_25

    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 535
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 536
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v4  # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 540
    :cond_25
    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3
    .param p1, "monitor"  # Lcom/android/server/Watchdog$Monitor;

    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 404
    monitor-exit p0

    .line 405
    return-void

    .line 404
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"  # Landroid/os/Handler;

    .line 408
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 409
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"  # Landroid/os/Handler;
    .param p2, "timeoutMillis"  # J

    .line 412
    monitor-enter p0

    .line 413
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    nop

    .end local v4  # "name":Ljava/lang/String;
    monitor-exit p0

    .line 416
    return-void

    .line 415
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "activity"  # Lcom/android/server/am/ActivityManagerService;

    .line 375
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 376
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 379
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"  # Ljava/lang/String;

    .line 432
    monitor-enter p0

    .line 433
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

    .line 434
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 435
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    .line 437
    .end local v1  # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_24
    goto :goto_7

    .line 438
    :cond_25
    monitor-exit p0

    .line 439
    return-void

    .line 438
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "pid"  # I

    .line 382
    monitor-enter p0

    .line 383
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 384
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 386
    :cond_b
    monitor-exit p0

    .line 387
    return-void

    .line 386
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 470
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 472
    goto :goto_25

    .line 471
    :catch_24
    move-exception v1

    .line 473
    :goto_25
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"  # Ljava/lang/String;

    .line 454
    monitor-enter p0

    .line 455
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

    .line 456
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 457
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 459
    .end local v1  # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_24
    goto :goto_7

    .line 460
    :cond_25
    monitor-exit p0

    .line 461
    return-void

    .line 460
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public run()V
    .registers 24

    .line 545
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 546
    .local v0, "waitedHalf":Z
    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    .line 551
    .end local v0  # "waitedHalf":Z
    .local v2, "waitedHalf":Z
    .local v3, "initialStack":Ljava/io/File;
    :goto_6
    const/4 v4, 0x0

    .line 552
    .local v4, "debuggerWasConnected":I
    monitor-enter p0

    .line 553
    const-wide/16 v5, 0x7530

    .line 556
    .local v5, "timeout":J
    const/4 v7, 0x0

    move v0, v7

    .local v0, "i":I
    :goto_c
    :try_start_c
    iget-object v8, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2ca

    if-ge v0, v8, :cond_22

    .line 557
    :try_start_14
    iget-object v8, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/Watchdog$HandlerChecker;

    .line 558
    .local v8, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v8}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2cf

    .line 556
    .end local v8  # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 561
    .end local v0  # "i":I
    :cond_22
    if-lez v4, :cond_26

    .line 562
    add-int/lit8 v4, v4, -0x1

    .line 569
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2ca

    .line 570
    .local v8, "start":J
    :goto_2a
    const-wide/16 v10, 0x0

    cmp-long v0, v5, v10

    if-lez v0, :cond_56

    .line 571
    :try_start_30
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2cf

    if-eqz v0, :cond_38

    .line 572
    const/4 v0, 0x2

    move v4, v0

    .line 575
    :cond_38
    :try_start_38
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_2cf

    .line 579
    goto :goto_44

    .line 577
    :catch_3c
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 578
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3f
    const-string v10, "Watchdog"

    invoke-static {v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_44
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 581
    const/4 v0, 0x2

    move v4, v0

    .line 583
    :cond_4c
    const-wide/16 v10, 0x7530

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_2cf

    sub-long/2addr v12, v8

    sub-long v5, v10, v12

    goto :goto_2a

    .line 586
    :cond_56
    const/4 v0, 0x0

    .line 587
    .local v0, "fdLimitTriggered":Z
    :try_start_57
    iget-object v10, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_2ca

    if-eqz v10, :cond_62

    .line 588
    :try_start_5b
    iget-object v10, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v10}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v10

    move v0, v10

    .line 591
    :cond_62
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x40

    if-nez v0, :cond_d2

    .line 592
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v15

    .line 593
    .local v15, "waitState":I
    if-nez v15, :cond_72

    .line 595
    const/4 v2, 0x0

    .line 596
    monitor-exit p0

    goto :goto_6

    .line 597
    :cond_72
    if-ne v15, v11, :cond_76

    .line 599
    monitor-exit p0

    goto :goto_6

    .line 600
    :cond_76
    if-ne v15, v10, :cond_c1

    .line 601
    if-nez v2, :cond_be

    .line 602
    const-string v7, "Watchdog"

    const-string v10, "WAITED_HALF"

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WatchdogHalf:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 604
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 603
    invoke-static {v13, v14, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 607
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v7, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    nop

    .line 610
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v10

    .line 609
    invoke-static {v7, v12, v12, v10}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    move-object v3, v10

    .line 611
    const/4 v2, 0x1

    .line 612
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 614
    .end local v7  # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_be
    monitor-exit p0

    goto/16 :goto_6

    .line 618
    :cond_c1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v17, v16

    .line 619
    .local v17, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v10, v17

    .end local v17  # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v10, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    invoke-direct {v1, v10}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17
    :try_end_cd
    .catchall {:try_start_5b .. :try_end_cd} :catchall_2cf

    move-object/from16 v15, v17

    .line 620
    .local v15, "subject":Ljava/lang/String;
    move-object/from16 v17, v10

    goto :goto_db

    .line 621
    .end local v10  # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v15  # "subject":Ljava/lang/String;
    :cond_d2
    :try_start_d2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v17, v10

    .line 622
    .restart local v17  # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v10, "Open FD high water mark reached"

    move-object v15, v10

    .line 624
    .restart local v15  # "subject":Ljava/lang/String;
    :goto_db
    iget-boolean v10, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move v5, v10

    .line 625
    .end local v0  # "fdLimitTriggered":Z
    .end local v8  # "start":J
    .local v5, "allowRestart":Z
    monitor-exit p0
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_2ca

    .line 630
    const/16 v0, 0xaf2

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WatchdogHappend:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 632
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 635
    .local v6, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_11f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_11f
    nop

    .line 639
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    .line 638
    invoke-static {v6, v12, v12, v0}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v8

    .line 642
    .local v8, "finalStack":Ljava/io/File;
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_12f

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 648
    :cond_12f
    const-wide/16 v9, 0x1388

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "traces_SystemServer_WDT"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 652
    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_pid"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "newTracesPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v10, "/data/anr"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 655
    .local v10, "tracesDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 657
    .local v12, "watchdogTraces":Ljava/io/File;
    :try_start_16f
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 658
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x180

    const/4 v13, -0x1

    invoke-static {v0, v11, v13, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 664
    if-eqz v3, :cond_1bb

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 669
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v13, v13, v19

    .line 670
    .local v13, "age":J
    const-wide/32 v19, 0x493e0

    .line 671
    .local v19, "FIVE_MINUTES_IN_MILLIS":J
    const-wide/32 v21, 0x493e0

    cmp-long v0, v13, v21

    if-gez v0, :cond_1b3

    .line 672
    const-string v0, "Watchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First set of traces taken from "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {v1, v12, v3}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1ba

    .line 676
    :cond_1b3
    const-string v0, "Watchdog"

    const-string v7, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v13  # "age":J
    .end local v19  # "FIVE_MINUTES_IN_MILLIS":J
    :goto_1ba
    goto :goto_1c2

    .line 680
    :cond_1bb
    const-string v0, "Watchdog"

    const-string v7, "First set of traces are empty!"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_1c2
    if-eqz v8, :cond_1e2

    .line 684
    const-string v0, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Second set of traces taken from "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 684
    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-direct {v1, v12, v8}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1f1

    .line 688
    :cond_1e2
    const-string v0, "Watchdog"

    const-string v7, "Second set of traces are empty!"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f1

    .line 691
    :cond_1ea
    const-string v0, "Watchdog"

    const-string v7, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_1f1} :catch_1f2

    .line 697
    :goto_1f1
    goto :goto_1fa

    .line 693
    :catch_1f2
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Watchdog"

    const-string v11, "Exception creating Watchdog dump file:"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_1fa
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v7, "watchdogWriteToDropbox"

    invoke-direct {v0, v1, v7, v15, v8}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    move-object v7, v0

    .line 714
    .local v7, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 716
    const-wide/16 v13, 0x7d0

    :try_start_208
    invoke-virtual {v7, v13, v14}, Ljava/lang/Thread;->join(J)V
    :try_end_20b
    .catch Ljava/lang/InterruptedException; {:try_start_208 .. :try_end_20b} :catch_20c

    .line 717
    :goto_20b
    goto :goto_20e

    :catch_20c
    move-exception v0

    goto :goto_20b

    .line 722
    :goto_20e
    nop

    .line 723
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 724
    .local v11, "crashOnWatchdog":Z
    if-eqz v11, :cond_234

    .line 727
    const-string v0, "Watchdog"

    const-string v13, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/16 v0, 0x77

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 729
    const/16 v0, 0x6c

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 732
    const-wide/16 v13, 0xbb8

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 734
    const/16 v0, 0x63

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 736
    :cond_234
    const-wide/16 v13, 0x40

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 738
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string/jumbo v13, "system_server"

    move/from16 v18, v2

    const/4 v2, 0x1

    const/4 v14, 0x2

    .end local v2  # "waitedHalf":Z
    .local v18, "waitedHalf":Z
    invoke-static {v13, v0, v14, v2}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    .line 739
    const-wide/16 v13, 0x2710

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 743
    monitor-enter p0

    .line 744
    :try_start_24d
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v2, v0

    .line 745
    .local v2, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_2c7

    .line 746
    if-eqz v2, :cond_272

    .line 747
    const-string v0, "Watchdog"

    const-string v13, "Reporting stuck state to activity controller"

    invoke-static {v0, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :try_start_25a
    const-string v0, "Service dumps disabled due to hung system process."

    invoke-static {v0}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 751
    invoke-interface {v2, v15}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 752
    .local v0, "res":I
    if-ltz v0, :cond_270

    .line 753
    const-string v13, "Watchdog"

    const-string v14, "Activity controller requested to coninue to wait"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26c
    .catch Landroid/os/RemoteException; {:try_start_25a .. :try_end_26c} :catch_271

    .line 754
    const/4 v13, 0x0

    .line 755
    .end local v18  # "waitedHalf":Z
    .local v13, "waitedHalf":Z
    move v2, v13

    goto/16 :goto_6

    .line 758
    .end local v0  # "res":I
    .end local v13  # "waitedHalf":Z
    .restart local v18  # "waitedHalf":Z
    :cond_270
    goto :goto_272

    .line 757
    :catch_271
    move-exception v0

    .line 762
    :cond_272
    :goto_272
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_279

    .line 763
    const/4 v4, 0x2

    .line 765
    :cond_279
    const/4 v13, 0x2

    if-lt v4, v13, :cond_284

    .line 766
    const-string v0, "Watchdog"

    const-string v13, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c4

    .line 767
    :cond_284
    if-lez v4, :cond_28e

    .line 768
    const-string v0, "Watchdog"

    const-string v13, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c4

    .line 769
    :cond_28e
    if-nez v5, :cond_298

    .line 770
    const-string v0, "Watchdog"

    const-string v13, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c4

    .line 772
    :cond_298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Watchdog"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static/range {v17 .. v17}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 774
    const-string v0, "Watchdog"

    const-string v13, "*** GOODBYE!"

    invoke-static {v0, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 776
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 779
    :goto_2c4
    const/4 v2, 0x0

    .line 780
    .end local v4  # "debuggerWasConnected":I
    .end local v5  # "allowRestart":Z
    .end local v6  # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7  # "dropboxThread":Ljava/lang/Thread;
    .end local v8  # "finalStack":Ljava/io/File;
    .end local v9  # "newTracesPath":Ljava/lang/String;
    .end local v10  # "tracesDir":Ljava/io/File;
    .end local v11  # "crashOnWatchdog":Z
    .end local v12  # "watchdogTraces":Ljava/io/File;
    .end local v15  # "subject":Ljava/lang/String;
    .end local v17  # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v18  # "waitedHalf":Z
    .local v2, "waitedHalf":Z
    goto/16 :goto_6

    .line 745
    .end local v2  # "waitedHalf":Z
    .restart local v4  # "debuggerWasConnected":I
    .restart local v5  # "allowRestart":Z
    .restart local v6  # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7  # "dropboxThread":Ljava/lang/Thread;
    .restart local v8  # "finalStack":Ljava/io/File;
    .restart local v9  # "newTracesPath":Ljava/lang/String;
    .restart local v10  # "tracesDir":Ljava/io/File;
    .restart local v11  # "crashOnWatchdog":Z
    .restart local v12  # "watchdogTraces":Ljava/io/File;
    .restart local v15  # "subject":Ljava/lang/String;
    .restart local v17  # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v18  # "waitedHalf":Z
    :catchall_2c7
    move-exception v0

    :try_start_2c8
    monitor-exit p0
    :try_end_2c9
    .catchall {:try_start_2c8 .. :try_end_2c9} :catchall_2c7

    throw v0

    .line 625
    .end local v5  # "allowRestart":Z
    .end local v6  # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7  # "dropboxThread":Ljava/lang/Thread;
    .end local v8  # "finalStack":Ljava/io/File;
    .end local v9  # "newTracesPath":Ljava/lang/String;
    .end local v10  # "tracesDir":Ljava/io/File;
    .end local v11  # "crashOnWatchdog":Z
    .end local v12  # "watchdogTraces":Ljava/io/File;
    .end local v15  # "subject":Ljava/lang/String;
    .end local v17  # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v18  # "waitedHalf":Z
    .restart local v2  # "waitedHalf":Z
    :catchall_2ca
    move-exception v0

    move/from16 v18, v2

    :goto_2cd
    :try_start_2cd
    monitor-exit p0
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_2cf

    throw v0

    :catchall_2cf
    move-exception v0

    goto :goto_2cd
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"  # Landroid/app/IActivityController;

    .line 390
    monitor-enter p0

    .line 391
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 392
    monitor-exit p0

    .line 393
    return-void

    .line 392
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"  # Z

    .line 396
    monitor-enter p0

    .line 397
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 398
    monitor-exit p0

    .line 399
    return-void

    .line 398
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
