.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;
.super Landroid/database/ContentObserver;
.source "AODPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->watchForDeviceProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Landroid/os/Handler;)V
    .registers 3

    .line 1106
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 1109
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1110
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2802(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    .line 1111
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1112
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    return-void
.end method
