.class public Lcom/android/settings/widget/VideoPreference;
.super Landroidx/preference/Preference;
.source "VideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;
    }
.end annotation


# instance fields
.field mAnimationAvailable:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAnimationId:I

.field private mAspectRatio:F

.field private final mContext:Landroid/content/Context;

.field private mDetailBtn:Landroid/widget/Button;

.field private mHeight:I

.field mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPrefernceVisible:Z

.field private mPreviewResource:I

.field private mSurface:Landroid/view/Surface;

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field mVideoReady:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mViewBindedCallback:Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;

.field private mViewVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 57
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    .line 62
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    .line 67
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 57
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    .line 62
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    .line 73
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VideoPreference;)Landroid/view/Surface;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/widget/VideoPreference;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/VideoPreference;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mViewVisible:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/VideoPreference;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return p0
.end method

.method private initMediaPlayer()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_30

    .line 243
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 246
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$11ZtTKuj0NptN-aiEnQGgUzVvRE;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$11ZtTKuj0NptN-aiEnQGgUzVvRE;-><init>(Lcom/android/settings/widget/VideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_30

    .line 251
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_30
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 85
    :try_start_b
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-nez v0, :cond_14

    .line 86
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_16

    .line 87
    :cond_14
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    :goto_16
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    .line 88
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 92
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    const/4 v0, 0x1

    if-nez p1, :cond_45

    .line 93
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    goto :goto_47

    .line 94
    :cond_45
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    :goto_47
    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    .line 95
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    if-nez p1, :cond_55

    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_7d
    .catchall {:try_start_b .. :try_end_4f} :catchall_7b

    if-nez p1, :cond_55

    .line 116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 98
    :cond_55
    :try_start_55
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->initMediaPlayer()V

    .line 99
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_75

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mPrefernceVisible:Z

    .line 103
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const p1, 0x7f0d039b

    .line 104
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 105
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->updateAspectRatio()V

    goto :goto_84

    .line 109
    :cond_75
    iput-boolean v2, p0, Lcom/android/settings/widget/VideoPreference;->mPrefernceVisible:Z

    .line 111
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7a} :catch_7d
    .catchall {:try_start_55 .. :try_end_7a} :catchall_7b

    goto :goto_84

    :catchall_7b
    move-exception p0

    goto :goto_88

    :catch_7d
    :try_start_7d
    const-string p0, "VideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_7b

    .line 116
    :goto_84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic lambda$initMediaPlayer$2(Landroid/media/MediaPlayer;)V
    .registers 2

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    .line 259
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    :cond_17
    return-void
.end method


# virtual methods
.method public isPreferenceVisible()Z
    .registers 1

    .line 309
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mPrefernceVisible:Z

    return p0
.end method

.method public isVideoPaused()Z
    .registers 1

    .line 268
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return p0
.end method

.method public synthetic lambda$initMediaPlayer$1$VideoPreference(Landroid/media/MediaPlayer;)V
    .registers 2

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$VideoPreference(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 4

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->updateViewStates(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 8

    .line 122
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    const v0, 0x7f0a07be

    .line 128
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a07bb

    .line 129
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a07ba

    .line 130
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a07b9

    .line 131
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 134
    iget v4, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0a020c

    .line 137
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mDetailBtn:Landroid/widget/Button;

    .line 138
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mViewBindedCallback:Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;

    if-eqz p1, :cond_45

    iget-object v4, p0, Lcom/android/settings/widget/VideoPreference;->mDetailBtn:Landroid/widget/Button;

    invoke-interface {p1, v4}, Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;->onViewBinded(Landroid/view/View;)V

    .line 141
    :cond_45
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 142
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    const/4 v4, -0x1

    if-lt p1, v4, :cond_57

    .line 143
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    :cond_57
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/VideoPreference;->updateViewStates(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 148
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance p1, Lcom/android/settings/widget/VideoPreference$1;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/VideoPreference$1;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onDetached()V
    .registers 1

    .line 212
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseMediaPlayer()V

    .line 213
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onViewInvisible()V
    .registers 2

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mViewVisible:Z

    .line 224
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseMediaPlayer()V

    return-void
.end method

.method public onViewVisible(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mViewVisible:Z

    .line 218
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    .line 219
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->initMediaPlayer()V

    return-void
.end method

.method public setHeight(F)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 276
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    return-void
.end method

.method public setOnViewBindedCallback(Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mViewBindedCallback:Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;

    return-void
.end method

.method public setVideo(II)V
    .registers 3

    .line 235
    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    .line 236
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    .line 237
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseMediaPlayer()V

    .line 238
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method updateAspectRatio()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    return-void
.end method

.method updateViewStates(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 196
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 197
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 198
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    goto :goto_29

    :cond_1a
    const/16 v0, 0x8

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    :cond_29
    :goto_29
    return-void
.end method
