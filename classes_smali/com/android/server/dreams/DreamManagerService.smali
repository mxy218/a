.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$LocalService;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamCanDoze:Z

.field private mCurrentDreamDozeScreenBrightness:I

.field private mCurrentDreamDozeScreenState:I

.field private mCurrentDreamIsDozing:Z

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamIsWaking:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mDozeEnabledObserver:Landroid/database/ContentObserver;

.field private final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mForceAmbientDisplayEnabled:Z

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 462
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 473
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    .line 676
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    .line 96
    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 98
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 100
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v0, 0x40

    const-string v1, "DreamManagerService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    new-instance p1, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 102
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->forceAmbientDisplayEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 429
    return-void

    .line 426
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .registers 4

    .line 272
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 273
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_f

    :cond_e
    move-object p1, v0

    :goto_f
    return-object p1

    .line 276
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p1

    .line 277
    if-eqz p1, :cond_1c

    array-length p2, p1

    if-eqz p2, :cond_1c

    const/4 p2, 0x0

    aget-object v0, p1, p2

    :cond_1c
    return-object v0
.end method

.method private cleanupDreamLocked()V
    .registers 3

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 410
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 412
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 413
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 414
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 415
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v1, :cond_19

    .line 416
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 417
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 419
    :cond_19
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 421
    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .registers 4

    .line 451
    if-nez p0, :cond_4

    .line 452
    const/4 p0, 0x0

    return-object p0

    .line 454
    :cond_4
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 455
    array-length v0, p0

    new-array v0, v0, [Landroid/content/ComponentName;

    .line 456
    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 457
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, v0, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 459
    :cond_1c
    return-object v0
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    if-eqz p0, :cond_22

    .line 440
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 442
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    :cond_18
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 447
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 9

    .line 133
    const-string v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mForceAmbientDisplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamDozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 144
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamDozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDozeComponent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 149
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    const-string v4, ""

    const-wide/16 v5, 0xc8

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 155
    return-void
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_a

    .line 197
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 199
    :cond_a
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method private forceAmbientDisplayEnabledInternal(Z)V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_default_component"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 334
    if-nez p1, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_15
    return-object p1
.end method

.method private getDozeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 338
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getDozeComponent(I)Landroid/content/ComponentName;
    .registers 3

    .line 342
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->enabled(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    .line 345
    :cond_d
    const/4 p1, 0x0

    return-object p1

    .line 343
    :cond_f
    :goto_f
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 8

    .line 297
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    if-eqz v0, :cond_2a

    .line 305
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    .line 306
    invoke-direct {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 307
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 313
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 315
    if-eqz p1, :cond_4f

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falling back to default dream "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DreamManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ComponentName;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ComponentName;

    return-object p1
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 352
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_13

    .line 354
    :catch_10
    move-exception p1

    .line 355
    return-object v0

    .line 353
    :cond_12
    nop

    .line 352
    :goto_13
    return-object v0
.end method

.method private isDreamingInternal()Z
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 161
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private requestAwakenInternal()V
    .registers 5

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 179
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 180
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    .line 181
    return-void
.end method

.method private requestDreamInternal()V
    .registers 5

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 171
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    .line 172
    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    .line 324
    const-string/jumbo v1, "screensaver_components"

    invoke-static {v0, v1, p2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 328
    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_20

    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz p1, :cond_20

    .line 234
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 235
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 236
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 238
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez p1, :cond_20

    .line 239
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 240
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 243
    :cond_20
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private startDreamInternal(Z)V
    .registers 6

    .line 209
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_16

    .line 212
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v1, v3, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    .line 214
    monitor-exit v2

    goto :goto_16

    :catchall_13
    move-exception p1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p1

    .line 216
    :cond_16
    :goto_16
    return-void
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .registers 16

    .line 361
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DreamManagerService"

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-ne v0, p2, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-ne v0, p3, :cond_1c

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, p4, :cond_1c

    .line 365
    const-string p1, "Already in target dream."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 369
    :cond_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 371
    const-string v2, "Entering dreamland."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 374
    iput-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 375
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 376
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 377
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 378
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 380
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 381
    const-string/jumbo v2, "startDream"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v2, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_19

    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz p1, :cond_19

    .line 253
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 254
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 255
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 258
    :cond_19
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private stopDreamInternal(Z)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 221
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private stopDreamLocked(Z)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_28

    .line 388
    const-string v0, "DreamManagerService"

    if-eqz p1, :cond_11

    .line 389
    const-string v1, "Leaving dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    goto :goto_1e

    .line 391
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-eqz v1, :cond_16

    .line 392
    return-void

    .line 394
    :cond_16
    const-string v1, "Gently waking up from dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 398
    :goto_1e
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 406
    :cond_28
    return-void
.end method

.method private testDreamInternal(Landroid/content/ComponentName;I)V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private validateDream(Landroid/content/ComponentName;)Z
    .registers 8

    .line 281
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 282
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 283
    const-string v2, "Dream "

    const-string v3, "DreamManagerService"

    if-nez v1, :cond_26

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0

    .line 286
    :cond_26
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_58

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 287
    const-string v4, "android.permission.BIND_DREAM_SERVICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not available because its manifest is missing the "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission on the dream service declaration."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v0

    .line 293
    :cond_58
    const/4 p1, 0x1

    return p1
.end method

.method private writePulseGestureEnabled()V
    .registers 3

    .line 432
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 433
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v0

    .line 434
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setPulseGestureEnabled(Z)V

    .line 435
    return-void
.end method


# virtual methods
.method public synthetic lambda$startDreamLocked$0$DreamManagerService(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .registers 14

    .line 383
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 112
    const/16 v0, 0x258

    if-ne p1, v0, :cond_37

    .line 113
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_d

    .line 114
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 116
    :cond_d
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 126
    const-string v0, "doze_pulse_on_double_tap"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 125
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 128
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 130
    :cond_37
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 106
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V

    const-string v2, "dreams"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
