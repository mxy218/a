.class Lcom/meizu/settings/widget/DoubleVideoPreference$2;
.super Ljava/lang/Object;
.source "DoubleVideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/DoubleVideoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 186
    iget-object p2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-static {p2}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$300(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 187
    iget-object p2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$402(Lcom/meizu/settings/widget/DoubleVideoPreference;Landroid/view/Surface;)Landroid/view/Surface;

    .line 188
    iget-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-static {p1}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$300(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$400(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_21
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 204
    iget-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->access$502(Lcom/meizu/settings/widget/DoubleVideoPreference;Z)Z

    .line 205
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->tryStartVideo()V

    return-void
.end method
