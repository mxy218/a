.class public Lcom/meizu/common/widget/VideoTextureView;
.super Landroid/view/TextureView;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;
    }
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/VideoTextureView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/VideoTextureView;)Landroid/view/Surface;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/common/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/VideoTextureView;)Landroid/net/Uri;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method private init()V
    .registers 1

    .line 47
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 69
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/meizu/common/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 70
    iget-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    if-nez p1, :cond_18

    .line 71
    new-instance p1, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;-><init>(Lcom/meizu/common/widget/VideoTextureView;Lcom/meizu/common/widget/VideoTextureView$1;)V

    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 72
    iget-object p0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_18
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 83
    iget-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    iget-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public setSourceUri(Landroid/net/Uri;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    return-void
.end method
