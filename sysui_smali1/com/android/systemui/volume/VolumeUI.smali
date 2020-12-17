.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$VolumeController;
    }
.end annotation


# static fields
.field private static final SETTING_URI:Landroid/net/Uri;

.field public static volumeUI:Lcom/android/systemui/volume/VolumeUI;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPanel:Lcom/android/systemui/volume/VolumePanel;

.field private mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "systemui_volume_controller"

    .line 47
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$1;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeUI;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    return-object p0
.end method

.method private updateController()V
    .registers 3

    const-string v0, "VolumeUI"

    const-string v1, "[GJ_DEBUG] Registering volume controller"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz p0, :cond_9

    const-wide/16 v0, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    :cond_9
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 85
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz p0, :cond_7

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz p0, :cond_a

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public start()V
    .registers 4

    .line 63
    sput-object p0, Lcom/android/systemui/volume/VolumeUI;->volumeUI:Lcom/android/systemui/volume/VolumeUI;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 67
    new-instance v0, Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    .line 68
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$VolumeController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    .line 70
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
