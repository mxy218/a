.class Lcom/android/server/biometrics/BiometricService$2;
.super Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    .line 563
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 599
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 600
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 601
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 602
    return-void
.end method

.method public onAuthenticationFailed(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1040101

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 577
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p2}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 578
    return-void
.end method

.method public onAuthenticationSucceeded(Z[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 568
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 569
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 570
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 571
    return-void
.end method

.method public onDialogDismissed(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 607
    return-void
.end method

.method public onError(IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    .line 586
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 588
    :cond_11
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 589
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 590
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 591
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 592
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 594
    :goto_29
    return-void
.end method

.method public onTryAgainPressed()V
    .registers 3

    .line 611
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 612
    return-void
.end method
