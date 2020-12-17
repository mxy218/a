.class Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
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

    .line 250
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentError--> errMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",errString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_37

    const/4 v1, 0x5

    if-eq p1, v1, :cond_37

    .line 329
    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    .line 330
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x26

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_37
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 5

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentHelp--> helpMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",helpString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_b6

    invoke-static {v0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$500(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)Z

    move-result v0

    if-eqz v0, :cond_b6

    const/16 v0, 0x3ec

    const/16 v1, 0x21

    if-ne p1, v0, :cond_42

    .line 290
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    .line 292
    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p0

    .line 290
    invoke-virtual {p1, v1, p2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b6

    :cond_42
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_66

    const/4 p1, -0x1

    .line 296
    :try_start_47
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p2

    .line 298
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    :goto_58
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x28

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b6

    :cond_66
    const/4 p2, 0x3

    if-ne p1, p2, :cond_79

    .line 305
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 307
    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p0

    .line 305
    invoke-virtual {p1, v1, p2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b6

    :cond_79
    const/4 p2, 0x5

    if-ne p1, p2, :cond_8c

    .line 309
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 311
    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p0

    .line 309
    invoke-virtual {p1, v1, p2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b6

    :cond_8c
    const/4 p2, 0x1

    if-eq p1, p2, :cond_a7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_93

    goto :goto_a7

    :cond_93
    const/16 p2, 0x3ed

    if-ne p1, p2, :cond_b6

    .line 318
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 320
    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p0

    .line 318
    invoke-virtual {p1, v1, p2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b6

    .line 314
    :cond_a7
    :goto_a7
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    .line 316
    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p0

    .line 314
    invoke-virtual {p1, v1, p2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b6
    :goto_b6
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .registers 8

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_7

    return-void

    .line 256
    :cond_7
    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$000(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 257
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$102(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I

    .line 259
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L  # 0.75

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$202(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I

    .line 261
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$002(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;Z)Z

    .line 264
    :cond_28
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v2

    sub-int/2addr v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v4}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$302(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;I)I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentProgress! remaining:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPercent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTipsFingerSideCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$200(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlymeFingerPrintImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 269
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    const/4 v3, 0x1

    if-nez p1, :cond_7d

    move v4, v3

    goto :goto_7e

    :cond_7d
    move v4, v1

    :goto_7e
    invoke-static {v2, v4}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$402(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;Z)Z

    .line 270
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$400(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 271
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->getIds()[I

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_99

    .line 273
    array-length v2, p1

    if-lez v2, :cond_99

    .line 274
    array-length v0, p1

    sub-int/2addr v0, v3

    aget v0, p1, v0

    .line 276
    :cond_99
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x22

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c3

    .line 279
    :cond_a7
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v2, v1, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x21

    .line 281
    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$300(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v1

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 279
    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_c3
    return-void
.end method
