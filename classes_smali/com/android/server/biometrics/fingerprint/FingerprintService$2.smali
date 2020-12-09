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

    .line 706
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 710
    const-string v1, "FingerprintService"

    if-nez v0, :cond_11

    .line 711
    const-string p1, "authenticate(): no fingerprint HAL!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 p1, 0x3

    return p1

    .line 714
    :cond_11
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 715
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v2

    .line 716
    if-eqz v2, :cond_32

    .line 718
    :try_start_21
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v3

    invoke-interface {v2, v3}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->setLongPressEnabled(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 721
    goto :goto_32

    .line 719
    :catch_2b
    move-exception v2

    .line 720
    const-string/jumbo v3, "setLongPressEnabled failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    :cond_32
    :goto_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->showInDisplayFingerprintView()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    .line 727
    goto :goto_43

    .line 725
    :catch_3c
    move-exception v2

    .line 726
    const-string/jumbo v3, "showInDisplayFingerprintView failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    :cond_43
    :goto_43
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result p1

    return p1
.end method

.method public cancel()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 735
    const-string v1, "FingerprintService"

    if-nez v0, :cond_11

    .line 736
    const-string v0, "cancel(): no fingerprint HAL!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v0, 0x3

    return v0

    .line 739
    :cond_11
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 741
    :try_start_19
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 744
    goto :goto_29

    .line 742
    :catch_23
    move-exception v2

    .line 743
    const-string v3, "hideInDisplayFingerprintView failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    :cond_29
    :goto_29
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

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

    .line 772
    iget-object p4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p4

    .line 773
    const-string v0, "FingerprintService"

    if-nez p4, :cond_11

    .line 774
    const-string p1, "enroll(): no fingerprint HAL!"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 p1, 0x3

    return p1

    .line 777
    :cond_11
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 778
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v1

    .line 779
    if-eqz v1, :cond_2c

    .line 781
    :try_start_21
    invoke-interface {v1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onStartEnroll()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    .line 784
    goto :goto_2c

    .line 782
    :catch_25
    move-exception v1

    .line 783
    const-string/jumbo v2, "onStartEnroll failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showInDisplayFingerprintView()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36

    .line 790
    goto :goto_3d

    .line 788
    :catch_36
    move-exception v1

    .line 789
    const-string/jumbo v2, "showInDisplayFingerprintView failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    :cond_3d
    :goto_3d
    invoke-interface {p4, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

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

    .line 761
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 762
    if-nez v0, :cond_11

    .line 763
    const-string v0, "FingerprintService"

    const-string v1, "enumerate(): no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v0, 0x3

    return v0

    .line 766
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v0

    return v0
.end method

.method public remove(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 752
    if-nez v0, :cond_12

    .line 753
    const-string p1, "FingerprintService"

    const-string/jumbo p2, "remove(): no fingerprint HAL!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 p1, 0x3

    return p1

    .line 756
    :cond_12
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result p1

    return p1
.end method

.method public resetLockout([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    const-string p1, "FingerprintService"

    const-string v0, "Not supported"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void
.end method
