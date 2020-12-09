.class Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListenerImpl"
.end annotation


# instance fields
.field private mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 3

    .line 504
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 506
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_7

    .line 522
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V

    .line 524
    :cond_7
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_7

    .line 543
    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    .line 545
    :cond_7
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_1b

    .line 531
    if-eqz p3, :cond_14

    instance-of v0, p3, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_b

    goto :goto_14

    .line 535
    :cond_b
    const-string p1, "FingerprintService"

    const-string/jumbo p2, "onAuthenticationSucceeded received non-fingerprint biometric"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 532
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    .line 533
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    .line 538
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_16

    .line 512
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    .line 513
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 514
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 513
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V

    .line 516
    :cond_16
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_16

    .line 569
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    .line 570
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 571
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 570
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V

    .line 573
    :cond_16
    return-void
.end method

.method public onError(JIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    iget-object p5, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p5, :cond_7

    .line 551
    invoke-interface {p5, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 553
    :cond_7
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_16

    .line 559
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    .line 560
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 561
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 560
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V

    .line 563
    :cond_16
    return-void
.end method
