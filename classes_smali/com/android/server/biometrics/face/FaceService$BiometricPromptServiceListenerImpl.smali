.class Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;
.super Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiometricPromptServiceListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .registers 3

    .line 731
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    .line 733
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

    .line 741
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 742
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    .line 743
    invoke-static {p3, p4}, Landroid/hardware/face/FaceManager;->getMappedAcquiredInfo(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 744
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p4}, Landroid/hardware/face/FaceManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p3

    .line 742
    invoke-interface {p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAcquired(ILjava/lang/String;)V

    .line 746
    :cond_1b
    return-void
.end method

.method public onError(JIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 752
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 753
    invoke-virtual {p2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3, p4}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    .line 752
    invoke-interface {p1, p5, p3, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onError(IILjava/lang/String;)V

    .line 755
    :cond_17
    return-void
.end method
