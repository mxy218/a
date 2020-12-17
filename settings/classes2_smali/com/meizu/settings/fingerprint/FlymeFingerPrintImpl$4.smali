.class Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FlymeFingerPrintImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->createRemovalCallback()Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .registers 6

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemovalError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",errorMsgId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errString:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FlymeFingerPrintImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    if-ne p2, p1, :cond_3a

    return-void

    .line 513
    :cond_3a
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object p1

    monitor-enter p1

    .line 514
    :try_start_41
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 515
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;->onDeleteComplete(Z)V

    .line 517
    :cond_53
    monitor-exit p1

    return-void

    :catchall_55
    move-exception p0

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 6

    .line 487
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object p2

    monitor-enter p2

    .line 489
    :try_start_7
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "FlymeFingerPrintImpl"

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemovalSucceeded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mDeleteFingerPrintCounts:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5f

    .line 493
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;->onDeleteComplete(Z)V

    .line 496
    :cond_5f
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v0, :cond_96

    .line 497
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1302(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 498
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1500(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)[I

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$4;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget p0, v0, p0

    invoke-static {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1600(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)V

    .line 501
    :cond_96
    monitor-exit p2

    return-void

    :catchall_98
    move-exception p0

    monitor-exit p2
    :try_end_9a
    .catchall {:try_start_7 .. :try_end_9a} :catchall_98

    throw p0
.end method
