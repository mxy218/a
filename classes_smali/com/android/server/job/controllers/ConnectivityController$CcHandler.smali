.class Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 574
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 575
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 576
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 580
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    goto :goto_1d

    .line 586
    :cond_e
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v3, v2}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    goto :goto_1d

    .line 583
    :cond_16
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 584
    nop

    .line 589
    :goto_1d
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v1
.end method
