.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 212
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 4

    .line 223
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_28

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFingerprintFreeze()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 224
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$602(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    .line 225
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V

    :cond_28
    return-void
.end method

.method public onFingerprintAuthenticated(II)V
    .registers 3

    .line 215
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 216
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$602(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    .line 217
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V

    :cond_14
    return-void
.end method

.method public onFingerprintLockoutReset()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 232
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcast()V

    :cond_15
    return-void
.end method
