.class Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->sendLockoutReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->access$1100(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    .line 590
    return-void
.end method
