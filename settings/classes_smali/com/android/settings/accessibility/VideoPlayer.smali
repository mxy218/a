.class public Lcom/android/settings/accessibility/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VideoPlayer$State;
    }
.end annotation


# instance fields
.field private animationSurface:Landroid/view/Surface;

.field private final context:Landroid/content/Context;

.field private mediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mediaPlayerLock"
    .end annotation
.end field

.field private final mediaPlayerLock:Ljava/lang/Object;

.field private mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mediaPlayerLock"
    .end annotation
.end field

.field private final videoRes:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/view/TextureView;)V
    .registers 5
    .param p2  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 61
    iput-object p1, p0, Lcom/android/settings/accessibility/VideoPlayer;->context:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->videoRes:I

    .line 63
    invoke-virtual {p3, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 57
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/accessibility/VideoPlayer;-><init>(Landroid/content/Context;ILandroid/view/TextureView;)V

    return-object v0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 101
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    .line 102
    iget-object p1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 103
    :try_start_a
    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->context:Landroid/content/Context;

    iget p3, p0, Lcom/android/settings/accessibility/VideoPlayer;->videoRes:I

    invoke-static {p2, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 104
    sget-object p2, Lcom/android/settings/accessibility/VideoPlayer$State;->PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 105
    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 108
    sget-object p2, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 109
    monitor-exit p1

    return-void

    :catchall_30
    move-exception p0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_30

    throw p0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VideoPlayer;->release()V

    const/4 p0, 0x0

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
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    if-eq v1, v2, :cond_1b

    .line 88
    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 89
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 90
    iput-object v3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    if-eqz v0, :cond_25

    .line 94
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 95
    iput-object v3, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 92
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method
