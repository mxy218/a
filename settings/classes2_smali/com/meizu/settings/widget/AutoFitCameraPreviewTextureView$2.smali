.class Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;
.super Ljava/lang/Object;
.source "AutoFitCameraPreviewTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 79
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

    const-string v1, "CameraPreviewTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3c

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->setSurfaceTextureDefaultBufferSize()V

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$400(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$400(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;->onSurfaceTextureAvailableCallback(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_41

    :cond_3c
    const-string p1, "onSurfaceTextureAvailable texture == null"

    .line 86
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    if-le p2, p3, :cond_5c

    .line 90
    iget-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p2, p2

    invoke-static {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$600(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$502(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    .line 91
    iget-object p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p1, p3

    invoke-static {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$800(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$702(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    goto :goto_74

    .line 93
    :cond_5c
    iget-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p2, p2

    invoke-static {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$800(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$502(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    .line 94
    iget-object p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p1, p3

    invoke-static {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$600(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$702(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    :goto_74
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const-string p0, "CameraPreviewTexture"

    const-string p1, "onSurfaceTextureDestroyed"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2f

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$800(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    invoke-static {v1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$600(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_2f
    if-le p2, p3, :cond_4a

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p2, p2

    invoke-static {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$600(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$502(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    .line 107
    iget-object p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p1, p3

    invoke-static {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$800(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$702(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    goto :goto_62

    .line 109
    :cond_4a
    iget-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p2, p2

    invoke-static {p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$800(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$502(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;->this$0:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;

    int-to-float p1, p3

    invoke-static {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$600(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->access$702(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F

    :goto_62
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    const-string p0, "CameraPreviewTexture"

    const-string p1, "onSurfaceTextureUpdated"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
