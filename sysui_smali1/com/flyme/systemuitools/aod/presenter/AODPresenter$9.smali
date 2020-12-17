.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;


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

    .line 940
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V
    .registers 5

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryStatusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2600(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)I

    move-result v0

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)I

    move-result v2

    if-eq v0, v2, :cond_3b

    const-string v0, "not in doze suspend off, update battery info"

    .line 946
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 948
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->showBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    :cond_3b
    return-void
.end method
