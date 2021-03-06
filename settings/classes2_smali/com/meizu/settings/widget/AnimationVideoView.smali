.class public Lcom/meizu/settings/widget/AnimationVideoView;
.super Landroid/view/TextureView;
.source "AnimationVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private fixedHeight:I

.field private fixedWidth:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLooping:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mLooping:Z

    .line 190
    new-instance p1, Lcom/meizu/settings/widget/AnimationVideoView$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/AnimationVideoView$1;-><init>(Lcom/meizu/settings/widget/AnimationVideoView;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 209
    new-instance p1, Lcom/meizu/settings/widget/AnimationVideoView$2;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/AnimationVideoView$2;-><init>(Lcom/meizu/settings/widget/AnimationVideoView;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mLooping:Z

    .line 190
    new-instance p1, Lcom/meizu/settings/widget/AnimationVideoView$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/AnimationVideoView$1;-><init>(Lcom/meizu/settings/widget/AnimationVideoView;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 209
    new-instance p1, Lcom/meizu/settings/widget/AnimationVideoView$2;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/AnimationVideoView$2;-><init>(Lcom/meizu/settings/widget/AnimationVideoView;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mLooping:Z

    .line 190
    new-instance p1, Lcom/meizu/settings/widget/AnimationVideoView$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/AnimationVideoView$1;-><init>(Lcom/meizu/settings/widget/AnimationVideoView;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 209
    new-instance p1, Lcom/meizu/settings/widget/AnimationVideoView$2;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/AnimationVideoView$2;-><init>(Lcom/meizu/settings/widget/AnimationVideoView;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 45
    invoke-direct {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/AnimationVideoView;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mLooping:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/AnimationVideoView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/widget/AnimationVideoView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/AnimationVideoView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/widget/AnimationVideoView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/AnimationVideoView;II)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/AnimationVideoView;->transformVideo(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/AnimationVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method private initView()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    .line 50
    iput v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {p0}, Landroid/view/TextureView;->requestFocus()Z

    .line 54
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private openVideo()V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_9

    goto :goto_71

    .line 262
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_14

    .line 263
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 265
    :cond_14
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 267
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 268
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 269
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 272
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const-string v0, "AnimationVideoView"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo: [CPUDebug] openVideo new MP,this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_71
    :goto_71
    return-void
.end method

.method private transformVideo(II)V
    .registers 10

    .line 142
    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedHeight()I

    move-result v0

    const-string v1, "AnimationVideoView"

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedWidth()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_cb

    .line 146
    :cond_10
    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    .line 147
    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transformVideo, sx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transformVideo, sy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 152
    iget-object v3, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_56

    .line 153
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_59

    .line 155
    :cond_56
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 159
    :goto_59
    iget-object v3, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedWidth()I

    move-result v5

    sub-int/2addr v5, p1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedHeight()I

    move-result v6

    sub-int/2addr v6, p2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 162
    iget-object v3, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 165
    iget-object v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transformVideo, minScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 170
    invoke-virtual {p0}, Landroid/view/TextureView;->postInvalidate()V

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "transformVideo, videoWidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",videoHeight="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_cb
    :goto_cb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "transformVideo, getResizedHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",getResizedWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->getResizedWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public getResizedHeight()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->fixedHeight:I

    if-nez v0, :cond_9

    .line 184
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    return p0

    :cond_9
    return v0
.end method

.method public getResizedWidth()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->fixedWidth:I

    if-nez v0, :cond_9

    .line 176
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result p0

    return p0

    :cond_9
    return v0
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 84
    iget v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    .line 85
    iget v1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    .line 86
    iget v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    if-lez v2, :cond_7e

    iget v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    if-lez v2, :cond_7e

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 91
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_42

    if-ne v1, v2, :cond_42

    .line 99
    iget v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_38

    mul-int/2addr v0, p2

    .line 100
    div-int/2addr v0, v2

    move v1, p2

    goto :goto_7e

    :cond_38
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_61

    mul-int/2addr v2, p1

    .line 102
    div-int v1, v2, v0

    goto :goto_7f

    :cond_42
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_53

    .line 107
    iget v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_51

    if-le v0, p2, :cond_51

    goto :goto_5f

    :cond_51
    move v1, v0

    goto :goto_7f

    :cond_53
    if-ne v1, v2, :cond_63

    .line 115
    iget v1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_60

    if-le v1, p1, :cond_60

    :goto_5f
    goto :goto_61

    :cond_60
    move p1, v1

    :cond_61
    :goto_61
    move v1, p2

    goto :goto_7f

    .line 122
    :cond_63
    iget v2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    .line 123
    iget v4, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_6f

    if-le v4, p2, :cond_6f

    mul-int/2addr v2, p2

    .line 127
    div-int/2addr v2, v4

    move v1, p2

    goto :goto_70

    :cond_6f
    move v1, v4

    :goto_70
    if-ne v0, v3, :cond_7c

    if-le v2, p1, :cond_7c

    .line 132
    iget p2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_7f

    :cond_7c
    move p1, v2

    goto :goto_7f

    :cond_7e
    :goto_7e
    move p1, v0

    .line 138
    :goto_7f
    invoke-virtual {p0, p1, v1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 59
    iget-object p2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSurface:Landroid/view/Surface;

    if-nez p2, :cond_b

    .line 60
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSurface:Landroid/view/Surface;

    .line 62
    :cond_b
    invoke-direct {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->openVideo()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mSurface:Landroid/view/Surface;

    .line 73
    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->release()V

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

.method public release()V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release(): [CPUDebug],this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 296
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 297
    iget-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_33
    return-void
.end method

.method public setLooping(Z)V
    .registers 2

    .line 303
    iput-boolean p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mLooping:Z

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 2

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/AnimationVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/widget/AnimationVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mUri:Landroid/net/Uri;

    .line 243
    iput-object p2, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mHeaders:Ljava/util/Map;

    .line 244
    invoke-direct {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->openVideo()V

    .line 245
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 246
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method public start()V
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/meizu/settings/widget/AnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_7

    .line 282
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_7
    return-void
.end method
