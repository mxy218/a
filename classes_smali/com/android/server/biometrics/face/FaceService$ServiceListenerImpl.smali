.class Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListenerImpl"
.end annotation


# instance fields
.field private mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V
    .registers 3

    .line 765
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 767
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

    .line 782
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_7

    .line 783
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(JII)V

    .line 785
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

    .line 803
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_7

    .line 804
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed(J)V

    .line 806
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

    .line 791
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_1b

    .line 792
    if-eqz p3, :cond_14

    instance-of v0, p3, Landroid/hardware/face/Face;

    if-eqz v0, :cond_b

    goto :goto_14

    .line 796
    :cond_b
    const-string p1, "FaceService"

    const-string/jumbo p2, "onAuthenticationSucceeded received non-face biometric"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 793
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    check-cast p3, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/face/Face;I)V

    .line 799
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_f

    .line 773
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 774
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p1

    .line 773
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(JII)V

    .line 777
    :cond_f
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_f

    .line 829
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 830
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p1

    .line 829
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnumerated(JII)V

    .line 832
    :cond_f
    return-void
.end method

.method public onError(JIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    iget-object p5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p5, :cond_7

    .line 812
    invoke-interface {p5, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(JII)V

    .line 814
    :cond_7
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_f

    .line 820
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 821
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p1

    .line 820
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(JII)V

    .line 823
    :cond_f
    return-void
.end method
