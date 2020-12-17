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
    .param p2, "receiver"  # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 632
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 634
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 6
    .param p1, "deviceId"  # J
    .param p3, "acquiredInfo"  # I
    .param p4, "vendorCode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_10

    .line 650
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V

    .line 652
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->cacheIdentifyFailedReason(II)V

    .line 655
    :cond_10
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .registers 5
    .param p1, "deviceId"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_2b

    .line 680
    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    .line 682
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->uploadIdentifyResultEvent(I)V

    .line 683
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->uploadIdentifyFailedReasonEvent()V

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 685
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 689
    :cond_2b
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 8
    .param p1, "deviceId"  # J
    .param p3, "biometric"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_38

    .line 662
    if-eqz p3, :cond_14

    instance-of v0, p3, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_b

    goto :goto_14

    .line 672
    :cond_b
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticationSucceeded received non-fingerprint biometric"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 663
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object v1, p3

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 664
    invoke-interface {v0, p1, p2, v1, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    .line 666
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->uploadIdentifyResultEvent(I)V

    .line 667
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 668
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 675
    :cond_38
    :goto_38
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 10
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_17

    .line 640
    move-object v6, p1

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 641
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 642
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 641
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V

    .line 644
    .end local v6  # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_17
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 10
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_17

    .line 720
    move-object v6, p1

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 721
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 722
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 721
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V

    .line 724
    .end local v6  # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_17
    return-void
.end method

.method public onError(JIII)V
    .registers 9
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I
    .param p5, "cookie"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x7

    if-eq p3, v0, :cond_f

    const/16 v0, 0x9

    if-ne p3, v0, :cond_1a

    .line 697
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 701
    :cond_1a
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_21

    .line 702
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 704
    :cond_21
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 10
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_17

    .line 710
    move-object v6, p1

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 711
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 712
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 711
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V

    .line 714
    .end local v6  # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_17
    return-void
.end method
