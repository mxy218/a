.class Landroid/support/v4/media/MediaController2ImplLegacy$3;
.super Landroid/os/ResultReceiver;
.source "MediaController2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplLegacy;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 848
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    if-eqz p1, :cond_14

    return-void

    .line 853
    :cond_14
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->onConnectedNotLocked(Landroid/os/Bundle;)V

    throw v1

    .line 856
    :cond_1a
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;

    invoke-direct {p2, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$3;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 862
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    throw v1
.end method
