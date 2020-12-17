.class final Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;
.super Ljava/lang/Object;
.source "FlymeMoveWindowControllerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeMoveWindowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mClient:Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

.field private mPid:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;IILcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;)V
    .registers 5
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "client"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    .line 474
    iput-object p1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput p2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->mUid:I

    .line 476
    iput p3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->mPid:I

    .line 477
    iput-object p4, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->mClient:Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    .line 478
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Death received from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Move_win"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$600(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 484
    :try_start_29
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$600(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;->mClient:Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1
.end method
