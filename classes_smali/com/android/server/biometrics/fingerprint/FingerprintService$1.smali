.class Lcom/android/server/biometrics/fingerprint/FingerprintService$1;
.super Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;
.source "FingerprintService.java"


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

    .line 594
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$1$FingerprintService$1(IIJ)V
    .registers 8

    .line 624
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_18

    .line 627
    :try_start_8
    invoke-interface {v0, p1, p2}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->handleAcquired(II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_10

    if-eqz v0, :cond_f

    .line 628
    return-void

    .line 632
    :cond_f
    goto :goto_18

    .line 630
    :catch_10
    move-exception v0

    .line 631
    const-string v1, "FingerprintService"

    const-string v2, "handleError failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p3, p4, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7901(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V

    .line 635
    return-void
.end method

.method public synthetic lambda$onAuthenticated$2$FingerprintService$1(IIJLjava/util/ArrayList;)V
    .registers 13

    .line 642
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 643
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1, v6, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7601(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 644
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    if-eqz p1, :cond_30

    .line 646
    :try_start_1e
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28

    .line 649
    goto :goto_30

    .line 647
    :catch_28
    move-exception p1

    .line 648
    const-string p2, "FingerprintService"

    const-string p3, "hideInDisplayFingerprintView failed"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :cond_30
    :goto_30
    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FingerprintService$1(IIJI)V
    .registers 13

    .line 599
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 600
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 602
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1, v6, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 603
    if-nez p5, :cond_4d

    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 604
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p1

    .line 605
    const-string p2, "FingerprintService"

    if-eqz p1, :cond_3d

    .line 607
    :try_start_32
    invoke-interface {p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onFinishEnroll()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    .line 610
    goto :goto_3d

    .line 608
    :catch_36
    move-exception p1

    .line 609
    const-string/jumbo p3, "onFinishEnroll failed"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_47

    .line 616
    goto :goto_4d

    .line 614
    :catch_47
    move-exception p1

    .line 615
    const-string p3, "hideInDisplayFingerprintView failed"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    :cond_4d
    :goto_4d
    return-void
.end method

.method public synthetic lambda$onEnumerate$5$FingerprintService$1(IIJI)V
    .registers 13

    .line 695
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 696
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1, v6, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6801(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 697
    return-void
.end method

.method public synthetic lambda$onError$3$FingerprintService$1(IIJ)V
    .registers 8

    .line 657
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_18

    .line 660
    :try_start_8
    invoke-interface {v0, p1, p2}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->handleError(II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_10

    if-eqz v0, :cond_f

    .line 661
    return-void

    .line 665
    :cond_f
    goto :goto_18

    .line 663
    :catch_10
    move-exception v0

    .line 664
    const-string v1, "FingerprintService"

    const-string v2, "handleError failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p3, p4, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7201(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V

    .line 669
    const/4 p2, 0x1

    if-ne p1, p2, :cond_41

    .line 671
    const-string p1, "FingerprintService"

    const-string p2, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    monitor-enter p0

    .line 673
    :try_start_28
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7302(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 674
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7402(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J

    .line 675
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/16 p2, -0x2710

    invoke-static {p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7502(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I

    .line 676
    monitor-exit p0

    goto :goto_41

    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_3e

    throw p1

    .line 678
    :cond_41
    :goto_41
    return-void
.end method

.method public synthetic lambda$onRemoved$4$FingerprintService$1(IIJI)V
    .registers 13

    .line 685
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    .line 686
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v2, ""

    move-object v1, v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 687
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 688
    return-void
.end method

.method public onAcquired(JII)V
    .registers 13

    .line 623
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$FiaZujBXgdANaRfvQB4qUCGynTg;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$FiaZujBXgdANaRfvQB4qUCGynTg;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJ)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 636
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJLjava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15

    .line 598
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7-RPI0PwwgOAZtsXq2j72pQWwMc;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7-RPI0PwwgOAZtsXq2j72pQWwMc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 619
    return-void
.end method

.method public onEnumerate(JIII)V
    .registers 15

    .line 694
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method

.method public onError(JII)V
    .registers 13

    .line 656
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$5u8lTDrDAiYaAFvSr7fKAHaW2PY;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$5u8lTDrDAiYaAFvSr7fKAHaW2PY;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJ)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method public onRemoved(JIII)V
    .registers 15

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$BJntfNoFTejPmUJ_45WFIwis8Nw;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$BJntfNoFTejPmUJ_45WFIwis8Nw;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 689
    return-void
.end method
