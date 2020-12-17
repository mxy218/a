.class Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnderScreenFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 6

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationError ,msgId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UnderScreenFingerprintManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p3, p2}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x7

    if-ne p1, p2, :cond_38

    .line 428
    :try_start_2d
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 431
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_38
    :goto_38
    return-void
.end method
