.class final Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;
.super Landroid/view/IGestureCallback$Stub;
.source "AODPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method private constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 2

    .line 1270
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Landroid/view/IGestureCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;)V
    .registers 3

    .line 1270
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    return-void
.end method


# virtual methods
.method public onGestureTrigger(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureTrigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$3300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_2a
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$600(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1276
    :cond_3a
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1277
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_53
    return-void
.end method
