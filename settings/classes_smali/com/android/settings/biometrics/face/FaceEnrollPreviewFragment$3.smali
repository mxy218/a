.class Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "FaceEnrollPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 170
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 171
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$302(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 3

    .line 176
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 177
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$302(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$302(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 121
    :try_start_5
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$400(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$500(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$500(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 125
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    .line 129
    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$300(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 128
    invoke-static {p1, v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$602(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 130
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$600(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$300(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    new-array v1, v2, [Landroid/view/Surface;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_5c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 164
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_61
    return-void
.end method
