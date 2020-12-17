.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$1;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;
.source "FlymeFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;
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

    .line 60
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$1;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWarmUpHardwareDeviceResult(Lcom/meizu/facerecognition/manager/CameraPreviewProperty;)V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$1;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_59

    if-eqz p1, :cond_59

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWarmUpHardwareDeviceResult ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraIsOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionImpl"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    .line 69
    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraIsOpen()Z

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 71
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$1;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_59
    return-void
.end method
