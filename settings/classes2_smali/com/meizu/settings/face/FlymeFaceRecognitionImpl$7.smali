.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;
.source "FlymeFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->startVerify(Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWarmUpHardwareDeviceResult(Lcom/meizu/facerecognition/manager/CameraPreviewProperty;)V
    .registers 9

    if-eqz p1, :cond_94

    .line 334
    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraIsOpen()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start face compare, onWarmUpHardwareDeviceResult ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraIsOpen()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRecognitionImpl"

    .line 335
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/CancellationSignal;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 338
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/CancellationSignal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 340
    :cond_4e
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1302(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 341
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/CancellationSignal;

    move-result-object v2

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    .line 342
    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1400(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    move-result-object v4

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object v5

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v6

    .line 341
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->authenticate(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 343
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 344
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x1f44

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_94

    .line 347
    :cond_8f
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$7;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-virtual {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->closeHardwareDevice()Z

    :cond_94
    :goto_94
    return-void
.end method
