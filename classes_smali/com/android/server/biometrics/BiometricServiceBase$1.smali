.class Lcom/android/server/biometrics/BiometricServiceBase$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 1326
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .registers 5
    .param p1, "newUserId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1331
    return-void
.end method
