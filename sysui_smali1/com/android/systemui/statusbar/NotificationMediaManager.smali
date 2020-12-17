.class public Lcom/android/systemui/statusbar/NotificationMediaManager;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final PAUSED_MEDIA_STATES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mHandler:Landroid/os/Handler;

.field protected final mHideBackdropFront:Ljava/lang/Runnable;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private final mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaListener:Landroid/media/session/MediaController$Callback;

.field private final mMediaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mProcessArtworkTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/AsyncTask<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCompactMediaSeekbar:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    .line 101
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/MediaArtworkProcessor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 95
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 96
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 97
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 124
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 158
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 667
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 193
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 194
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    .line 195
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    .line 197
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    const-string p5, "media_session"

    .line 198
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 201
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShadeController:Ldagger/Lazy;

    .line 202
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarWindowController:Ldagger/Lazy;

    .line 203
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 204
    new-instance p1, Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    const-string/jumbo p1, "systemui"

    const-string p2, "compact_media_notification_seekbar_enabled"

    .line 215
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "true"

    .line 214
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    .line 218
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 218
    invoke-static {p1, p2, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationMediaManager;Z)Z
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlaybackActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V
    .registers 3

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/MediaArtworkProcessor;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Landroid/widget/ImageView;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    return-object p0
.end method

.method private clearCurrentMediaNotificationSession()V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->clearCache()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_11

    .line 442
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 444
    :cond_11
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method

.method private dispatchUpdateMediaMetaData(ZZ)V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_7

    .line 380
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 382
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result p1

    .line 383
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 384
    :goto_15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 385
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;->onMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    return-void
.end method

.method private finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p3, :cond_f

    .line 510
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    if-nez v1, :cond_3a

    .line 516
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_23

    :cond_22
    move-object v5, v0

    :goto_23
    if-eqz v5, :cond_3a

    .line 518
    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 519
    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 522
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v5

    if-ne v5, v2, :cond_3a

    move v5, v2

    goto :goto_3b

    :cond_3a
    move v5, v3

    .line 526
    :goto_3b
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 527
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarWindowController:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v6, :cond_55

    .line 528
    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v8

    if-eqz v8, :cond_55

    move v8, v2

    goto :goto_56

    :cond_55
    move v8, v3

    :goto_56
    if-eqz v1, :cond_5a

    move v1, v2

    goto :goto_5b

    :cond_5a
    move v1, v3

    .line 531
    :goto_5b
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v9, v4}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setHasMediaArtwork(Z)V

    .line 532
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v9, :cond_67

    .line 533
    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setHasBackdrop(Z)V

    :cond_67
    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v1, :cond_6d

    goto/16 :goto_129

    .line 536
    :cond_6d
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 537
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-nez v1, :cond_77

    if-eqz v5, :cond_129

    :cond_77
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v1, :cond_129

    .line 538
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    if-eq v1, v9, :cond_129

    if-nez v8, :cond_129

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_b2

    if-eqz p2, :cond_9e

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 546
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_ac

    .line 548
    :cond_9e
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 549
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_ac
    if-eqz v7, :cond_b1

    .line 552
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowing(Z)V

    :cond_b1
    move p1, v2

    :cond_b2
    if-eqz p1, :cond_1bf

    .line 560
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_f1

    .line 561
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 562
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 563
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_db

    .line 565
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e6

    .line 567
    :cond_db
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 569
    :goto_e6
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 570
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f7

    .line 572
    :cond_f1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f7
    if-eqz v4, :cond_ff

    .line 582
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10a

    .line 584
    :cond_ff
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 588
    :goto_10a
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1bf

    .line 595
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 596
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 597
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1bf

    .line 603
    :cond_129
    :goto_129
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1bf

    if-eqz v6, :cond_144

    .line 608
    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_144

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 609
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result p1

    if-nez p1, :cond_144

    goto :goto_145

    :cond_144
    move v2, v3

    .line 610
    :goto_145
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isBypassFadingAnimation()Z

    move-result p1

    .line 611
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz p3, :cond_155

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p3

    if-eq p3, v9, :cond_157

    :cond_155
    if-eqz v2, :cond_159

    :cond_157
    if-eqz p1, :cond_15b

    :cond_159
    if-eqz v8, :cond_16b

    .line 617
    :cond_15b
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 618
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_1bf

    .line 620
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowing(Z)V

    goto :goto_1bf

    :cond_16b
    if-eqz v7, :cond_170

    .line 624
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowing(Z)V

    .line 627
    :cond_170
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_1bf

    .line 628
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 629
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 630
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 631
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x0

    .line 632
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$5ApBYxWBRgBH6AkWUHgwLiCFqEk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$5ApBYxWBRgBH6AkWUHgwLiCFqEk;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 633
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 640
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 641
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 642
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 643
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 644
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1bf
    :goto_1bf
    return-void
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .registers 2

    if-eqz p1, :cond_d

    .line 426
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 428
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private isPlaybackActive(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_9

    const/4 v0, 0x7

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isPlayingState(I)Z
    .registers 2

    .line 224
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private processArtwork(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 421
    :cond_8
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 267
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result p0

    .line 266
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;->onMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    return-void
.end method

.method public clearCurrentMediaNotification()V
    .registers 2

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "    mMediaSessionManager="

    .line 391
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "    mMediaNotificationKey="

    .line 393
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    mMediaController="

    .line 395
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 397
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_3c

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    :cond_3c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "    mMediaMetadata="

    .line 401
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 403
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz p1, :cond_69

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " title="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string p3, "android.media.metadata.TITLE"

    invoke-virtual {p0, p3}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    :cond_69
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .registers 14

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    monitor-enter v0

    .line 278
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 279
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ge v4, v2, :cond_4a

    .line 286
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 288
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 289
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 290
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.mediaSession"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/media/session/MediaSession$Token;

    if-eqz v8, :cond_47

    .line 293
    new-instance v9, Landroid/media/session/MediaController;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 295
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v8

    if-ne v5, v8, :cond_47

    goto :goto_4c

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_4a
    move-object v7, v6

    move-object v9, v7

    :goto_4c
    if-nez v7, :cond_8e

    .line 312
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v4, :cond_8e

    .line 314
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v8, -0x1

    .line 315
    invoke-virtual {v4, v6, v8}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 319
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5d
    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaController;

    .line 321
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v8

    if-ne v5, v8, :cond_5d

    .line 323
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move v10, v3

    :goto_74
    if-ge v10, v2, :cond_5d

    .line 326
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 327
    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8b

    move-object v9, v6

    move-object v7, v11

    goto :goto_5d

    :cond_8b
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    :cond_8e
    const/4 v1, 0x1

    if-eqz v9, :cond_ae

    .line 342
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v2, v9}, Lcom/android/systemui/statusbar/NotificationMediaManager;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    .line 345
    iput-object v9, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 347
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    move v3, v1

    :cond_ae
    if-eqz v7, :cond_c6

    .line 356
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 357
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 358
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 364
    :cond_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_7 .. :try_end_c7} :catchall_d2

    if-eqz v3, :cond_ce

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 370
    :cond_ce
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    return-void

    :catchall_d2
    move-exception p0

    .line 364
    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->processArtwork(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getMediaIcon()Landroid/graphics/drawable/Icon;
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    monitor-enter v0

    .line 255
    :try_start_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v2, :cond_20

    goto :goto_28

    .line 260
    :cond_20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 257
    :cond_28
    :goto_28
    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception p0

    .line 261
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata;
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method public getMediaNotificationKey()Ljava/lang/String;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getShowCompactMediaSeekbar()Z
    .registers 1

    .line 247
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    return p0
.end method

.method public synthetic lambda$finishUpdateMediaMetaData$0$NotificationMediaManager()V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationRemoved(Ljava/lang/String;)V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    const/4 p1, 0x1

    .line 234
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    :cond_f
    return-void
.end method

.method public setBackdropAlpha(F)V
    .registers 2

    .line 755
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-eqz p0, :cond_7

    .line 756
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public setBackdropVisible(I)V
    .registers 2

    .line 761
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-eqz p0, :cond_7

    .line 762
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .registers 2

    .line 661
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-void
.end method

.method public setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V
    .registers 6

    .line 653
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 654
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 655
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 656
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 657
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    return-void
.end method

.method public updateBackdropView()V
    .registers 1

    .line 750
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->run()V

    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .registers 6

    const-string v0, "StatusBar#updateMediaMetaData"

    .line 451
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v0, :cond_d

    .line 458
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 462
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 463
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 464
    :goto_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isLaunchTransitionFadingAway()Z

    move-result v2

    if-nez v2, :cond_66

    if-eqz v0, :cond_26

    goto :goto_66

    .line 470
    :cond_26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "android.media.metadata.ART"

    .line 482
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_41

    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 484
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_41
    if-eqz p1, :cond_5e

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    .line 492
    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_49

    .line 494
    :cond_59
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_5e
    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V

    .line 503
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 465
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 466
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
