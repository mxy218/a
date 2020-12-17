.class Lcom/android/server/sence/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"


# static fields
.field private static final PROCESS_BROADCAST_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SceneManager"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mPendingScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneService:Lcom/android/server/sence/SceneService;


# direct methods
.method constructor <init>(Lcom/android/server/sence/SceneService;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/sence/SceneService;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sence/SceneManager;->mSceneService:Lcom/android/server/sence/SceneService;

    .line 31
    iput-object p1, p0, Lcom/android/server/sence/SceneManager;->mSceneService:Lcom/android/server/sence/SceneService;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "broadcast"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sence/SceneManager;->mLooper:Landroid/os/Looper;

    .line 35
    new-instance v1, Lcom/android/server/sence/SceneManager$1;

    iget-object v2, p0, Lcom/android/server/sence/SceneManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/sence/SceneManager$1;-><init>(Lcom/android/server/sence/SceneManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sence/SceneManager;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sence/SceneManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/sence/SceneManager;

    .line 22
    invoke-direct {p0}, Lcom/android/server/sence/SceneManager;->processBroadcast()V

    return-void
.end method

.method private notifyReceivers()V
    .registers 6

    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/sence/SceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 65
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 66
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 67
    sget-boolean v3, Landroid/scene/SceneUtils;->DEBUG:Z

    if-eqz v3, :cond_2d

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify scene at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SceneManager"

    invoke-static {v4, v3}, Landroid/scene/SceneUtils;->logSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2d
    return-void
.end method

.method private processBroadcast()V
    .registers 11

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d1

    .line 76
    iget-object v0, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_b
    iget-object v1, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/scene/Scene;

    .line 78
    .local v1, "scene":Landroid/scene/Scene;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_ce

    .line 79
    invoke-virtual {v1}, Landroid/scene/Scene;->getSceneId()I

    move-result v0

    if-gez v0, :cond_24

    .line 80
    const-string v0, "SceneManager"

    const-string/jumbo v2, "scene id can\'t be less 0"

    invoke-static {v0, v2}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 84
    :cond_24
    iget-object v0, p0, Lcom/android/server/sence/SceneManager;->mSceneService:Lcom/android/server/sence/SceneService;

    invoke-virtual {v1}, Landroid/scene/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/sence/SceneService;->getDispatchers(Ljava/lang/Integer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 86
    .local v0, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/sence/SceneDispatcherClient;>;"
    if-nez v0, :cond_35

    goto :goto_0

    .line 87
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatcher client size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SceneManager"

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sence/SceneDispatcherClient;

    .line 90
    .local v3, "rl":Lcom/android/server/sence/SceneDispatcherClient;
    if-eqz v3, :cond_cb

    iget-boolean v4, v3, Lcom/android/server/sence/SceneDispatcherClient;->active:Z

    if-eqz v4, :cond_cb

    .line 92
    const-wide/16 v4, 0x0

    .line 93
    .local v4, "time":J
    :try_start_67
    sget-boolean v6, Landroid/scene/SceneUtils;->DEBUG:Z

    if-eqz v6, :cond_8b

    .line 94
    const-string v6, "SceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/scene/SceneUtils;->logSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v4, v6

    .line 97
    :cond_8b
    iget-object v6, v3, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    invoke-interface {v6, v1}, Landroid/scene/ISceneDispatcher;->onSceneReceived(Landroid/scene/Scene;)V

    .line 99
    const-string v6, "SceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSceneReceiver cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_b2} :catch_b3

    .line 103
    .end local v4  # "time":J
    goto :goto_cb

    .line 101
    :catch_b3
    move-exception v4

    .line 102
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSceneReceiver error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SceneManager"

    invoke-static {v6, v5}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v3  # "rl":Lcom/android/server/sence/SceneDispatcherClient;
    .end local v4  # "e":Landroid/os/RemoteException;
    :cond_cb
    :goto_cb
    goto :goto_53

    .line 106
    .end local v0  # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/sence/SceneDispatcherClient;>;"
    .end local v1  # "scene":Landroid/scene/Scene;
    :cond_cc
    goto/16 :goto_0

    .line 78
    :catchall_ce
    move-exception v1

    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v1

    .line 107
    :cond_d1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "j":I
    const-string v1, "Pending Scene:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/scene/Scene;

    .line 114
    .local v3, "scene":Landroid/scene/Scene;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    .end local v0  # "j":I
    .local v5, "j":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, p1}, Landroid/scene/Scene;->dump(Ljava/io/PrintWriter;)V

    .line 116
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .end local v3  # "scene":Landroid/scene/Scene;
    move v0, v5

    goto :goto_11

    .line 118
    .end local v5  # "j":I
    .restart local v0  # "j":I
    :cond_3b
    return-void
.end method

.method enqueueScene(Landroid/scene/Scene;)V
    .registers 4
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 56
    iget-object v0, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sence/SceneManager;->mPendingScenes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 59
    invoke-direct {p0}, Lcom/android/server/sence/SceneManager;->notifyReceivers()V

    .line 60
    return-void

    .line 58
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/server/sence/SceneManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method
