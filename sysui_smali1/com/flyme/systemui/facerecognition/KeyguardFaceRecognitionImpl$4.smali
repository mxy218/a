.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;
.source "KeyguardFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWarmUpHardwareDeviceResult(Lcom/meizu/facerecognition/manager/CameraPreviewProperty;)V
    .registers 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWarmUpHardwareDeviceResult ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
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

    const-string v1, "KeyguardFaceRecognitionImpl"

    .line 157
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 160
    invoke-virtual {p1}, Lcom/meizu/facerecognition/manager/CameraPreviewProperty;->getCameraIsOpen()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 161
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onCameraPreviewLaunchSucceed(Z)V

    goto :goto_57

    .line 163
    :cond_4e
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$4;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onCameraPreviewLaunchError()V

    :cond_57
    :goto_57
    return-void
.end method
