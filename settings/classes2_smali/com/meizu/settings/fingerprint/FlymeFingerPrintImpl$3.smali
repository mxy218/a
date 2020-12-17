.class Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;
.super Ljava/util/TimerTask;
.source "FlymeFingerPrintImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->startCountDownTimer()V
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

    .line 422
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timer running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$800(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFingerPrintImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v1, v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    const/16 v3, 0x105

    .line 428
    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$810(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v0

    .line 427
    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$800(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    .line 430
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;->access$1200(Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;)V

    :cond_3e
    return-void
.end method
