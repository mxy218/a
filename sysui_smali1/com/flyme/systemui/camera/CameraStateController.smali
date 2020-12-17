.class public final Lcom/flyme/systemui/camera/CameraStateController;
.super Ljava/lang/Object;
.source "CameraStateController.java"


# static fields
.field private static mBlackCircleWindowHeight:I = -0x1

.field private static final mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/flyme/systemui/camera/CameraStateController;


# instance fields
.field private mAttachToWindow:Z

.field private mBatteryAttachToWindow:Z

.field private final mBatteryStyleObserver:Landroid/database/ContentObserver;

.field private mBatteryView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

.field private mBlackCircleView:Landroid/view/View;

.field private mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mInFullScreenMode:Z

.field private mIsBouncer:Z

.field private mIsExpanded:Z

.field private mIsFront:Z

.field private mIsPortrait:Z

.field private mKeepDpiContext:Landroid/content/Context;

.field private mKeyguardBatteryView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mPackageName:Ljava/lang/String;

.field private mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private mShowCircleBattery:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.meizu.facerecognition"

    const-string v1, "com.android.systemui"

    .line 75
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/flyme/systemui/camera/CameraStateController$1;

    new-instance v1, Landroid/os/Handler;

    .line 79
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/camera/CameraStateController$1;-><init>(Lcom/flyme/systemui/camera/CameraStateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    .line 91
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeepDpiContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 95
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeepDpiContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->camera_black_circle:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->camera_animation_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 98
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->disapear_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 99
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->actInMzNightMode(I)V

    .line 100
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 101
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->parseSVGA()V

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v3, Lcom/flyme/systemui/camera/CameraStateController$2;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/camera/CameraStateController$2;-><init>(Lcom/flyme/systemui/camera/CameraStateController;)V

    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lcom/flyme/systemui/camera/CameraStateController$3;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/camera/CameraStateController$3;-><init>(Lcom/flyme/systemui/camera/CameraStateController;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->registerCameraStateReceiver()V

    .line 159
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->circle_battery:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    iput-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    .line 160
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->isUserRequestCircleBattery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_ab

    goto :goto_ac

    :cond_ab
    move v1, v2

    :goto_ac
    iput-boolean v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsPortrait:Z

    .line 162
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelExpanded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsExpanded:Z

    .line 163
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsBouncer:Z

    .line 164
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->registerBatteryStyleObserver()V

    .line 165
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateCircleBatteryWindowVisibility()V

    .line 166
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateStatusBarPadding()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/camera/CameraStateController;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/camera/CameraStateController;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/camera/CameraStateController;)Z
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->isUserRequestCircleBattery()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/camera/CameraStateController;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateCircleBatteryWindowVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/camera/CameraStateController;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateStatusBarPadding()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/opensource/svgaplayer/SVGAImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/airbnb/lottie/LottieAnimationView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/camera/CameraStateController;)Landroid/view/View;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/camera/CameraStateController;)Landroid/view/WindowManager;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$802(Lcom/flyme/systemui/camera/CameraStateController;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/systemui/camera/CameraStateController;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->showCircleBatteryIfNecessary()V

    return-void
.end method

.method private circleBatteryViewAlreadyShowing()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static getBlackCircleWindowHeight(Landroid/content/Context;)I
    .registers 3

    .line 469
    sget v0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleWindowHeight:I

    if-gez v0, :cond_22

    const/4 v0, 0x1

    .line 470
    invoke-static {p0, v0, v0}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object p0

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->black_circle_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->black_circle_y:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 473
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    sput p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleWindowHeight:I

    .line 475
    :cond_22
    sget p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleWindowHeight:I

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/camera/CameraStateController;

    monitor-enter v0

    .line 171
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/camera/CameraStateController;->sInstance:Lcom/flyme/systemui/camera/CameraStateController;

    if-nez v1, :cond_e

    .line 172
    new-instance v1, Lcom/flyme/systemui/camera/CameraStateController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/camera/CameraStateController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/camera/CameraStateController;->sInstance:Lcom/flyme/systemui/camera/CameraStateController;

    .line 174
    :cond_e
    sget-object p0, Lcom/flyme/systemui/camera/CameraStateController;->sInstance:Lcom/flyme/systemui/camera/CameraStateController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private hideBlackCircleWindow()V
    .registers 3

    .line 242
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 248
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    .line 251
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->showCircleBatteryIfNecessary()V

    goto :goto_29

    .line 253
    :cond_20
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_29

    .line 256
    :cond_26
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->showCircleBatteryIfNecessary()V

    .line 259
    :goto_29
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    if-nez v0, :cond_30

    .line 260
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateStatusBarPadding()V

    :cond_30
    return-void
.end method

.method private hideCircleBatteryIfNecessary()V
    .registers 3

    .line 348
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    if-eqz v0, :cond_18

    .line 349
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0}, Lcom/flyme/systemui/camera/CameraStateController;->updateBatteryViewVisibility(Z)V

    .line 352
    iput-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    :cond_18
    return-void
.end method

.method private initWindowLp()Landroid/view/WindowManager$LayoutParams;
    .registers 10

    .line 428
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->black_circle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->black_circle_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 431
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d6

    const/16 v6, 0x338

    const/4 v7, -0x3

    move-object v2, v8

    move v3, v0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v8, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 441
    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x800035

    .line 442
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v3, "CameraCircle"

    .line 443
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->black_circle_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 448
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->black_circle_y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 451
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private isUserRequestCircleBattery()Z
    .registers 3

    .line 422
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "statusbar_battery_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    move v0, v1

    :cond_12
    return v0
.end method

.method private parseSVGA()V
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v1, Lcom/flyme/systemui/camera/CameraStateController$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/camera/CameraStateController$4;-><init>(Lcom/flyme/systemui/camera/CameraStateController;)V

    const-string p0, "camera_front.svga"

    invoke-virtual {v0, p0, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method private registerBatteryStyleObserver()V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "statusbar_battery_style"

    .line 266
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 265
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerCameraStateReceiver()V
    .registers 3

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "meizu.intent.action.CAMERA_OPEN"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "meizu.intent.action.CAMERA_CLOSE"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/flyme/systemui/camera/CameraStateReceiver;

    invoke-direct {v1}, Lcom/flyme/systemui/camera/CameraStateReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shouldShowBlackCircle(Ljava/lang/String;)Z
    .registers 2

    .line 196
    sget-object p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private shouldShowCircleBatteryView(Z)Z
    .registers 4

    .line 392
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_d

    .line 397
    iget-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    if-eqz p1, :cond_d

    return v1

    .line 402
    :cond_d
    iget-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mInFullScreenMode:Z

    if-eqz p1, :cond_12

    return v1

    .line 406
    :cond_12
    iget-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsPortrait:Z

    if-nez p1, :cond_17

    return v1

    .line 410
    :cond_17
    iget-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsExpanded:Z

    if-eqz p1, :cond_1c

    return v1

    .line 414
    :cond_1c
    iget-boolean p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsBouncer:Z

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method private showBlackCircleWindow()V
    .registers 5

    .line 216
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->hideCircleBatteryIfNecessary()V

    .line 217
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    if-eqz v0, :cond_8

    return-void

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_f

    .line 220
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->initWindowLp()Landroid/view/WindowManager$LayoutParams;

    .line 222
    :cond_f
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_1b

    or-int/lit16 v1, v1, 0x400

    .line 223
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    :cond_1b
    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    .line 226
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_37

    .line 228
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    iget-object v3, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_47

    .line 230
    :cond_37
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 231
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    iget-object v3, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    :goto_47
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stepToFrame(IZ)V

    .line 236
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    if-nez v0, :cond_5b

    .line 237
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateStatusBarPadding()V

    :cond_5b
    return-void
.end method

.method private showCircleBatteryIfNecessary()V
    .registers 5

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, v0}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 324
    :cond_8
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->circleBatteryViewAlreadyShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 325
    :cond_f
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_16

    .line 326
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->initWindowLp()Landroid/view/WindowManager$LayoutParams;

    .line 328
    :cond_16
    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_22

    and-int/lit16 v2, v2, -0x401

    .line 329
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 331
    :cond_22
    iget-boolean v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2d
    const/4 v1, 0x1

    .line 332
    iput-boolean v1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    .line 333
    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCameraAnimationView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_53

    .line 338
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    iget-object v3, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_63

    .line 340
    :cond_53
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 341
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBlackCircleView:Landroid/view/View;

    iget-object v3, p0, Lcom/flyme/systemui/camera/CameraStateController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :goto_63
    invoke-direct {p0, v1}, Lcom/flyme/systemui/camera/CameraStateController;->updateBatteryViewVisibility(Z)V

    return-void
.end method

.method private updateBatteryViewVisibility(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    goto :goto_f

    .line 358
    :cond_5
    iget-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsPortrait:Z

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 359
    :goto_f
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    :cond_16
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeyguardBatteryView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method private updateBlackCircleVisible()V
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_7

    return-void

    .line 185
    :cond_7
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsFront:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsPortrait:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowBlackCircle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 186
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    if-eqz v0, :cond_20

    .line 187
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mDisapearView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 189
    :cond_20
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->showBlackCircleWindow()V

    goto :goto_27

    .line 191
    :cond_24
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->hideBlackCircleWindow()V

    :goto_27
    return-void
.end method

.method private updateCircleBatteryViewVisibility(Z)V
    .registers 3

    .line 364
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    if-eqz v0, :cond_15

    if-eqz p1, :cond_d

    .line 366
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    .line 368
    :cond_d
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    :cond_15
    if-eqz p1, :cond_1a

    .line 371
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->showCircleBatteryIfNecessary()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private updateCircleBatteryWindowVisibility()V
    .registers 2

    .line 376
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mShowCircleBattery:Z

    if-eqz v0, :cond_8

    .line 377
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->showCircleBatteryIfNecessary()V

    goto :goto_b

    .line 379
    :cond_8
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->hideCircleBatteryIfNecessary()V

    :goto_b
    return-void
.end method

.method private updateStatusBarPadding()V
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/flyme/systemui/camera/CameraStateController;->isCameraViewShowing()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->doBlackCircleAnimation(Z)V

    return-void
.end method


# virtual methods
.method public isCameraViewShowing()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mAttachToWindow:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryAttachToWindow:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 315
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mCircleBatteryView:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public onFullScreenChanged(Z)V
    .registers 3

    .line 294
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mInFullScreenMode:Z

    if-eq v0, p1, :cond_e

    .line 295
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mInFullScreenMode:Z

    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateCircleBatteryViewVisibility(Z)V

    :cond_e
    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 3

    .line 283
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsPortrait:Z

    if-eq v0, p1, :cond_14

    .line 284
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsPortrait:Z

    .line 286
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateBlackCircleVisible()V

    const/4 p1, 0x0

    .line 287
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result p1

    .line 288
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateCircleBatteryViewVisibility(Z)V

    .line 289
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateBatteryViewVisibility(Z)V

    :cond_14
    return-void
.end method

.method public setBatteryView(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mBatteryView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 p1, 0x0

    .line 274
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateBatteryViewVisibility(Z)V

    return-void
.end method

.method public setKeyguardBatteryView(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mKeyguardBatteryView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 p1, 0x0

    .line 279
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateBatteryViewVisibility(Z)V

    return-void
.end method

.method public setKeyguardBouncerChanged(Z)V
    .registers 3

    .line 308
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsBouncer:Z

    if-eq v0, p1, :cond_e

    .line 309
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsBouncer:Z

    const/4 p1, 0x0

    .line 310
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateCircleBatteryViewVisibility(Z)V

    :cond_e
    return-void
.end method

.method public setPanelExpanded(Z)V
    .registers 3

    .line 301
    iget-boolean v0, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsExpanded:Z

    if-eq v0, p1, :cond_e

    .line 302
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsExpanded:Z

    const/4 p1, 0x0

    .line 303
    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->shouldShowCircleBatteryView(Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->updateCircleBatteryViewVisibility(Z)V

    :cond_e
    return-void
.end method

.method public updateIsFrontCamera(ZLjava/lang/String;)V
    .registers 3

    .line 178
    iput-boolean p1, p0, Lcom/flyme/systemui/camera/CameraStateController;->mIsFront:Z

    .line 179
    iput-object p2, p0, Lcom/flyme/systemui/camera/CameraStateController;->mPackageName:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateBlackCircleVisible()V

    return-void
.end method
