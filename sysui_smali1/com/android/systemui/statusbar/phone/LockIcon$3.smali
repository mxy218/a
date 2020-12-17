.class Lcom/android/systemui/statusbar/phone/LockIcon$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 3

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4

    .line 151
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$600(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 2

    return-void
.end method
