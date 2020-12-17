.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AODPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 2

    return-void
.end method

.method public onLockedBootComplete(I)V
    .registers 2

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
