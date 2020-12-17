.class Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;->this$1:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;->this$1:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    iget-object p0, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {p0}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
