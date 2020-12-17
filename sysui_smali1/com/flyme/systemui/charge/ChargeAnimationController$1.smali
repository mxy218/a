.class Lcom/flyme/systemui/charge/ChargeAnimationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ChargeAnimationController.java"


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

    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$1;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshBatteryInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargeAnimationController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$1;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$1;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0, p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$100(Lcom/flyme/systemui/charge/ChargeAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 59
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$1;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    iget p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {p0, p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$200(Lcom/flyme/systemui/charge/ChargeAnimationController;I)V

    :cond_36
    return-void
.end method
