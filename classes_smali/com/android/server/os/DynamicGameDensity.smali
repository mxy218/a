.class public Lcom/android/server/os/DynamicGameDensity;
.super Lcom/android/server/os/Strategy;
.source "DynamicGameDensity.java"


# static fields
.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_game_config.conf"

.field private static final TAG:Ljava/lang/String; = "DynamicGameDensity"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_game_config.conf"


# instance fields
.field private mInitialDensity:I

.field private mInitialSize:Landroid/graphics/Point;

.field private mLastGame:Ljava/lang/String;

.field private mSceneReceiver:Landroid/scene/SceneReceiver;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 27
    invoke-direct {p0}, Lcom/android/server/os/Strategy;-><init>()V

    .line 28
    const-string v0, "DynamicGameDensity"

    const-string/jumbo v1, "initial dynamic game density strategy!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "DynamicGameConfig"

    const-string v2, "/data/system/perf_intelligent_game_config.conf"

    const-string v3, "/system/etc/perf_intelligent_game_config.conf"

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/os/DynamicGameDensity;->loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 31
    const-string/jumbo v1, "load config file failed!"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 34
    :cond_1f
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mWm:Landroid/view/IWindowManager;

    .line 36
    new-instance v0, Lcom/android/server/os/DynamicGameDensity$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/DynamicGameDensity$1;-><init>(Lcom/android/server/os/DynamicGameDensity;)V

    iput-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mSceneReceiver:Landroid/scene/SceneReceiver;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x1000002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1000003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 91
    .local v0, "scenes":[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/os/DynamicGameDensity;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v1, v0}, Landroid/scene/SceneReceiver;->addScenes([Ljava/lang/Integer;)V

    .line 92
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/os/DynamicGameDensity;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v1, v2}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/DynamicGameDensity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;

    .line 15
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mLastGame:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/os/DynamicGameDensity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;
    .param p1, "x1"  # Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/android/server/os/DynamicGameDensity;->mLastGame:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;

    .line 15
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mInitialSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/os/DynamicGameDensity;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;
    .param p1, "x1"  # Landroid/graphics/Point;

    .line 15
    iput-object p1, p0, Lcom/android/server/os/DynamicGameDensity;->mInitialSize:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;

    .line 15
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mWm:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/os/DynamicGameDensity;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;

    .line 15
    iget v0, p0, Lcom/android/server/os/DynamicGameDensity;->mInitialDensity:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/os/DynamicGameDensity;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicGameDensity;
    .param p1, "x1"  # I

    .line 15
    iput p1, p0, Lcom/android/server/os/DynamicGameDensity;->mInitialDensity:I

    return p1
.end method


# virtual methods
.method public disableStrategy()Z
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 109
    return v1

    .line 111
    :cond_a
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/os/DynamicGameDensity;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v2}, Landroid/scene/SceneClient;->unregisterSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public enableStrategy()Z
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_a
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/os/DynamicGameDensity;->mSceneReceiver:Landroid/scene/SceneReceiver;

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->registerSceneReceiver(Landroid/scene/SceneReceiver;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    return v1
.end method
