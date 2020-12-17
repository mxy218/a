.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 3

    .line 227
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    :cond_18
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 6

    .line 235
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget p2, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_c

    goto :goto_d

    :cond_c
    move v1, v0

    :cond_d
    :goto_d
    if-nez p1, :cond_35

    .line 237
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-eqz p1, :cond_35

    if-eqz v1, :cond_35

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 238
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 239
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 p1, 0x168

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;J)V

    :cond_35
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 3

    .line 246
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    return-void
.end method
