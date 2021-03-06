.class public interface abstract Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ServiceListener"
.end annotation


# virtual methods
.method public abstract onAcquired(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onAuthenticationFailed(J)V
    .registers 5
    .param p1, "deviceId"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAuthenticationFailedInternal(IZ)V
    .registers 5
    .param p1, "cookie"  # I
    .param p2, "requireConfirmation"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7
    .param p1, "deviceId"  # J
    .param p3, "biometric"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAuthenticationSucceededInternal(Z[B)V
    .registers 5
    .param p1, "requireConfirmation"  # Z
    .param p2, "token"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    return-void
.end method

.method public abstract onError(JIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    return-void
.end method
