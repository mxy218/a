.class public abstract Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BiometricServiceListener"
.end annotation


# instance fields
.field private mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p2, "wrapperReceiver"  # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 447
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 449
    return-void
.end method


# virtual methods
.method public getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    return-object v0
.end method

.method public onAuthenticationFailedInternal(IZ)V
    .registers 4
    .param p1, "cookie"  # I
    .param p2, "requireConfirmation"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 467
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationFailed(IZ)V

    .line 469
    :cond_d
    return-void
.end method

.method public onAuthenticationSucceededInternal(Z[B)V
    .registers 4
    .param p1, "requireConfirmation"  # Z
    .param p2, "token"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 459
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationSucceeded(Z[B)V

    .line 461
    :cond_d
    return-void
.end method
