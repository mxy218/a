.class public Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;
.super Ljava/lang/Object;
.source "MusicPresenter.java"


# instance fields
.field private mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRegisterRemoteControl:Z

.field private mRemoteController:Landroid/media/RemoteController;

.field private mState:I

.field private mTitle:Ljava/lang/String;

.field private mUpdateMusicVisible:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flyme/systemuitools/aod/view/IAODDisplay;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;-><init>(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 151
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;-><init>(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mUpdateMusicVisible:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mContext:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    iput-object p2, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mState:I

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;I)I
    .registers 2

    .line 21
    iput p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/Runnable;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mUpdateMusicVisible:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAlbum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAlbum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mArtist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Landroid/content/Context;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;I)Z
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->isMusicPlaying(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    return-object p0
.end method

.method private isMusicPlaying(I)Z
    .registers 2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_a

    const/16 p0, 0x8

    if-ne p1, p0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method private resetMusicState()V
    .registers 2

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mState:I

    .line 148
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mUpdateMusicVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public closeMediaSession()V
    .registers 3

    .line 75
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRegisterRemoteControl:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_13

    .line 76
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRemoteController:Landroid/media/RemoteController;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRegisterRemoteControl:Z

    :cond_13
    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public openMediaSession()V
    .registers 5

    .line 58
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->resetMusicState()V

    .line 59
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRegisterRemoteControl:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3b

    .line 60
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRemoteController:Landroid/media/RemoteController;

    const/4 v1, 0x1

    if-nez v0, :cond_32

    .line 61
    new-instance v0, Landroid/media/RemoteController;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v0, v2, v3}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRemoteController:Landroid/media/RemoteController;

    .line 63
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 65
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 67
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2, v1, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 69
    :cond_32
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 70
    iput-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mRegisterRemoteControl:Z

    :cond_3b
    return-void
.end method

.method public setAODMusicView(Lcom/flyme/systemuitools/aod/view/AODMusicView;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    return-void
.end method
