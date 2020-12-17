.class Lcom/android/server/biometrics/fingerprint/FingerprintService$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 822
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 7
    .param p1, "operationId"  # J
    .param p3, "groupId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 826
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 827
    const-string v1, "FingerprintService"

    const-string v2, "authenticate(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v1, 0x3

    return v1

    .line 830
    :cond_11
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v1

    return v1
.end method

.method public cancel()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 836
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 837
    const-string v1, "FingerprintService"

    const-string v2, "cancel(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v1, 0x3

    return v1

    .line 840
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v1

    return v1
.end method

.method public enroll([BIILjava/util/ArrayList;)I
    .registers 8
    .param p1, "cryptoToken"  # [B
    .param p2, "groupId"  # I
    .param p3, "timeout"  # I
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

    .line 866
    .local p4, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 867
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 868
    const-string v1, "FingerprintService"

    const-string v2, "enroll(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v1, 0x3

    return v1

    .line 871
    :cond_11
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v1

    return v1
.end method

.method public enumerate()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 856
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 857
    const-string v1, "FingerprintService"

    const-string v2, "enumerate(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v1, 0x3

    return v1

    .line 860
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v1

    return v1
.end method

.method public remove(II)I
    .registers 6
    .param p1, "groupId"  # I
    .param p2, "biometricId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 846
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_12

    .line 847
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "remove(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v1, 0x3

    return v1

    .line 850
    :cond_12
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v1

    return v1
.end method

.method public resetLockout([B)V
    .registers 4
    .param p1, "token"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    const-string v0, "FingerprintService"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-void
.end method
