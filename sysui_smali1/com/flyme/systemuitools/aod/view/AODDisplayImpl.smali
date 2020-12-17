.class public Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;
.super Ljava/lang/Object;
.source "AODDisplayImpl.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/view/IAODDisplay;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

.field private mAODViewAdded:Z

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDateBaseView:Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;

.field private mDetachAODView:Ljava/lang/Runnable;

.field private mDisplaySizeObserver:Landroid/database/ContentObserver;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mMusicPlaying:Z

.field private mMusicPresenter:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

.field private mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

.field private mPosition:I

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mStartShowAnimation:Ljava/lang/Runnable;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AODDisplayImpl"

    .line 50
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 73
    new-instance v0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;-><init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDetachAODView:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$2;-><init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mStartShowAnimation:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mWM:Landroid/view/WindowManager;

    .line 95
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 97
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->getInitializationPosition(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/content/Context;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;Landroid/content/Context;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->detachAODView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->startTimeShowAnimate()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Lcom/flyme/systemuitools/aod/view/AODDisplayView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODViewAdded:Z

    return p0
.end method

.method static synthetic access$600(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private attachAODViewIfNeeded(Landroid/content/Context;)V
    .registers 5

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attachAODViewIfNeeded mAODView = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mAODView.getParent() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    .line 232
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AODDisplayImpl"

    .line 231
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODViewAdded:Z

    if-nez p1, :cond_67

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_67

    .line 234
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPresenter:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->openMediaSession()V

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWM "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isAttachedToWindow"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODViewAdded:Z

    .line 239
    :cond_67
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mStartShowAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mStartShowAnimation:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private detachAODView(Landroid/content/Context;)V
    .registers 3

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "detachAODView mAODView = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AODDisplayImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODViewAdded:Z

    if-eqz p1, :cond_2b

    .line 257
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mWM:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 258
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPresenter:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->closeMediaSession()V

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODViewAdded:Z

    :cond_2b
    return-void
.end method

.method private getInitializationPosition(Landroid/content/Context;)I
    .registers 3

    const-string p0, "pref_aod"

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "initialization_position"

    const/16 v0, 0x112

    .line 294
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initView()V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 327
    sget v1, Lcom/android/systemui/R$layout;->digital_aod_display:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    .line 330
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v1, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDateBaseView:Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;

    .line 331
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v1, Lcom/android/systemui/R$id;->aod_music_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AODMusicView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    .line 332
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPresenter:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->setAODMusicView(Lcom/flyme/systemuitools/aod/view/AODMusicView;)V

    .line 334
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v1, Lcom/android/systemui/R$id;->aod_content:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    .line 335
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->getInstance()Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v2, Lcom/android/systemui/R$id;->aod_notification_view:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/view/INotificationCallback;

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->addCallback(Lcom/flyme/systemuitools/aod/view/INotificationCallback;)V

    .line 339
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->lp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v2, 0x807

    .line 340
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x1

    .line 341
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 342
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string v2, "AODDisplay"

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x30

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 345
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x108

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 348
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v0, v0, 0x204

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 350
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 351
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method private refreshAODDisplay(Z)V
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAODDisplay changePosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODDisplayImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    if-eqz v0, :cond_2c

    .line 266
    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->refreshAODDisplay()V

    if-eqz p1, :cond_2c

    .line 268
    iget p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mPosition:I

    .line 269
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mPosition:I

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->updateContentPosition(I)V

    :cond_2c
    return-void
.end method

.method private startTimeShowAnimate()V
    .registers 2

    .line 245
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 246
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_14

    .line 248
    :cond_d
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_14
    return-void
.end method


# virtual methods
.method public enterAODMode()V
    .registers 5

    const-string v0, "AODDisplayImpl"

    const-string v1, "enterAODMode"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDetachAODView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->attachAODViewIfNeeded(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    new-instance v1, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;-><init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public exitAODMode()V
    .registers 4

    const-string v0, "AODDisplayImpl"

    const-string v1, "exitAODMode"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$5;-><init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mStartShowAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDetachAODView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDetachAODView:Ljava/lang/Runnable;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isShown()Z
    .registers 3

    .line 275
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODViewAdded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    if-eqz v0, :cond_18

    .line 276
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public onCreate()V
    .registers 5

    const-string v0, "AODDisplayImpl"

    const-string v1, "onCreate"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;-><init>(Landroid/content/Context;Lcom/flyme/systemuitools/aod/view/IAODDisplay;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPresenter:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    .line 107
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPresenter:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->onCreate()V

    .line 109
    new-instance v0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$3;-><init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    .line 120
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    .line 121
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->initView()V

    return-void
.end method

.method public onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 369
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v0, Lcom/android/systemui/R$id;->aod_notification_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    .line 370
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public refreshAODMode(Z)V
    .registers 4

    const-string v0, "AODDisplayImpl"

    const-string v1, "refreshAODMode"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->refreshAODDisplay(Z)V

    return-void
.end method

.method public saveCurPosition(Landroid/content/Context;)V
    .registers 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODDisplayImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pref_aod"

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 286
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 287
    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mPosition:I

    const-string v0, "initialization_position"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAODTimeViewVisible(Z)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2a

    if-nez p1, :cond_1b

    .line 357
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mStartShowAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_14

    .line 359
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 361
    :cond_14
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mContentView:Landroid/widget/RelativeLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2a

    .line 362
    :cond_1b
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2a

    .line 363
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mStartShowAnimation:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method public showBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mDateBaseView:Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;

    if-eqz p0, :cond_7

    .line 207
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->updateBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    :cond_7
    return-void
.end method

.method public updateAODViewVisible()V
    .registers 4

    .line 306
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPlaying:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_23

    .line 307
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v1, Lcom/android/systemui/R$id;->new_date_time_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v0, Lcom/android/systemui/R$id;->notification_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    .line 311
    :cond_23
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicView:Lcom/flyme/systemuitools/aod/view/AODMusicView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v0, Lcom/android/systemui/R$id;->new_date_time_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_33
    return-void
.end method

.method public updateMusicState(Z)V
    .registers 3

    .line 318
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPlaying:Z

    if-eq v0, p1, :cond_1c

    .line 319
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPlaying:Z

    .line 320
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPlaying:Z

    invoke-virtual {p1, v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->musicStateChange(Z)V

    .line 321
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mAODView:Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    sget v0, Lcom/android/systemui/R$id;->aod_notification_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->mMusicPlaying:Z

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->musicPlaying(Z)V

    :cond_1c
    return-void
.end method
