.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

.field final synthetic val$cameraPreviewTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 283
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->val$cameraPreviewTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 287
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    .line 288
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_25

    .line 289
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->val$cameraPreviewTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1402(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/Surface;)Landroid/view/Surface;

    .line 291
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    .line 292
    invoke-static {v2}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v3}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v4}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    .line 291
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->warmUpHardwareDeviceForPreview(Landroid/view/Surface;Landroid/os/Handler;II)Z

    .line 293
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$3;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_62
    return-void
.end method
