.class Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;
.super Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiometricPromptServiceListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .registers 3

    .line 474
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    .line 476
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 482
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 483
    invoke-virtual {p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 482
    invoke-static {p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAcquired(ILjava/lang/String;)V

    .line 485
    :cond_17
    return-void
.end method

.method public onError(JIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 491
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 492
    invoke-virtual {p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    .line 491
    invoke-interface {p1, p5, p3, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onError(IILjava/lang/String;)V

    .line 494
    :cond_17
    return-void
.end method
