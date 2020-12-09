.class Lcom/android/server/biometrics/face/FaceService$2;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 2

    .line 977
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    iget-object p3, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p3}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p3

    .line 981
    if-nez p3, :cond_11

    .line 982
    const-string p1, "FaceService"

    const-string p2, "authenticate(): no face HAL!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 p1, 0x3

    return p1

    .line 985
    :cond_11
    invoke-interface {p3, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result p1

    return p1
.end method

.method public cancel()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 991
    if-nez v0, :cond_11

    .line 992
    const-string v0, "FaceService"

    const-string v1, "cancel(): no face HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x3

    return v0

    .line 995
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result v0

    return v0
.end method

.method public enroll([BIILjava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p2}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p2

    .line 1022
    if-nez p2, :cond_11

    .line 1023
    const-string p1, "FaceService"

    const-string p2, "enroll(): no face HAL!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 p1, 0x3

    return p1

    .line 1026
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    const/4 v1, 0x0

    :goto_17
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 1028
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1030
    :cond_26
    invoke-interface {p2, v0, p3, p4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p1

    return p1
.end method

.method public enumerate()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1011
    if-nez v0, :cond_11

    .line 1012
    const-string v0, "FaceService"

    const-string v1, "enumerate(): no face HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v0, 0x3

    return v0

    .line 1015
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result v0

    return v0
.end method

.method public remove(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p1

    .line 1001
    if-nez p1, :cond_12

    .line 1002
    const-string p1, "FaceService"

    const-string/jumbo p2, "remove(): no face HAL!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 p1, 0x3

    return p1

    .line 1005
    :cond_12
    invoke-interface {p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result p1

    return p1
.end method

.method public resetLockout([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1036
    if-nez v0, :cond_11

    .line 1037
    const-string p1, "FaceService"

    const-string/jumbo v0, "resetLockout(): no face HAL!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-void

    .line 1040
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    const/4 v2, 0x0

    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_26

    .line 1042
    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1044
    :cond_26
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    .line 1045
    return-void
.end method
