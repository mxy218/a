.class Lcom/meizu/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/meizu/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/RunningState;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$2;->this$0:Lcom/meizu/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/meizu/settings/applications/RunningState$2;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    goto :goto_4f

    .line 307
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$2;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mRefreshUiListener:Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz p0, :cond_4f

    .line 308
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 309
    invoke-interface {p0, p1}, Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;->onRefreshIcon(Ljava/lang/String;)V

    goto :goto_4f

    .line 289
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$2;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object v0, p1, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_1f
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$2;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-boolean p1, p1, Lcom/meizu/settings/applications/RunningState;->mResumed:Z

    if-nez p1, :cond_27

    .line 291
    monitor-exit v0

    return-void

    .line 293
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_43

    .line 294
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 296
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 298
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$2;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState;->mRefreshUiListener:Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz p1, :cond_4f

    .line 301
    iget v0, p0, Lcom/meizu/settings/applications/RunningState$2;->mNextUpdate:I

    invoke-interface {p1, v0}, Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    const/4 p1, 0x0

    .line 302
    iput p1, p0, Lcom/meizu/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_4f

    :catchall_43
    move-exception p0

    .line 293
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0

    .line 284
    :cond_46
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4c

    const/4 p1, 0x2

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x1

    .line 286
    :goto_4d
    iput p1, p0, Lcom/meizu/settings/applications/RunningState$2;->mNextUpdate:I

    :cond_4f
    :goto_4f
    return-void
.end method
