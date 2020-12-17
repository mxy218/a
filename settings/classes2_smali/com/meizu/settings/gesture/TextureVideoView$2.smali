.class Lcom/meizu/settings/gesture/TextureVideoView$2;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/gesture/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/gesture/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/gesture/TextureVideoView;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared: [CPUDebug],mLooping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$000(Lcom/meizu/settings/gesture/TextureVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mMp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$100(Lcom/meizu/settings/gesture/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUITools.TextureVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v0}, Lcom/meizu/settings/gesture/TextureVideoView;->access$500(Lcom/meizu/settings/gesture/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 219
    iget-object v0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v0}, Lcom/meizu/settings/gesture/TextureVideoView;->access$500(Lcom/meizu/settings/gesture/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$100(Lcom/meizu/settings/gesture/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 222
    :cond_51
    iget-object v0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$202(Lcom/meizu/settings/gesture/TextureVideoView;I)I

    .line 223
    iget-object v0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$302(Lcom/meizu/settings/gesture/TextureVideoView;I)I

    .line 225
    iget-object v0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v0}, Lcom/meizu/settings/gesture/TextureVideoView;->access$000(Lcom/meizu/settings/gesture/TextureVideoView;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 229
    :cond_6f
    iget-object p1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {p1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$200(Lcom/meizu/settings/gesture/TextureVideoView;)I

    move-result p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {p1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$300(Lcom/meizu/settings/gesture/TextureVideoView;)I

    move-result p1

    if-eqz p1, :cond_9a

    .line 231
    iget-object p1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v0}, Lcom/meizu/settings/gesture/TextureVideoView;->access$200(Lcom/meizu/settings/gesture/TextureVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v1}, Lcom/meizu/settings/gesture/TextureVideoView;->access$300(Lcom/meizu/settings/gesture/TextureVideoView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 232
    iget-object p0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p0}, Lcom/meizu/settings/gesture/TextureVideoView;->start()V

    goto :goto_9f

    .line 234
    :cond_9a
    iget-object p0, p0, Lcom/meizu/settings/gesture/TextureVideoView$2;->this$0:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p0}, Lcom/meizu/settings/gesture/TextureVideoView;->start()V

    :goto_9f
    return-void
.end method
