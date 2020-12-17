.class Lcom/meizu/settings/widget/AnimationVideoView$2;
.super Ljava/lang/Object;
.source "AnimationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/AnimationVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/AnimationVideoView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/AnimationVideoView;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared: [CPUDebug],mLooping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$000(Lcom/meizu/settings/widget/AnimationVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mMp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$100(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$500(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 214
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$500(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$100(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 217
    :cond_51
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$202(Lcom/meizu/settings/widget/AnimationVideoView;I)I

    .line 218
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$302(Lcom/meizu/settings/widget/AnimationVideoView;I)I

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$000(Lcom/meizu/settings/widget/AnimationVideoView;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 224
    :cond_6f
    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p1

    if-eqz p1, :cond_9a

    .line 225
    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 226
    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->start()V

    goto :goto_9f

    .line 228
    :cond_9a
    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView$2;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->start()V

    :goto_9f
    return-void
.end method
