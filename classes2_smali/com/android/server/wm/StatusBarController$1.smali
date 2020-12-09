.class Lcom/android/server/wm/StatusBarController$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StatusBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAppTransitionCancelled:Ljava/lang/Runnable;

.field private mAppTransitionFinished:Ljava/lang/Runnable;

.field private mAppTransitionPending:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/StatusBarController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/StatusBarController;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 37
    new-instance p1, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$x4q7e0Eysf0ynMSdT1A-JN_ucuI;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$x4q7e0Eysf0ynMSdT1A-JN_ucuI;-><init>(Lcom/android/server/wm/StatusBarController$1;)V

    iput-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionPending:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$CizMeoiz6ZVrkt6kAKpSV5htmyc;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$CizMeoiz6ZVrkt6kAKpSV5htmyc;-><init>(Lcom/android/server/wm/StatusBarController$1;)V

    iput-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionCancelled:Ljava/lang/Runnable;

    .line 51
    new-instance p1, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$3FiQ0kybPCSlgcNJkCsNm5M12iA;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$3FiQ0kybPCSlgcNJkCsNm5M12iA;-><init>(Lcom/android/server/wm/StatusBarController$1;)V

    iput-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionFinished:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$$0$StatusBarController$1()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_f

    .line 40
    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v1, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending(I)V

    .line 42
    :cond_f
    return-void
.end method

.method public synthetic lambda$$1$StatusBarController$1()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_f

    .line 47
    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v1, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled(I)V

    .line 49
    :cond_f
    return-void
.end method

.method public synthetic lambda$$2$StatusBarController$1()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_f

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v1, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished(I)V

    .line 56
    :cond_f
    return-void
.end method

.method public synthetic lambda$onAppTransitionStartingLocked$3$StatusBarController$1(JJ)V
    .registers 12

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_11

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v2, v0, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(IJJ)V

    .line 72
    :cond_11
    return-void
.end method

.method public onAppTransitionCancelledLocked(I)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object p1, p1, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionCancelled:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 83
    iget-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object p1, p1, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionFinished:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object v0, v0, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionPending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .registers 14

    .line 66
    iget-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object p1, p1, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;

    move-object v0, p2

    move-object v1, p0

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;-><init>(Lcom/android/server/wm/StatusBarController$1;JJ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    const/4 p1, 0x0

    return p1
.end method
