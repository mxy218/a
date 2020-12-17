.class public Lcom/flyme/systemui/statusbar/GLStaticBlurView;
.super Landroid/view/SurfaceView;
.source "GLStaticBlurView.java"


# static fields
.field private static TAG:Ljava/lang/String; = "GLStaticBlurView"


# instance fields
.field protected final DEFAULT_BLUR_LUMINANCE:F

.field private mAlpha:F

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field final mCaptureScaled:F

.field private mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFitXY:Z

.field private mForceStatic:Z

.field private mOldOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mSaturation:F

.field private mScale:F

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field protected mScrimCover:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x3f19999a  # 0.6f

    .line 44
    iput p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureScaled:F

    const p2, 0x3f99999a  # 1.2f

    .line 45
    iput p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mSaturation:F

    const/16 p2, 0x3c

    .line 46
    iput p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mRadius:I

    const p2, 0x3f866666  # 1.05f

    .line 47
    iput p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScale:F

    .line 53
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mFitXY:Z

    const/4 p3, 0x1

    .line 55
    iput p3, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mOldOrientation:I

    .line 309
    iput p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->DEFAULT_BLUR_LUMINANCE:F

    const/4 p4, 0x0

    .line 319
    iput p4, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mAlpha:F

    .line 75
    invoke-virtual {p0, p2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 76
    invoke-virtual {p0, p3}, Landroid/view/SurfaceView;->setBlurBehind(Z)V

    .line 77
    invoke-virtual {p0}, Landroid/view/SurfaceView;->supportDynamicBlur()Z

    move-result p2

    if-nez p2, :cond_39

    const/high16 p2, 0x3f800000  # 1.0f

    .line 78
    invoke-virtual {p0, p2, p1, p2}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->setDynamicBlurEffect(FFF)V

    .line 81
    :cond_39
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->readyToGo()V

    return-void
.end method

.method private blurUnderMeRect(ZZZ)V
    .registers 7

    .line 120
    sget-object v0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " blurUnderMeRect blurSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forceStatic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentLayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScrimCover:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 122
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 123
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScrimCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_37
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mForceStatic:Z

    const/4 p2, 0x0

    .line 126
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mFitXY:Z

    .line 127
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mOldOrientation:I

    .line 128
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_53

    .line 129
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result p0

    goto :goto_68

    :cond_53
    if-eqz p1, :cond_65

    if-eqz p3, :cond_5f

    const/4 p1, -0x1

    .line 136
    invoke-direct {p0, p2, p1}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->capture(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    goto :goto_65

    .line 139
    :cond_5f
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->capture()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 142
    :cond_65
    :goto_65
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :goto_68
    return-void
.end method

.method private capture()Landroid/graphics/Bitmap;
    .registers 3

    .line 222
    invoke-static {}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->getStatusbarLayer()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->capture(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private capture(II)Landroid/graphics/Bitmap;
    .registers 11

    .line 228
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplay:Landroid/view/Display;

    iget-object p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 229
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, p1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, p1

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 230
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->getDegreesForRotation(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_2b

    move v4, v1

    goto :goto_2c

    :cond_2b
    move v4, v2

    :goto_2c
    if-eqz v4, :cond_4e

    .line 234
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 235
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 236
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 237
    aget v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, p2, v2

    .line 238
    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, p2, v1

    .line 241
    :cond_4e
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aget v6, p2, v2

    float-to-int v6, v6

    aget v7, p2, v1

    float-to-int v7, v7

    invoke-static {v5, v6, v7, v2, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 244
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_78

    .line 245
    aget v5, p2, v2

    float-to-int v5, v5

    aget v6, p2, v1

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 247
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_80

    .line 250
    :cond_78
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    :goto_80
    if-eqz v4, :cond_c6

    .line 264
    aget v1, p2, v1

    float-to-int v1, v1

    aget p2, p2, v2

    float-to-int p2, p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 266
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, p1

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 269
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    iput-object p2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 284
    :cond_c6
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private getDegreesForRotation(I)F
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_11

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/high16 p0, 0x42b40000  # 90.0f

    return p0

    :cond_e
    const/high16 p0, 0x43340000  # 180.0f

    return p0

    :cond_11
    const/high16 p0, 0x43870000  # 270.0f

    return p0
.end method

.method public static getStatusbarLayer()I
    .registers 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_9

    const/16 v0, 0xf

    goto :goto_b

    :cond_9
    const/16 v0, 0x10

    :goto_b
    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private readyToGo()V
    .registers 5

    .line 85
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mWindowManager:Landroid/view/WindowManager;

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplay:Landroid/view/Display;

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 95
    iget v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mSaturation:F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 97
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 98
    iget v2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScale:F

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 100
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 101
    invoke-virtual {v2, v0, v1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 103
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 107
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->capture()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private updateScaleMatrix()V
    .registers 4

    .line 148
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mFitXY:Z

    if-nez v0, :cond_22

    .line 149
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 150
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x1

    .line 151
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mFitXY:Z

    goto :goto_63

    .line 154
    :cond_22
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mOldOrientation:I

    if-eq v0, v1, :cond_49

    .line 155
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 156
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_61

    .line 158
    :cond_49
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 159
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_61
    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 162
    :goto_63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void
.end method


# virtual methods
.method public blurUnderMeRectCurrentLayer(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->blurUnderMeRect(ZZZ)V

    return-void
.end method

.method public blurUnderMeRectLowerLayer(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->blurUnderMeRect(ZZZ)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 200
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 203
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->updateScaleMatrix()V

    .line 205
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_12
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/16 p1, 0x8

    if-ne p2, p1, :cond_a

    :cond_7
    const/4 p1, 0x0

    .line 323
    iput p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mAlpha:F

    :cond_a
    return-void
.end method

.method public setBlurAlpha(F)V
    .registers 4

    .line 166
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 167
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    goto :goto_17

    .line 172
    :cond_b
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 176
    :goto_17
    iget v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mAlpha:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mAlpha:F

    .line 177
    invoke-virtual {p0}, Landroid/view/SurfaceView;->supportBlurLevel()Z

    move-result p1

    const v0, 0x3ecccccc  # 0.39999998f

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_33

    .line 178
    iget p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mAlpha:F

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->setDynamicBlurEffect(FFF)V

    goto :goto_3b

    .line 180
    :cond_33
    iget p1, p0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->mAlpha:F

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->setDynamicBlurEffect(FFF)V

    :goto_3b
    return-void
.end method

.method protected setDynamicBlurEffect(FFF)V
    .registers 8

    float-to-double v0, p3

    const-wide v2, 0x3fee666666666666L  # 0.95

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_e

    :cond_d
    move v0, p3

    :goto_e
    const/4 v1, 0x0

    .line 312
    :try_start_f
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/SurfaceView;->setBlurAttrs(FFFF)V

    .line 313
    sget-object v0, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicBlurEffect supportBlurLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->supportBlurLevel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " supportDynamicBlur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->supportDynamicBlur()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " setBlurAttrs(level="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",luminance="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",alpha="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",cornerRadius=0.0f)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5a
    return-void
.end method

.method public useStaticBlurDrawable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
