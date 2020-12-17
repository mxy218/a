.class final Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;
.super Ljava/lang/Object;
.source "FlymeWindowModeControllerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mClient:Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

.field private mPid:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;IILcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)V
    .registers 5
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "client"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    .line 329
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput p2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->mUid:I

    .line 331
    iput p3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->mPid:I

    .line 332
    iput-object p4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->mClient:Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    .line 333
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Death received from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1700(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 339
    :try_start_29
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1700(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;->mClient:Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1
.end method
