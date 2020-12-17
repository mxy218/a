.class public Lcom/meizu/settings/voicewakeup/RecordSpectrumView;
.super Landroid/view/SurfaceView;
.source "RecordSpectrumView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;,
        Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;
    }
.end annotation


# instance fields
.field private final CIRCEL_ROTATE_ANGLE:I

.field private isRun:Z

.field private mAngle:I

.field private mCircelPaint:Landroid/graphics/Paint;

.field private mCircelRadius:I

.field private mClickListher:Landroid/view/View$OnClickListener;

.field private mColor:I

.field private mIsDrawable:Z

.field private mLineScaleX:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRotate:I

.field private mRotateTimes:I

.field private mScale:F

.field private mScaleX:F

.field private mScaleY:F

.field private mSpectRunnable:Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;

.field private mState:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThread:Ljava/lang/Thread;

.field private mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

.field private maxAngle:I

.field private minAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->isRun:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    .line 29
    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    const/high16 v1, 0x3f800000  # 1.0f

    .line 54
    iput v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleX:F

    .line 55
    iput v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleY:F

    .line 57
    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotateTimes:I

    const/16 v0, 0x9

    .line 61
    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->CIRCEL_ROTATE_ANGLE:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mIsDrawable:Z

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->initParams(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mState:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mClickListher:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->isRun:Z

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->drawSpectrum(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->drawLineToCircel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->drawCircel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private aphlaColor(IF)I
    .registers 3

    const p0, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x437f0000  # 255.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private dimen2Px(F)I
    .registers 2

    .line 300
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private drawCircel(Landroid/graphics/Canvas;)V
    .registers 6

    .line 227
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 228
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 230
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_16

    .line 231
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->getCircelPaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelPaint:Landroid/graphics/Paint;

    .line 234
    :cond_16
    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleX:F

    iget v3, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleY:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 235
    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 236
    iget-boolean v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mIsDrawable:Z

    if-eqz v2, :cond_31

    .line 237
    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    :cond_31
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    add-int/lit8 p1, p1, 0x9

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    .line 240
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    const/16 v0, 0x168

    if-lt p1, v0, :cond_46

    const/4 p1, 0x0

    .line 241
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    .line 243
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotateTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotateTimes:I

    :cond_46
    return-void
.end method

.method private drawLineToCircel(Landroid/graphics/Canvas;)V
    .registers 9

    .line 185
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelRadius:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v2, v1, v0

    const/high16 v3, 0x41200000  # 10.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 188
    iput v3, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    .line 190
    iget v4, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mLineScaleX:F

    const v5, 0x3f7d70a4  # 0.99f

    sub-float/2addr v5, v0

    cmpg-float v5, v4, v5

    const/4 v6, 0x2

    if-gez v5, :cond_58

    add-float/2addr v4, v2

    .line 191
    iput v4, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mLineScaleX:F

    .line 192
    iput v3, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    const v2, 0x3f7ff972  # 0.9999f

    .line 194
    iget v3, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mLineScaleX:F

    add-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v0, 0x0

    cmpg-float v3, v2, v0

    if-ltz v3, :cond_38

    cmpl-float v3, v2, v1

    if-lez v3, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 198
    :cond_38
    :goto_38
    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mLineScaleX:F

    sub-float v2, v1, v2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    div-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 199
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    invoke-virtual {v2, v0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->setAlpha(F)V

    .line 200
    iget-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mIsDrawable:Z

    if-eqz v0, :cond_63

    .line 201
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->drawSpectrum(Landroid/graphics/Canvas;)V

    goto :goto_63

    .line 203
    :cond_58
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleY:F

    const v2, 0x3dcccccd  # 0.1f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleY:F

    .line 204
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->drawCircel(Landroid/graphics/Canvas;)V

    .line 207
    :cond_63
    :goto_63
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleY:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_74

    .line 208
    iput v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScaleY:F

    .line 210
    iput v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mState:I

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mColor:I

    invoke-virtual {p1, p0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->setColor(I)V

    :cond_74
    return-void
.end method

.method private drawSpectrum(Landroid/graphics/Canvas;)V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/voicewakeup/WaveCurve;->setAmplitude(F)V

    .line 177
    iget-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mIsDrawable:Z

    if-eqz v0, :cond_11

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveCurve;->drawAll(Landroid/graphics/Canvas;)V

    :cond_11
    return-void
.end method

.method private getCircelPaint()Landroid/graphics/Paint;
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [F

    .line 249
    fill-array-data v2, :array_48

    .line 251
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L  # 1.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/4 v4, 0x0

    const v5, 0xffffff

    aput v5, v1, v4

    .line 256
    iget v4, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mColor:I

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 259
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 261
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, v3

    .line 262
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    new-instance v3, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    invoke-direct {v3, v6, p0, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 266
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 268
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v4

    :array_48
    .array-data 4
        0x3e4ccccd  # 0.2f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 281
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41200000  # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    .line 282
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42f00000  # 120.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->maxAngle:I

    .line 283
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mPaint:Landroid/graphics/Paint;

    .line 285
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 286
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0, p1, v1}, Landroid/view/SurfaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 289
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 290
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 291
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 292
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 293
    new-instance v1, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, p0, v2}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;-><init>(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSpectRunnable:Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;

    .line 294
    iput-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->isRun:Z

    const/high16 v0, 0x429c0000  # 78.0f

    .line 296
    invoke-direct {p0, v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->dimen2Px(F)I

    move-result v0

    div-int/2addr v0, p1

    const/high16 v1, 0x40000000  # 2.0f

    invoke-direct {p0, v1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->dimen2Px(F)I

    move-result v1

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelRadius:I

    return-void
.end method

.method private initParams(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    const p1, -0x22b1b5

    .line 74
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mColor:I

    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->isRun:Z

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSpectRunnable:Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;

    .line 372
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    .line 373
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 374
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    return-void
.end method

.method public getRotate()F
    .registers 1

    .line 378
    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mRotate:I

    int-to-float p0, p0

    return p0
.end method

.method public getScale()F
    .registers 1

    .line 351
    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScale:F

    return p0
.end method

.method public getState()I
    .registers 1

    .line 341
    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mState:I

    return p0
.end method

.method public setAlpha(F)V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mCircelPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_d

    .line 366
    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mColor:I

    invoke-direct {p0, v1, p1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->aphlaColor(IF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_d
    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 274
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mColor:I

    .line 275
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    if-eqz p0, :cond_9

    .line 276
    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveCurve;->setColor(I)V

    :cond_9
    return-void
.end method

.method public setDrawable(Z)V
    .registers 2

    .line 382
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mIsDrawable:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 104
    new-instance v0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;

    invoke-direct {v0, p0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;-><init>(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)V

    invoke-super {p0, v0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mClickListher:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPointColor(I)V
    .registers 2

    return-void
.end method

.method public setPointColorAni(I)V
    .registers 2

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 345
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mScale:F

    float-to-int p1, p1

    .line 347
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    return-void
.end method

.method public setState(I)V
    .registers 3

    .line 331
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 334
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    goto :goto_f

    :cond_9
    if-nez p1, :cond_f

    .line 336
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    :cond_f
    :goto_f
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    const-string p0, "RecordSpectrumView"

    const-string p1, "surfaceChanged"

    .line 111
    invoke-static {p0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 79
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    if-nez p1, :cond_22

    .line 80
    new-instance p1, Lcom/meizu/settings/voicewakeup/WaveCurve;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/meizu/settings/voicewakeup/WaveCurve;-><init>(II)V

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    .line 81
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mColor:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->setColor(I)V

    .line 82
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mWaveCurve:Lcom/meizu/settings/voicewakeup/WaveCurve;

    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->setAmplitude(F)V

    .line 85
    :cond_22
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    if-nez p1, :cond_3c

    .line 86
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mSpectRunnable:Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->isRun:Z

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 89
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_3c
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string p1, "RecordSpectrumView"

    const-string v0, "surfaceDestroyed"

    .line 116
    invoke-static {p1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->isRun:Z

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_1b

    .line 119
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1b

    .line 121
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_16

    move v0, p1

    goto :goto_b

    :catch_16
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    :cond_1b
    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public declared-synchronized updateVisualizer(I)V
    .registers 3

    monitor-enter p0

    mul-int/lit8 p1, p1, 0x4

    .line 304
    :try_start_3
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    .line 305
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    if-ge p1, v0, :cond_12

    .line 306
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->minAngle:I

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    .line 307
    :cond_12
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->maxAngle:I

    if-le p1, v0, :cond_1c

    .line 308
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->maxAngle:I

    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mAngle:I

    :cond_1c
    const/4 p1, 0x0

    .line 310
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->mState:I
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 311
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
