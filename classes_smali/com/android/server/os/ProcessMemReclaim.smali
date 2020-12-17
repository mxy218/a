.class public Lcom/android/server/os/ProcessMemReclaim;
.super Lcom/android/server/os/Strategy;
.source "ProcessMemReclaim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/ProcessMemReclaim$ReclaimState;
    }
.end annotation


# static fields
.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_mem_config.conf"

.field private static final MSG_OPEN_IMS_DR:I = 0x110

.field private static final MSG_RECLAIM_PR:I = 0x111

.field private static final TAG:Ljava/lang/String; = "ProcessMemReclaim"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_mem_config.conf"

.field private static mFd:I

.field private static mInitReclaimCount:I

.field private static mLastPid:I

.field private static mReclaimCount:I

.field private static mReclaimDelay:J

.field private static mReclaimInterval:J


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mReclaimState:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

.field private mSceneReceiver:Landroid/scene/SceneReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    const-string/jumbo v0, "sys.process_reclaim_count"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/os/ProcessMemReclaim;->mInitReclaimCount:I

    .line 32
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mInitReclaimCount:I

    sput v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimCount:I

    .line 33
    const-string/jumbo v0, "sys.process_reclaim_delay"

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimDelay:J

    .line 34
    const-string/jumbo v0, "sys.process_reclaim_interval"

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimInterval:J

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/android/server/os/ProcessMemReclaim;->mFd:I

    return-void
.end method

.method constructor <init>()V
    .registers 6

    .line 84
    invoke-direct {p0}, Lcom/android/server/os/Strategy;-><init>()V

    .line 85
    const-string v0, "ProcessMemReclaim"

    const-string/jumbo v1, "init ProcessMemReclaim！"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    const-string v2, "ProcessMemReclaimConfig"

    const-string v3, "/data/system/perf_intelligent_mem_config.conf"

    const-string v4, "/system/etc/perf_intelligent_mem_config.conf"

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/server/os/ProcessMemReclaim;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 88
    const-string/jumbo v1, "load config file failed!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/os/ProcessMemReclaim;->init()V

    .line 92
    new-instance v0, Lcom/android/server/os/ProcessMemReclaim$2;

    invoke-direct {v0, p0}, Lcom/android/server/os/ProcessMemReclaim$2;-><init>(Lcom/android/server/os/ProcessMemReclaim;)V

    iput-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mSceneReceiver:Landroid/scene/SceneReceiver;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x1000005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x1000004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 121
    .local v0, "scenes":[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v1, v0}, Landroid/scene/SceneReceiver;->addScenes([Ljava/lang/Integer;)V

    .line 122
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/os/ProcessMemReclaim;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v1, v2}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/ProcessMemReclaim;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/os/ProcessMemReclaim;

    .line 23
    invoke-direct {p0}, Lcom/android/server/os/ProcessMemReclaim;->initImsDriver()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 23
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimCount:I

    return v0
.end method

.method static synthetic access$1000()J
    .registers 2

    .line 23
    sget-wide v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimDelay:J

    return-wide v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 23
    sput p0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimCount:I

    return p0
.end method

.method static synthetic access$110()I
    .registers 2

    .line 23
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/server/os/ProcessMemReclaim;->mReclaimCount:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 23
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mFd:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/os/ProcessMemReclaim;II)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/os/ProcessMemReclaim;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/server/os/ProcessMemReclaim;->nativeProcessReclaim(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()J
    .registers 2

    .line 23
    sget-wide v0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimInterval:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/os/ProcessMemReclaim;IJ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/os/ProcessMemReclaim;
    .param p1, "x1"  # I
    .param p2, "x2"  # J

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/os/ProcessMemReclaim;->setReclaimProcess(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/os/ProcessMemReclaim;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/ProcessMemReclaim;

    .line 23
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimState:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/os/ProcessMemReclaim;Lcom/android/server/os/ProcessMemReclaim$ReclaimState;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/ProcessMemReclaim;
    .param p1, "x1"  # Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 23
    iput-object p1, p0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimState:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    return-object p1
.end method

.method static synthetic access$700()I
    .registers 1

    .line 23
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mInitReclaimCount:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .line 23
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mLastPid:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 23
    sput p0, Lcom/android/server/os/ProcessMemReclaim;->mLastPid:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/os/ProcessMemReclaim;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/ProcessMemReclaim;

    .line 23
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "process_memory_reclaim"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    sget-object v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->UNRECLAIM:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    iput-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mReclaimState:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 56
    new-instance v0, Lcom/android/server/os/ProcessMemReclaim$1;

    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/os/ProcessMemReclaim$1;-><init>(Lcom/android/server/os/ProcessMemReclaim;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method

.method private initImsDriver()V
    .registers 2

    .line 137
    const-string v0, "/proc/ims/ims_uid"

    invoke-direct {p0, v0}, Lcom/android/server/os/ProcessMemReclaim;->nativeOpen(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/os/ProcessMemReclaim;->mFd:I

    .line 138
    return-void
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeOpen(Ljava/lang/String;)I
.end method

.method private native nativeProcessReclaim(II)I
.end method

.method private setReclaimProcess(IJ)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "delay"  # J

    .line 126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 127
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x111

    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 129
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_17

    .line 130
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1c

    .line 132
    :cond_17
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    :goto_1c
    return-void
.end method


# virtual methods
.method public disableStrategy()Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 155
    return v1

    .line 157
    :cond_a
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/os/ProcessMemReclaim;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->unregisterSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    :cond_1b
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_24

    .line 163
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 164
    iput-object v2, p0, Lcom/android/server/os/ProcessMemReclaim;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    :cond_24
    sget v0, Lcom/android/server/os/ProcessMemReclaim;->mFd:I

    invoke-direct {p0, v0}, Lcom/android/server/os/ProcessMemReclaim;->nativeClose(I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public enableStrategy()Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_a
    invoke-direct {p0}, Lcom/android/server/os/ProcessMemReclaim;->init()V

    .line 146
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    return v1
.end method
