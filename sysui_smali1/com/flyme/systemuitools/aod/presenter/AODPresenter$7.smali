.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

    .line 551
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6

    .line 562
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AODPresenter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_7f

    const/4 p1, 0x2

    if-ne v0, p1, :cond_56

    .line 567
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 569
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V

    .line 571
    :cond_50
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2102(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    goto :goto_7f

    :cond_56
    const/4 p1, 0x1

    if-ne v0, p1, :cond_7f

    .line 573
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 574
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V

    .line 577
    :cond_66
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 578
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$2300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7f
    :goto_7f
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
