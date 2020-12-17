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
    .param p1, "this$0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 744
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$1$FingerprintService$1(IJI)V
    .registers 7
    .param p1, "acquiredInfo"  # I
    .param p2, "deviceId"  # J
    .param p4, "vendorCode"  # I

    .line 760
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-lez p1, :cond_17

    const/4 v0, 0x6

    if-ge p1, v0, :cond_17

    .line 761
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 764
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9101(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V

    .line 765
    return-void
.end method

.method public synthetic lambda$onAuthenticated$2$FingerprintService$1(IIJLjava/util/ArrayList;)V
    .registers 13
    .param p1, "groupId"  # I
    .param p2, "fingerId"  # I
    .param p3, "deviceId"  # J
    .param p5, "token"  # Ljava/util/ArrayList;

    .line 772
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 773
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 775
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->resetIdentifyFailedReasonCache()V

    .line 777
    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FingerprintService$1(IIJI)V
    .registers 13
    .param p1, "groupId"  # I
    .param p2, "fingerId"  # I
    .param p3, "deviceId"  # J
    .param p5, "remaining"  # I

    .line 749
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 750
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

    .line 752
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9201(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 753
    return-void
.end method

.method public synthetic lambda$onEnumerate$5$FingerprintService$1(IIJI)V
    .registers 13
    .param p1, "groupId"  # I
    .param p2, "fingerId"  # I
    .param p3, "deviceId"  # J
    .param p5, "remaining"  # I

    .line 811
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 812
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8301(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 813
    return-void
.end method

.method public synthetic lambda$onError$3$FingerprintService$1(JII)V
    .registers 8
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I

    .line 783
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8601(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V

    .line 785
    const/4 v0, 0x1

    if-ne p3, v0, :cond_29

    .line 787
    const-string v0, "FingerprintService"

    const-string v1, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    monitor-enter p0

    .line 789
    :try_start_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8702(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 790
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8802(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J

    .line 791
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8902(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I

    .line 792
    monitor-exit p0

    goto :goto_29

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v0

    .line 794
    :cond_29
    :goto_29
    return-void
.end method

.method public synthetic lambda$onRemoved$4$FingerprintService$1(IIJI)V
    .registers 14
    .param p1, "groupId"  # I
    .param p2, "fingerId"  # I
    .param p3, "deviceId"  # J
    .param p5, "remaining"  # I

    .line 801
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 802
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const-string v2, ""

    move-object v1, v7

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 803
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2, v1, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8501(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 804
    return-void
.end method

.method public onAcquired(JII)V
    .registers 13
    .param p1, "deviceId"  # J
    .param p3, "acquiredInfo"  # I
    .param p4, "vendorCode"  # I

    .line 758
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IJI)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 766
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 15
    .param p1, "deviceId"  # J
    .param p3, "fingerId"  # I
    .param p4, "groupId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

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

    .line 778
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15
    .param p1, "deviceId"  # J
    .param p3, "fingerId"  # I
    .param p4, "groupId"  # I
    .param p5, "remaining"  # I

    .line 748
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

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

    .line 754
    return-void
.end method

.method public onEnumerate(JIII)V
    .registers 15
    .param p1, "deviceId"  # J
    .param p3, "fingerId"  # I
    .param p4, "groupId"  # I
    .param p5, "remaining"  # I

    .line 810
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

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

    .line 815
    return-void
.end method

.method public onError(JII)V
    .registers 13
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I

    .line 782
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$cO88ecWuvWIBecLAEccxr5yeJK4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$cO88ecWuvWIBecLAEccxr5yeJK4;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;JII)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method public onRemoved(JIII)V
    .registers 15
    .param p1, "deviceId"  # J
    .param p3, "fingerId"  # I
    .param p4, "groupId"  # I
    .param p5, "remaining"  # I

    .line 800
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

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

    .line 805
    return-void
.end method
