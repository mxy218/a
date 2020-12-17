.class Lcom/meizu/settings/widget/AnimationVideoView$1;
.super Ljava/lang/Object;
.source "AnimationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 191
    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onVideoSizeChanged: [CPUDebug],mLooping="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p3}, Lcom/meizu/settings/widget/AnimationVideoView;->access$000(Lcom/meizu/settings/widget/AnimationVideoView;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mp="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mMp="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p3}, Lcom/meizu/settings/widget/AnimationVideoView;->access$100(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AnimationVideoView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p2, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-static {p2, v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$202(Lcom/meizu/settings/widget/AnimationVideoView;I)I

    .line 195
    iget-object p2, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$302(Lcom/meizu/settings/widget/AnimationVideoView;I)I

    .line 201
    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p1

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p1

    if-eqz p1, :cond_a6

    .line 202
    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p2}, Lcom/meizu/settings/widget/AnimationVideoView;->access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p2

    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 203
    iget-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p1}, Lcom/meizu/settings/widget/AnimationVideoView;->access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p2

    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$400(Lcom/meizu/settings/widget/AnimationVideoView;II)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 204
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {v0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView$1;->this$0:Lcom/meizu/settings/widget/AnimationVideoView;

    invoke-static {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "OnVideoSizeChangedListener, mVideoWidth=%d,mVideoHeight=%d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return-void
.end method
