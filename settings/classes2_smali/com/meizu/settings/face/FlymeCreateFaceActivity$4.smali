.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->initCreatFaceTipsViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailableCallback(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeCreateFaceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_57

    .line 448
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_41

    .line 450
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1402(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Landroid/view/Surface;)Landroid/view/Surface;

    .line 452
    :cond_41
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Surface;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$4;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->warmUpHardwareDeviceForPreview(Landroid/view/Surface;Landroid/os/Handler;II)Z

    goto :goto_5c

    :cond_57
    const-string p0, "onSurfaceTextureAvailable texture == null"

    .line 454
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method
