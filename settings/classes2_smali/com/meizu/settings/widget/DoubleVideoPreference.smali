.class public Lcom/meizu/settings/widget/DoubleVideoPreference;
.super Landroid/preference/Preference;
.source "DoubleVideoPreference.java"


# instance fields
.field private mAnimationAvailable:Z

.field private mAnimationId1:I

.field private mAnimationId2:I

.field private mAspectRatio:F

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mMediaPlayer1:Landroid/media/MediaPlayer;

.field private mMediaPlayer2:Landroid/media/MediaPlayer;

.field private mStarted:Z

.field private mSurface1:Landroid/view/Surface;

.field private mSurface2:Landroid/view/Surface;

.field private mSurfaceUpdate1:Z

.field private mSurfaceUpdate2:Z

.field private mVideoPath1:Landroid/net/Uri;

.field private mVideoPath2:Landroid/net/Uri;

.field private mVideoPrepared1:Z

.field private mVideoPrepared2:Z

.field private mVideoReady1:Z

.field private mVideoReady2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 80
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationAvailable:Z

    .line 59
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady1:Z

    .line 60
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady2:Z

    const/high16 v1, 0x3f800000  # 1.0f

    .line 62
    iput v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAspectRatio:F

    const/4 v1, -0x2

    .line 68
    iput v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mHeight:I

    .line 71
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPrepared1:Z

    .line 72
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPrepared2:Z

    .line 74
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate1:Z

    .line 75
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate2:Z

    .line 77
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mStarted:Z

    .line 81
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationAvailable:Z

    .line 59
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady1:Z

    .line 60
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady2:Z

    const/high16 v1, 0x3f800000  # 1.0f

    .line 62
    iput v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAspectRatio:F

    const/4 v1, -0x2

    .line 68
    iput v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mHeight:I

    .line 71
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPrepared1:Z

    .line 72
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPrepared2:Z

    .line 74
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate1:Z

    .line 75
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate2:Z

    .line 77
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mStarted:Z

    .line 87
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/DoubleVideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/view/Surface;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurface1:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/widget/DoubleVideoPreference;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurface1:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$202(Lcom/meizu/settings/widget/DoubleVideoPreference;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate1:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/media/MediaPlayer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/DoubleVideoPreference;)Landroid/view/Surface;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurface2:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/widget/DoubleVideoPreference;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurface2:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meizu/settings/widget/DoubleVideoPreference;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate2:Z

    return p1
.end method

.method private initMediaPlayer()V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_33

    .line 251
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPath1:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    .line 252
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33

    .line 253
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$OwlgHyZZQaLL4G9P4PrUTK9hOLA;

    invoke-direct {v2, p0}, Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$OwlgHyZZQaLL4G9P4PrUTK9hOLA;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/meizu/settings/widget/DoubleVideoPreference$4;

    invoke-direct {v2, p0}, Lcom/meizu/settings/widget/DoubleVideoPreference$4;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 264
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurface1:Landroid/view/Surface;

    if-eqz v0, :cond_33

    .line 265
    iget-object v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 270
    :cond_33
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    if-nez v0, :cond_65

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPath2:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    .line 272
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_65

    .line 273
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 274
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$qHebOPusylMPlOUuQ644bBq8PAY;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$qHebOPusylMPlOUuQ644bBq8PAY;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/meizu/settings/widget/DoubleVideoPreference$5;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/DoubleVideoPreference$5;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 284
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurface2:Landroid/view/Surface;

    if-eqz v0, :cond_65

    .line 285
    iget-object p0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_65
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const-string v0, "android.resource"

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/R$styleable;->DoubleVideoPreference:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 99
    :try_start_d
    iget v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId1:I

    if-nez v1, :cond_16

    .line 100
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_18

    .line 101
    :cond_16
    iget v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId1:I

    :goto_18
    iput v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId1:I

    .line 102
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId1:I

    .line 104
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPath1:Landroid/net/Uri;

    .line 106
    iget v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId2:I

    const/4 v2, 0x1

    if-nez v1, :cond_45

    .line 107
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_47

    .line 108
    :cond_45
    iget v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId2:I

    :goto_47
    iput v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId2:I

    .line 109
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId2:I

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPath2:Landroid/net/Uri;

    .line 113
    iget p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId1:I

    if-nez p1, :cond_76

    iget p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationId2:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_70} :catch_9f
    .catchall {:try_start_d .. :try_end_70} :catchall_9d

    if-nez p1, :cond_76

    .line 131
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 116
    :cond_76
    :try_start_76
    invoke-direct {p0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->initMediaPlayer()V

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_a6

    iget-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    .line 118
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_a6

    const p1, 0x7f0d00d2

    .line 120
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 121
    iput-boolean v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationAvailable:Z

    .line 122
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setRecycleEnabled(Z)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9c} :catch_9f
    .catchall {:try_start_76 .. :try_end_9c} :catchall_9d

    goto :goto_a6

    :catchall_9d
    move-exception p0

    goto :goto_aa

    :catch_9f
    :try_start_9f
    const-string p0, "DoubleVideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_9d

    .line 131
    :cond_a6
    :goto_a6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_aa
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private releaseMediaPlayer()V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 293
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 294
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 295
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 296
    iput-object v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer1:Landroid/media/MediaPlayer;

    .line 297
    iput-boolean v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady1:Z

    .line 298
    iput-boolean v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPrepared1:Z

    .line 301
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    .line 302
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 303
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 304
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 305
    iput-object v1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    .line 306
    iput-boolean v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady2:Z

    .line 307
    iput-boolean v2, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoPrepared2:Z

    :cond_30
    return-void
.end method


# virtual methods
.method public synthetic lambda$initMediaPlayer$0$DoubleVideoPreference(Landroid/media/MediaPlayer;)V
    .registers 2

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady1:Z

    return-void
.end method

.method public synthetic lambda$initMediaPlayer$1$DoubleVideoPreference(Landroid/media/MediaPlayer;)V
    .registers 2

    const/4 p1, 0x1

    .line 274
    iput-boolean p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady2:Z

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    .line 137
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 139
    iget-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    const v0, 0x7f0a07bf

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a07c0

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 155
    new-instance v1, Lcom/meizu/settings/widget/DoubleVideoPreference$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/DoubleVideoPreference$1;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 182
    new-instance v0, Lcom/meizu/settings/widget/DoubleVideoPreference$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/DoubleVideoPreference$2;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onPrepareForRemoval()V
    .registers 2

    .line 212
    invoke-direct {p0}, Lcom/meizu/settings/widget/DoubleVideoPreference;->releaseMediaPlayer()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate1:Z

    .line 214
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate2:Z

    .line 215
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mStarted:Z

    .line 216
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    return-void
.end method

.method public tryStartVideo()V
    .registers 2

    .line 220
    iget-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady1:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mVideoReady2:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate1:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mSurfaceUpdate2:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mStarted:Z

    if-nez v0, :cond_2e

    .line 222
    new-instance v0, Lcom/meizu/settings/widget/DoubleVideoPreference$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/DoubleVideoPreference$3;-><init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 231
    iget-object v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mMediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2b
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/meizu/settings/widget/DoubleVideoPreference;->mStarted:Z

    :cond_2e
    return-void
.end method
