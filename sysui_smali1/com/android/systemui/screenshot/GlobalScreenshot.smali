.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$H;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;
    }
.end annotation


# instance fields
.field private isAnimationRunning:Z

.field isRunning:Z

.field private isScreenshotRemoved:Z

.field private isStopAnimation:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mContext:Landroid/content/Context;

.field mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Lcom/android/systemui/screenshot/GlobalScreenshot$H;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mResources:Landroid/content/res/Resources;

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScaledScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenStatusReceiver:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/view/View;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$H;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    .line 549
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isScreenshotRemoved:Z

    .line 966
    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 556
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 558
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mApplicationContext:Landroid/content/Context;

    .line 560
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mResources:Landroid/content/res/Resources;

    .line 561
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "screenshot_config"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 564
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 565
    sget v3, Lcom/android/systemui/R$layout;->mz_global_screenshot:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 566
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->global_screenshot_flash:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/view/View;

    .line 567
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->global_screenshot_selector:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 569
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->global_screenshot_thumbnail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    .line 573
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->setCallback(Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;)V

    .line 668
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f4

    const v10, 0x1080508

    const/4 v11, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 677
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const/4 v3, 0x1

    .line 678
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v3, "ScreenshotAnimation"

    .line 679
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "window"

    .line 681
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    const-string v2, "notification"

    .line 684
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 685
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 686
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 687
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const p1, 0x1050006

    .line 691
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 694
    sget p1, Lcom/android/systemui/R$dimen;->global_screenshot_bg_padding:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 695
    iget p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 700
    :try_start_e2
    sget p1, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_e8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e2 .. :try_end_e8} :catch_e8

    :catch_e8
    if-gtz v0, :cond_ee

    .line 705
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 707
    :cond_ee
    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewWidth:I

    .line 708
    sget p1, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewHeight:I

    .line 711
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScaledScreenBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Landroid/animation/ValueAnimator;
    .registers 2

    .line 499
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotAlphaAnim(Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .registers 1

    .line 499
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isScreenshotRemoved:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showGuide()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showThumbnail()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissWithoutAnim()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissWithFadeAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->removeScreenShot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissWithScaleFadeAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .registers 1

    .line 499
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .registers 2

    .line 499
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)V
    .registers 2

    .line 499
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissWithAnim(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .registers 3

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method

.method private createAlphaAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    .line 1249
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isStopAnimation:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    new-array p0, v1, [I

    .line 1250
    fill-array-data p0, :array_32

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_f
    new-array v0, v1, [I

    .line 1252
    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    .line 1253
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1254
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isRunning:Z

    if-eqz v1, :cond_24

    const-wide/16 v1, 0x1c2

    goto :goto_26

    :cond_24
    const-wide/16 v1, 0x2d0

    :goto_26
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1255
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_32
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_3a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private createScaleAnimator()Landroid/animation/ValueAnimator;
    .registers 7

    .line 1189
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isStopAnimation:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1d

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-array p0, v1, [F

    .line 1201
    fill-array-data p0, :array_5c

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_1d
    new-array v0, v1, [F

    .line 1203
    fill-array-data v0, :array_64

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1205
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1206
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e051eb8  # 0.13f

    const v3, 0x3f1c28f6  # 0.61f

    const v4, 0x3ecccccd  # 0.4f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1207
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isRunning:Z

    if-eqz v1, :cond_45

    const-wide/16 v1, 0x96

    goto :goto_47

    :cond_45
    const-wide/16 v1, 0x1a4

    :goto_47
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1208
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1216
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_5c
    .array-data 4
        0x3f99999a  # 1.2f
        0x0
    .end array-data

    :array_64
    .array-data 4
        0x3f99999a  # 1.2f
        0x0
    .end array-data
.end method

.method private createScreenshotAlphaAnim(Z)Landroid/animation/ValueAnimator;
    .registers 8

    .line 1277
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isStopAnimation:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_16

    const-string p0, "GlobalScreenshot"

    const-string p1, "isStopAnimation isStopAnimation"

    .line 1278
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v1, [F

    .line 1279
    fill-array-data p0, :array_60

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 v0, 0x1

    .line 1282
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    new-array v0, v1, [F

    if-eqz p1, :cond_21

    .line 1284
    fill-array-data v0, :array_68

    goto :goto_24

    :cond_21
    fill-array-data v0, :array_70

    :goto_24
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    .line 1285
    new-instance v3, Landroid/view/animation/PathInterpolator;

    if-eqz p1, :cond_39

    const v4, 0x3ea8f5c3  # 0.33f

    const v5, 0x3f547ae1  # 0.83f

    invoke-direct {v3, v4, v2, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_42

    :cond_39
    const v4, 0x3e2e147b  # 0.17f

    const v5, 0x3f570a3d  # 0.84f

    invoke-direct {v3, v4, v2, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1286
    :goto_42
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_4a

    const-wide/16 v1, 0xc8

    goto :goto_4c

    :cond_4a
    const-wide/16 v1, 0x46

    .line 1287
    :goto_4c
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1288
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1329
    new-instance p1, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_60
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x3f000000  # 0.5f
    .end array-data

    :array_70
    .array-data 4
        0x3f000000  # 0.5f
        0x0
    .end array-data
.end method

.method private createScreenshotTranslateOutAnimat(Z)Landroid/animation/AnimatorSet;
    .registers 9

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2f

    new-array p1, v1, [F

    .line 1360
    fill-array-data p1, :array_84

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1361
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e947ae1  # 0.29f

    const v4, 0x3e99999a  # 0.3f

    const v5, 0x3f147ae1  # 0.58f

    const v6, 0x3ca3d70a  # 0.02f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v3, 0xfa

    .line 1362
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5d

    :cond_2f
    new-array p1, v1, [F

    .line 1364
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->getValue()F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x0

    aput v1, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1365
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3e4ccccd  # 0.2f

    invoke-direct {v3, v5, v1, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/high16 v1, 0x437a0000  # 250.0f

    .line 1366
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object v1, v3

    .line 1368
    :goto_5d
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1369
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x0

    .line 1377
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1378
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isScreenshotRemoved:Z

    .line 1379
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    .line 1380
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1381
    new-instance p1, Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :array_84
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private dismissWithAnim(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1059
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotTranslateOutAnimat(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1062
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_c
    return-void
.end method

.method private dismissWithFadeAnim()V
    .registers 7

    const-string v0, "GlobalScreenshot"

    const-string/jumbo v1, "start dismiss anim"

    .line 1142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    if-eqz v0, :cond_34

    .line 1144
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1145
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 1146
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3  # 0.33f

    const v4, 0x3f2b851f  # 0.67f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1147
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1148
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_34
    return-void
.end method

.method private dismissWithScaleFadeAnim()V
    .registers 12

    const/4 v0, 0x1

    .line 1078
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    .line 1079
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1080
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3f666666  # 0.9f

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3f666666  # 0.9f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x96

    .line 1082
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1083
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e8a3d71  # 0.27f

    const v4, -0x43dc28f6  # -0.01f

    const v5, 0x3eeb851f  # 0.46f

    const v6, 0x40133333  # 2.3f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1084
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0xdc

    .line 1085
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1086
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3  # 0.33f

    const v7, 0x3f2b851f  # 0.67f

    invoke-direct {v5, v6, v3, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1087
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1089
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1138
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private dismissWithoutAnim()V
    .registers 2

    .line 1067
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 1068
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private getDegreesForRotation(I)F
    .registers 3

    const/4 p0, 0x1

    const/high16 v0, 0x43b40000  # 360.0f

    if-eq p1, p0, :cond_11

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    return v0

    :cond_e
    const/high16 p0, 0x43340000  # 180.0f

    return p0

    :cond_11
    return v0
.end method

.method private isStopAnimationDurationScale()Z
    .registers 3

    .line 1267
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1269
    :try_start_6
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_12

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    move v1, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 1271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    return v1
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 1446
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1447
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1449
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    const-string v3, "Screenshot"

    invoke-direct {v1, v3, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 1450
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const-string v2, "notification"

    .line 1451
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1452
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1453
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    .line 1454
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    .line 1455
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1456
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_notify_image_error:I

    .line 1457
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1459
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "err"

    .line 1460
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1461
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106001c

    .line 1462
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1466
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1467
    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    .line 1468
    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object p0

    const/16 p2, 0x315

    .line 1469
    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private removeScreenShot()V
    .registers 1

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .registers 6

    .line 761
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v0, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 762
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 763
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v0, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 764
    iput-object p1, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 765
    iget p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewWidth:I

    iput p1, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 766
    iget p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewHeight:I

    iput p1, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 767
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 768
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 770
    :cond_1e
    new-instance p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p1, v1, p2, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    new-array p2, v0, [Ljava/lang/Void;

    .line 771
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private showGuide()V
    .registers 5

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "first_screenshot"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    if-eqz v2, :cond_2b

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2b
    move v1, v2

    :cond_2c
    if-eqz v1, :cond_46

    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.flyme.systemuiex.screenshot.TEST.ACTION_GUIDE_SCREENSHOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.flyme.systemuiex"

    const-string v2, "com.flyme.systemuiex.screenshot.ScreenshotService"

    .line 1047
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    :try_start_3c
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1054
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->removeScreenShot()V

    return-void
.end method

.method private showThumbnail()V
    .registers 1

    return-void
.end method

.method private startAnim(Ljava/lang/Runnable;IIZZ)V
    .registers 9

    .line 984
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_11

    .line 985
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p3, p4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    const/4 p2, 0x0

    .line 987
    iput-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isScreenshotRemoved:Z

    .line 989
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/view/View;->setFocusable(Z)V

    .line 990
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    invoke-virtual {p3, p4}, Landroid/view/View;->setLongClickable(Z)V

    .line 991
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 992
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotThumbnail:Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    iget-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p5}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 993
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    const/4 p5, 0x4

    invoke-virtual {p3, p5}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isStopAnimationDurationScale()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isStopAnimation:Z

    .line 997
    iput-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationRunning:Z

    .line 998
    invoke-direct {p0, p4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotAlphaAnim(Z)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 999
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScaleAnimator()Landroid/animation/ValueAnimator;

    move-result-object p5

    .line 1000
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createAlphaAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_56

    .line 1003
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isRunning:Z

    .line 1005
    :cond_56
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 1006
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p5, v2, p2

    aput-object v0, v2, p4

    const/4 p2, 0x2

    aput-object p3, v2, p2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1007
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method registSreenStatusReceiver()V
    .registers 3

    .line 793
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    .line 794
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenStatusReceiver:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;

    .line 795
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 796
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mApplicationContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenStatusReceiver:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1c
    return-void
.end method

.method public startShareView(Landroid/content/Intent;)V
    .registers 10

    if-nez p1, :cond_b

    const-string p0, "GlobalScreenshot"

    const-string/jumbo p1, "share intent is empty"

    .line 719
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/4 v0, 0x1

    const-string v1, "screenshot_showcheck"

    .line 722
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 723
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    const-string v4, "screenshot_config"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "delete_after_shared"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 724
    const-class v4, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startShareView : isCheck "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "file_path"

    .line 732
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v3, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 742
    new-instance v5, Lcom/meizu/share/ShareActivityStarter$Builder;

    invoke-direct {v5}, Lcom/meizu/share/ShareActivityStarter$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->screenshot_share_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/share/ShareActivityStarter$Builder;->setTitle(Ljava/lang/String;)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v5

    .line 743
    invoke-virtual {v5, v1}, Lcom/meizu/share/ShareActivityStarter$Builder;->setShowCheckBox(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 744
    invoke-virtual {v1, v2}, Lcom/meizu/share/ShareActivityStarter$Builder;->setCheckBoxChecked(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->screenshot_share_check_text:I

    .line 745
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/share/ShareActivityStarter$Builder;->setCheckBoxText(Ljava/lang/String;)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 746
    invoke-virtual {v1, v3}, Lcom/meizu/share/ShareActivityStarter$Builder;->setForceKeepNightMode(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 747
    invoke-virtual {v1, v3}, Lcom/meizu/share/ShareActivityStarter$Builder;->setHideStatusBarLandscape(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 748
    invoke-virtual {v1, v3}, Lcom/meizu/share/ShareActivityStarter$Builder;->setHideStatusBarPortrait(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 750
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/share/ShareActivityStarter$Builder;->setIntentSender(Landroid/content/IntentSender;)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 752
    invoke-virtual {v1, v0}, Lcom/meizu/share/ShareActivityStarter$Builder;->setDismissKeyguard(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v1

    .line 753
    invoke-virtual {v1, v0}, Lcom/meizu/share/ShareActivityStarter$Builder;->setShowWhenLocked(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Lcom/meizu/share/ShareActivityStarter$Builder;->build()Lcom/meizu/share/ShareActivityStarter;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/share/ShareActivityStarter;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 756
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "statusbar"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method stopScreenshot()V
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 948
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 949
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    :cond_16
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .registers 13

    .line 888
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZIIII)V

    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIIII)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    .line 828
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 829
    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v3, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 830
    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_2e

    move v8, v5

    goto :goto_2f

    :cond_2e
    move v8, v6

    :goto_2f
    if-eqz v8, :cond_51

    .line 834
    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 835
    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 836
    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 837
    aget v9, v3, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v3, v6

    .line 838
    aget v9, v3, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v3, v5

    :cond_51
    const v9, 0x537ef

    .line 846
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    invoke-static {v10, v6, v9, v11}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 848
    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_76

    .line 849
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 851
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_76
    if-eqz v8, :cond_a2

    .line 857
    iget-object v8, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 859
    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v10, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 861
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 862
    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v4, 0x0

    .line 863
    invoke-virtual {v10, v9, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 864
    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 866
    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 867
    iput-object v8, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 869
    :cond_a2
    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    aget v7, v3, v6

    float-to-int v7, v7

    aget v3, v3, v5

    float-to-int v3, v3

    invoke-static {v4, v7, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScaledScreenBitmap:Landroid/graphics/Bitmap;

    .line 871
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_c0

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v2, v3, :cond_d1

    .line 873
    :cond_c0
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static {v3, v4, v5, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 874
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 875
    iput-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 879
    :cond_d1
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 880
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 883
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnim(Ljava/lang/Runnable;IIZZ)V

    return-void
.end method

.method unRegistSreenStatusReceiver()V
    .registers 2

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mApplicationContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenStatusReceiver:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 805
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method
