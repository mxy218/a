.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;
    }
.end annotation


# static fields
.field private static FADE_OUT_DURATION:I = 0x100

.field private static sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

.field private mBouncerPromptReason:I

.field protected final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field protected final mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mExpansion:F

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

.field private mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFindPhoneCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

.field private final mHandler:Landroid/os/Handler;

.field private mImageWallpaper:Landroid/graphics/drawable/Drawable;

.field private mIsAnimatingAway:Z

.field private mIsScrimmed:Z

.field private mKeepDPIContext:Landroid/content/Context;

.field private mKeyguardBackground:Landroid/widget/ImageView;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field protected mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field private mLockIconContainer:Landroid/view/ViewGroup;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenCallbacks:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;

.field private mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

.field private mRegister:Z

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field private final mResetRunnable:Ljava/lang/Runnable;

.field protected mRoot:Landroid/view/ViewGroup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private mStatusBarHeight:I

.field private mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWallpaper:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 868
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;)V
    .registers 13

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBouncer$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBouncer$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 118
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 284
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 886
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 893
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFindPhoneCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .line 905
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockScreenCallbacks:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 920
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 134
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    .line 136
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 137
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 138
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 139
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 140
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 143
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I
    .registers 2

    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateFaceColorFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F
    .registers 1

    .line 83
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playShowAnim()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setWallpaper()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setBouncerBackgroud(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showSaveViewOrNot()V

    return-void
.end method

.method private cancelShowRunnable()V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return-void
.end method

.method private getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 854
    :try_start_3
    invoke-static {p1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 856
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    :goto_c
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_18
    return-object v0
.end method

.method private getCoveredWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    const p0, 0x3e4ccccd  # 0.2f

    .line 839
    invoke-static {p1, p0}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_41

    .line 840
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    const p0, 0x3dcccccd  # 0.1f

    .line 841
    invoke-static {p1, p0}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_41

    .line 842
    :cond_2e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result p0

    if-nez p0, :cond_41

    const p0, 0x3d4ccccd  # 0.05f

    .line 843
    invoke-static {p1, p0}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_41
    :goto_41
    return-object p1
.end method

.method private loadSaveModeView()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 706
    sget v1, Lcom/android/systemui/R$id;->power_save_stub:I

    .line 707
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1c

    .line 710
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->normal_clock_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 712
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->battery_info:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_30

    .line 714
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/BatteryInfoView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    :cond_30
    const/4 v0, 0x0

    .line 717
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setBouncerBackgroud(Landroid/graphics/drawable/Drawable;)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 719
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->loadSaveModeView()V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/BatteryInfoView;->initViews()V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 724
    :cond_4b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    return-void
.end method

.method private onFullyHidden()V
    .registers 3

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    const/4 v1, 0x4

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFullyShown()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerShown()V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-nez p0, :cond_11

    const-string p0, "KeyguardBouncer"

    const-string v0, "onFullyShown when view was null"

    .line 266
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 268
    :cond_11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    :goto_14
    return-void
.end method

.method private playShowAnim()V
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 761
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->FADE_OUT_DURATION:I

    int-to-long v0, v0

    .line 762
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 763
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 764
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setBouncerBackgroud(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBouncerBackgroud background = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBouncer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_45

    .line 730
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    if-ne v1, v2, :cond_35

    .line 731
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p1, -0x1000000

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_45

    .line 735
    :cond_35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_40

    .line 736
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 738
    :cond_40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method private setWallpaper()V
    .registers 8

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    .line 769
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    .line 772
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 773
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 775
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    .line 776
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 779
    :try_start_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getScreenShotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "KeyguardBouncer"

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_43

    goto :goto_47

    .line 784
    :cond_43
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_47} :catch_4a

    :goto_47
    move-object v1, v2

    goto/16 :goto_bb

    :catch_4a
    move-exception v0

    .line 787
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bb

    .line 789
    :cond_4f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 790
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 791
    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 793
    invoke-virtual {v2}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6d
    if-nez v1, :cond_75

    .line 797
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_bb

    .line 800
    :cond_75
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 801
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 802
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 801
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    goto :goto_bb

    .line 806
    :cond_89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getBlurLockWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a0

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_bb

    .line 808
    :cond_a0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_bb

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getBlurLockWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 810
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    :cond_bb
    :goto_bb
    if-eqz v1, :cond_f0

    .line 814
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getCoveredWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 817
    :try_start_c1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lmeizu/wallpaper/FlymeWallpaperManager;->forgetLoadedLockWallpaper()V
    :try_end_d8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c1 .. :try_end_d8} :catch_d9

    goto :goto_f0

    .line 821
    :catch_d9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->forgetLoadedLockWallpaper()V

    .line 825
    :cond_f0
    :goto_f0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showPrimarySecurityScreen()V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 453
    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->lock_icon_container:I

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockIconContainer:Landroid/view/ViewGroup;

    :cond_19
    return-void
.end method

.method private showSaveViewOrNot()V
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    goto :goto_11

    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->normal:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    :goto_11
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showBatteryOrNot mPowerState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBouncer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    if-ne v0, v1, :cond_36

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->loadSaveModeView()V

    goto :goto_59

    .line 677
    :cond_36
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 689
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    const/16 v1, 0x8

    if-eqz v0, :cond_4c

    .line 691
    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->loadNormalModeView()V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 694
    :cond_4c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    if-eqz v0, :cond_53

    .line 695
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    :cond_53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    .line 699
    :goto_59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_60

    .line 700
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->relayoutPassWordView()V

    :cond_60
    return-void
.end method

.method private updateColors()V
    .registers 3

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FindPhone:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_11

    .line 755
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_11
    return-void
.end method

.method private updateFaceColorFilter()V
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 665
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setFaceColorFilter(I)V

    goto :goto_1b

    .line 667
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setFaceColorFilter(I)V

    :goto_1b
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "KeyguardBouncer"

    .line 638
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStatusBarHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExpansion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyguardView; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowingSoon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBouncerPromptReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAnimatingAway: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected ensureView()V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    if-eqz v0, :cond_11

    .line 507
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    :cond_11
    return-void
.end method

.method public hide(Z)V
    .registers 5

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x3f

    const/4 v1, 0x1

    .line 363
    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    :cond_11
    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_2d

    .line 372
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->cancelDismissAction()V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->cleanUp()V

    .line 375
    :cond_2d
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_45

    const/4 v1, 0x4

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_42

    .line 382
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    :cond_42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateFaceColorFilter()V

    .line 389
    :cond_45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onHideBouncer()V

    return-void
.end method

.method public inTransit()Z
    .registers 2

    .line 429
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_14

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method protected inflateView()V
    .registers 5

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeepDPIContext:Landroid/content/Context;

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeepDPIContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->keyguard_bouncer:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->keyguard_host_view:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->bouncer_animator_view:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 532
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 535
    :cond_81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->unlock_background:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showSaveViewOrNot()V

    .line 539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    if-nez v0, :cond_c3

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFindPhoneCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerFindPhoneCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockScreenCallbacks:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->registerLockScreenCallback(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;)V

    .line 545
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    :cond_c3
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 629
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isFullscreenBouncer()Z
    .registers 3

    .line 609
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 610
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    .line 611
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v1, :cond_11

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public isScrimmed()Z
    .registers 1

    .line 251
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    return p0
.end method

.method public isSecure()Z
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isShowing()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public synthetic lambda$new$0$KeyguardBouncer()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_7

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->resetSecurityContainer()V

    :cond_7
    return-void
.end method

.method public needsFullscreenBouncer()Z
    .registers 4

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 593
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 596
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result p0

    .line 597
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_24

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_24

    if-nez p0, :cond_24

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FindPhone:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, p0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .registers 3

    .line 633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 634
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;->finish(ZI)V

    return-void
.end method

.method public notifyKeyguardAuthenticatedForFaceRecognition(Z)V
    .registers 3

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 750
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;->finish(ZI)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->onPause()V

    :cond_13
    return-void
.end method

.method public prepare()V
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 442
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    if-eqz v0, :cond_f

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    .line 446
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return-void
.end method

.method protected removeView()V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 553
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 556
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :cond_f
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    if-eqz v0, :cond_22

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->removeCallback(Lcom/flyme/systemui/facerecognition/IFaceRecognitionAnimationCallback;)V

    .line 566
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_35

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 568
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 571
    :cond_35
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    if-eqz v0, :cond_5d

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFindPhoneCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeFindPhoneCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockScreenCallbacks:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->removeLockScreenCallback(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;)V

    const/4 v0, 0x0

    .line 577
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    :cond_5d
    return-void
.end method

.method public reset()V
    .registers 1

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    .line 411
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    return-void
.end method

.method public setExpansion(F)V
    .registers 7

    .line 464
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 465
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    if-nez v1, :cond_2a

    const v1, 0x3f733333  # 0.95f

    .line 467
    invoke-static {v1, v2, v2, v3, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    .line 468
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_2a
    cmpl-float v1, p1, v3

    if-nez v1, :cond_3b

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_3b

    .line 473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyShown()V

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyShown()V

    goto :goto_57

    :cond_3b
    cmpl-float p1, p1, v2

    if-nez p1, :cond_4c

    cmpl-float p1, v0, v2

    if-eqz p1, :cond_4c

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyHidden()V

    .line 477
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyHidden()V

    goto :goto_57

    :cond_4c
    if-eqz v1, :cond_57

    cmpl-float p1, v0, v3

    if-nez p1, :cond_57

    .line 479
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToHide()V

    :cond_57
    :goto_57
    return-void
.end method

.method public shouldDismissOnMenuPressed()Z
    .registers 1

    .line 624
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    return-void
.end method

.method public show(ZZ)V
    .registers 9

    .line 158
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_d

    .line 159
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 164
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 165
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->onShowBouncer()V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onShowBouncer()V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    .line 172
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_41

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_41

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_41

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_46

    .line 174
    :cond_41
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-virtual {v1, v4}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    .line 177
    :cond_46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateColors()V

    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    :cond_4f
    if-eqz p1, :cond_54

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    .line 195
    :cond_54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const-string p2, "KeyguardBouncer"

    if-eqz p1, :cond_100

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz p1, :cond_64

    goto/16 :goto_100

    .line 209
    :cond_64
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 211
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_72

    if-nez p1, :cond_72

    move v2, v3

    goto :goto_73

    :cond_72
    move v2, v4

    :goto_73
    if-nez v2, :cond_78

    if-ne p1, v0, :cond_78

    move v4, v3

    :cond_78
    if-eqz v4, :cond_83

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardHostView;->dismiss(I)Z

    move-result v2

    if-eqz v2, :cond_83

    return-void

    .line 220
    :cond_83
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v2

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setWallpaper()V

    :cond_9e
    if-nez v4, :cond_bc

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User can\'t dismiss keyguard: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_bc
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_eb

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-nez p1, :cond_eb

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 235
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    move-result p1

    if-nez p1, :cond_eb

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 236
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_eb

    .line 237
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f0

    .line 239
    :cond_eb
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 242
    :goto_f0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1, v3}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToShow()V

    .line 246
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .line 197
    :cond_100
    :goto_100
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result p1

    if-eqz p1, :cond_12b

    const-string p1, "isFaceRecognitionSucceeded, so dismiss"

    .line 202
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->dismiss(I)Z

    :cond_12b
    return-void
.end method

.method public showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_8

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    goto :goto_f

    :cond_8
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show message on empty bouncer"

    .line 345
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public showPromptReason(I)V
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_8

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->showPromptReason(I)V

    goto :goto_f

    :cond_8
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show prompt reason on empty bouncer"

    .line 337
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .registers 4

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    .line 398
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_b

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_b
    if-eqz p1, :cond_10

    .line 401
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_10
    :goto_10
    return-void
.end method

.method public willDismissWithAction()Z
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->hasDismissActions()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
