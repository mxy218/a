.class Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 3379
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 3380
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3381
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 3385
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto/16 :goto_86

    .line 3396
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3401
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 3402
    :try_start_15
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 3404
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$5100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3405
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3406
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    .line 3413
    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 3414
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3416
    :cond_3f
    goto :goto_28

    .line 3418
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/StorageManagerService$ObbState;

    .line 3422
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->access$5200(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_7b

    .line 3425
    :try_start_55
    iget-object v3, v2, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v4, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v3, v4, v5, v1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5e} :catch_5f
    .catchall {:try_start_55 .. :try_end_5e} :catchall_7b

    .line 3430
    goto :goto_78

    .line 3427
    :catch_5f
    move-exception v3

    .line 3428
    :try_start_60
    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :goto_78
    goto :goto_44

    .line 3432
    :cond_79
    monitor-exit v0

    .line 3433
    goto :goto_86

    .line 3432
    :catchall_7b
    move-exception p1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_60 .. :try_end_7d} :catchall_7b

    throw p1

    .line 3387
    :cond_7e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3392
    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    .line 3393
    nop

    .line 3436
    :goto_86
    return-void
.end method
