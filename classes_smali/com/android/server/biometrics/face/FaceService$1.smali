.class Lcom/android/server/biometrics/face/FaceService$1;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.source "FaceService.java"


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

    .line 857
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$1$FaceService$1(JII)V
    .registers 6

    .line 885
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->access$10001(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 886
    return-void
.end method

.method public synthetic lambda$onAuthenticated$2$FaceService$1(IJLjava/util/ArrayList;)V
    .registers 7

    .line 893
    new-instance v0, Landroid/hardware/face/Face;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 894
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1, v0, p4}, Lcom/android/server/biometrics/face/FaceService;->access$9901(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 895
    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FaceService$1(IIJI)V
    .registers 9

    .line 862
    new-instance v0, Landroid/hardware/face/Face;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 863
    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 864
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p2, v0, p5}, Lcom/android/server/biometrics/face/FaceService;->access$10101(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 867
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p2}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p2

    .line 868
    if-nez p5, :cond_4f

    if-eqz p2, :cond_4f

    .line 870
    :try_start_24
    iget-object p3, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p3}, Lcom/android/server/biometrics/face/FaceService;->access$10200(Lcom/android/server/biometrics/face/FaceService;)Ljava/util/Map;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 871
    iget-object p5, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p5, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-interface {p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p1

    iget-wide p1, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_3f

    .line 872
    :cond_3d
    const-wide/16 p1, 0x0

    .line 871
    :goto_3f
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 870
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_46} :catch_47

    .line 875
    goto :goto_4f

    .line 873
    :catch_47
    move-exception p1

    .line 874
    const-string p2, "FaceService"

    const-string p3, "Unable to get authenticatorId"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    :cond_4f
    :goto_4f
    return-void
.end method

.method public synthetic lambda$onEnumerate$5$FaceService$1(Ljava/util/ArrayList;J)V
    .registers 8

    .line 939
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 940
    nop

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 941
    new-instance v0, Landroid/hardware/face/Face;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    invoke-direct {v0, v3, v2, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 943
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v0, v3}, Lcom/android/server/biometrics/face/FaceService;->access$9201(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 949
    :cond_2e
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9301(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 951
    :cond_34
    return-void
.end method

.method public synthetic lambda$onError$3$FaceService$1(JII)V
    .registers 6

    .line 902
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->access$9601(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 905
    const/4 p1, 0x1

    if-ne p3, p1, :cond_29

    .line 907
    const-string p1, "FaceService"

    const-string p2, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    monitor-enter p0

    .line 909
    :try_start_10
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$7302(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 910
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/server/biometrics/face/FaceService;->access$9702(Lcom/android/server/biometrics/face/FaceService;J)J

    .line 911
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/16 p2, -0x2710

    invoke-static {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$9802(Lcom/android/server/biometrics/face/FaceService;I)I

    .line 912
    monitor-exit p0

    goto :goto_29

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p1

    .line 914
    :cond_29
    :goto_29
    return-void
.end method

.method public synthetic lambda$onLockoutChanged$6$FaceService$1(J)V
    .registers 5

    .line 966
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    .line 967
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$9100(Lcom/android/server/biometrics/face/FaceService;)V

    .line 969
    :cond_b
    return-void
.end method

.method public synthetic lambda$onRemoved$4$FaceService$1(Ljava/util/ArrayList;J)V
    .registers 10

    .line 920
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 921
    move v0, v2

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_38

    .line 922
    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 924
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v3, v5}, Lcom/android/server/biometrics/face/FaceService;->access$9401(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 927
    :cond_2e
    new-instance p1, Landroid/hardware/face/Face;

    invoke-direct {p1, v1, v2, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 928
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p2, p1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$9501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 930
    :cond_38
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p1}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string p3, "face_unlock_re_enroll"

    invoke-static {p1, p3, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 932
    return-void
.end method

.method public onAcquired(JIII)V
    .registers 13

    .line 884
    iget-object p3, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p3}, Lcom/android/server/biometrics/face/FaceService;->access$8400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object p3

    new-instance v6, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7DzDQwoPfgYi40WuB8Xi0hA3qVQ;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7DzDQwoPfgYi40WuB8Xi0hA3qVQ;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V

    invoke-virtual {p3, v6}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 887
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 892
    iget-object p4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p4}, Lcom/android/server/biometrics/face/FaceService;->access$8500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object p4

    new-instance v6, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IJLjava/util/ArrayList;)V

    invoke-virtual {p4, v6}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 896
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15

    .line 861
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$8300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 878
    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    iget-object p4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p4}, Lcom/android/server/biometrics/face/FaceService;->access$8800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object p4

    new-instance v0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;-><init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V

    invoke-virtual {p4, v0}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 952
    return-void
.end method

.method public onError(JIII)V
    .registers 13

    .line 901
    iget-object p3, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p3}, Lcom/android/server/biometrics/face/FaceService;->access$8600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object p3

    new-instance v6, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V

    invoke-virtual {p3, v6}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method public onLockoutChanged(J)V
    .registers 5

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_24

    .line 958
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8902(Lcom/android/server/biometrics/face/FaceService;I)I

    goto :goto_3a

    .line 959
    :cond_24
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_34

    .line 960
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8902(Lcom/android/server/biometrics/face/FaceService;I)I

    goto :goto_3a

    .line 962
    :cond_34
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8902(Lcom/android/server/biometrics/face/FaceService;I)I

    .line 965
    :goto_3a
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$OiHHyHFXrIcrZYUfSsf-E2as1qE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$OiHHyHFXrIcrZYUfSsf-E2as1qE;-><init>(Lcom/android/server/biometrics/face/FaceService$1;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 970
    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 919
    iget-object p4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p4}, Lcom/android/server/biometrics/face/FaceService;->access$8700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object p4

    new-instance v0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$jaJb2y4UkoXOtV5wJimfIPNA_PM;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$jaJb2y4UkoXOtV5wJimfIPNA_PM;-><init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V

    invoke-virtual {p4, v0}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 933
    return-void
.end method
