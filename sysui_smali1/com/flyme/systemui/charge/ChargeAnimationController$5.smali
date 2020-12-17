.class Lcom/flyme/systemui/charge/ChargeAnimationController$5;
.super Ljava/lang/Object;
.source "ChargeAnimationController.java"

# interfaces
.implements Lcom/meizu/flyme/chargeview/OnChargeViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/charge/ChargeAnimationController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$800(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargeAnimationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1102(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z

    .line 149
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$800(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 150
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$900(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 153
    :cond_37
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$600(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1200(Lcom/flyme/systemui/charge/ChargeAnimationController;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onError(II)V
    .registers 3

    const-string p1, "ChargeAnimationController"

    const-string p2, "onError"

    .line 158
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$300(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    .line 161
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$5;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$400(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    const-string p0, "ChargeAnimationController"

    const-string v0, "onStart"

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
