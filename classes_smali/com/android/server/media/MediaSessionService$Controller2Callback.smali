.class Lcom/android/server/media/MediaSessionService$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller2Callback"
.end annotation


# instance fields
.field private final mToken:Landroid/media/Session2Token;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/Session2Token;)V
    .registers 3

    .line 2275
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    .line 2276
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    .line 2277
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 5

    .line 2281
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2282
    :try_start_7
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-virtual {p2}, Landroid/media/Session2Token;->getUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 2283
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2284
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2}, Lcom/android/server/media/MediaSessionService;->pushSession2TokensChangedLocked(I)V

    .line 2285
    monitor-exit p1

    .line 2286
    return-void

    .line 2285
    :catchall_29
    move-exception p2

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p2
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .registers 5

    .line 2290
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2291
    :try_start_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-virtual {v0}, Landroid/media/Session2Token;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2292
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2293
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->pushSession2TokensChangedLocked(I)V

    .line 2294
    monitor-exit p1

    .line 2295
    return-void

    .line 2294
    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0
.end method
