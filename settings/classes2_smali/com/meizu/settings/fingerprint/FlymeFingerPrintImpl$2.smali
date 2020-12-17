.class Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FlymeFingerPrintImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;
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

    .line 364
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 5

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationError---> helpMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",helpString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FlymeFingerPrintImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_51

    const/4 p2, 0x7

    if-ne p1, p2, :cond_42

    .line 388
    :try_start_24
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$900(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager;->getLockoutTimeCount()I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$802(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    .line 390
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 393
    :goto_38
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$800(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1000(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)V

    goto :goto_51

    :cond_42
    const/16 p2, 0x9

    if-ne p1, p2, :cond_4c

    .line 395
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    goto :goto_51

    .line 397
    :cond_4c
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    const-string v0, "FlymeFingerPrintImpl"

    const-string v1, "onAuthenticationFailed"

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 6

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationHelp---> helpMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",helpString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FlymeFingerPrintImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_33

    .line 406
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p2, p2, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_33

    const/4 v0, 0x1

    const/16 v1, 0x105

    const/4 v2, -0x1

    .line 407
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    :cond_33
    iget-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p2, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 412
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1200(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    .line 413
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$700(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    :cond_45
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 5

    .line 367
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationSucceeded! fingerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v0, v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    const/16 v2, 0x101

    .line 370
    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    :cond_2e
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$2;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->endVerify()V

    return-void
.end method
