.class Lcom/flyme/systemui/charge/ChargeAnimationController$3;
.super Ljava/lang/Object;
.source "ChargeAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/charge/ChargeAnimationController;
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

    .line 75
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$500(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "ChargeAnimationController"

    const-string v1, "remove window"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$700(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$600(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$802(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0, v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$502(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setChargingAnimationShow(Z)V

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    .line 86
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    :cond_51
    return-void
.end method
