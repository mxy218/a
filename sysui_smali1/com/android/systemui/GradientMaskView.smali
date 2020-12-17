.class public Lcom/android/systemui/GradientMaskView;
.super Landroid/view/View;
.source "GradientMaskView.java"


# instance fields
.field private mBitmapBackground:Landroid/graphics/Bitmap;

.field private mMaskViewDownTranslateHeight:I

.field private mMaskViewUpTranslateHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScreenWidth:I

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mPaint:Landroid/graphics/Paint;

    .line 128
    new-instance p1, Lcom/android/systemui/GradientMaskView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/GradientMaskView$2;-><init>(Lcom/android/systemui/GradientMaskView;)V

    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/GradientMaskView;->mPaint:Landroid/graphics/Paint;

    .line 128
    new-instance p2, Lcom/android/systemui/GradientMaskView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/GradientMaskView$2;-><init>(Lcom/android/systemui/GradientMaskView;)V

    iput-object p2, p0, Lcom/android/systemui/GradientMaskView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 54
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->maskview_down_translate_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/GradientMaskView;->mMaskViewDownTranslateHeight:I

    .line 56
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->maskview_up_translate_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/GradientMaskView;->mMaskViewUpTranslateHeight:I

    .line 58
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 61
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/android/systemui/GradientMaskView;->mScreenWidth:I

    .line 64
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/GradientMaskView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-string p0, "GradientMaskView"

    const-string p1, "init mask"

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mPaint:Landroid/graphics/Paint;

    .line 128
    new-instance p1, Lcom/android/systemui/GradientMaskView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/GradientMaskView$2;-><init>(Lcom/android/systemui/GradientMaskView;)V

    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_46

    .line 80
    iget-object v0, p0, Lcom/android/systemui/GradientMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-nez v0, :cond_18

    .line 81
    iget-object v0, p0, Lcom/android/systemui/GradientMaskView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/GradientMaskView;->mScreenWidth:I

    iget-object v2, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/GradientMaskView;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GradientMaskView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/GradientMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 89
    :cond_46
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public doMaskViewChangeAnimate(ZI)V
    .registers 7

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/GradientMaskView;->mVisible:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    if-eq p2, v1, :cond_8

    return-void

    .line 106
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/GradientMaskView;->mVisible:Z

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do change mask animate:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GradientMaskView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p2, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 109
    iget-object p2, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2f
    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_45

    new-array p1, v0, [F

    aput v2, p1, p2

    .line 112
    iget p2, p0, Lcom/android/systemui/GradientMaskView;->mMaskViewUpTranslateHeight:I

    neg-int p2, p2

    int-to-float p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    goto :goto_55

    :cond_45
    new-array p1, v0, [F

    .line 114
    iget v0, p0, Lcom/android/systemui/GradientMaskView;->mMaskViewDownTranslateHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, p1, p2

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 116
    :goto_55
    iget-object p1, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a  # 0.3f

    const v1, 0x3f2b851f  # 0.67f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p2, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    iget-object p1, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/GradientMaskView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/GradientMaskView$1;-><init>(Lcom/android/systemui/GradientMaskView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/GradientMaskView;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setBitmapBackground(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/systemui/GradientMaskView;->mBitmapBackground:Landroid/graphics/Bitmap;

    return-void
.end method
