.class Lcom/android/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 255
    iput p1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 p1, 0x4

    if-eq v0, p1, :cond_9

    goto :goto_3e

    .line 266
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_e
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_16

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_32

    .line 271
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 273
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 275
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz p1, :cond_3e

    .line 278
    iget v0, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    invoke-interface {p1, v0}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    const/4 p1, 0x0

    .line 279
    iput p1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_3e

    :catchall_32
    move-exception p0

    .line 270
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0

    .line 261
    :cond_35
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3b

    const/4 p1, 0x2

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x1

    .line 263
    :goto_3c
    iput p1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    :cond_3e
    :goto_3e
    return-void
.end method
