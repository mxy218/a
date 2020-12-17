.class public Lcom/meizu/settings/voicewakeup/WaveCurve;
.super Ljava/lang/Object;
.source "WaveCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;
    }
.end annotation


# instance fields
.field private mColors:[I

.field private final mCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaints:[Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mCurves:Ljava/util/List;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/graphics/Paint;

    .line 17
    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mColors:[I

    .line 24
    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mWidth:I

    .line 25
    iput p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mHeight:I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/voicewakeup/WaveCurve;->initCurve(II)V

    .line 27
    invoke-virtual {p0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->initCurveSurfaceView()V

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->initPaintColors()V

    return-void

    nop

    :array_2c
    .array-data 4
        -0x1
        -0x19000001
        -0x28000001
        -0x4b000001
        -0x66000001
        0x7fffffff
        0x66ffffff
    .end array-data
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

.method private initCurve(II)V
    .registers 12

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1c

    .line 43
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mCurves:Ljava/util/List;

    new-instance v8, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v6, v2, 0x64

    rsub-int/lit8 v2, v2, 0x26

    int-to-float v7, v2

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;-><init>(Lcom/meizu/settings/voicewakeup/WaveCurve;IIIF)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method private initPaintColors()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_16

    .line 49
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v1, v0

    if-eqz v2, :cond_13

    .line 50
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mColors:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method


# virtual methods
.method public drawAll(Landroid/graphics/Canvas;)V
    .registers 5

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    .line 101
    :goto_3
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mCurves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 102
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mCurves:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;

    if-eqz v1, :cond_1c

    .line 104
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1f
    return-void
.end method

.method protected initCurveSurfaceView()V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    :goto_e
    const/4 v2, 0x7

    if-ge v0, v2, :cond_43

    .line 58
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v2, v0

    .line 59
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x3

    if-ge v0, v2, :cond_30

    .line 61
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_39

    .line 63
    :cond_30
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    :goto_39
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_43
    return-void
.end method

.method public setAlpha(F)V
    .registers 6

    .line 70
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mPaints:[Landroid/graphics/Paint;

    if-eqz p0, :cond_14

    .line 71
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    const/high16 v3, 0x437f0000  # 255.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public setAmplitude(F)V
    .registers 5

    const/4 v0, 0x0

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mCurves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 91
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mCurves:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;

    if-eqz v1, :cond_1b

    mul-int/lit8 v2, v0, 0x8

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->setAmplitude(F)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method public setColor(I)V
    .registers 7

    const/4 v0, 0x0

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve;->mColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_17

    const/high16 v2, 0x3f800000  # 1.0f

    int-to-float v3, v0

    const v4, 0x3dcccccd  # 0.1f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 35
    invoke-direct {p0, p1, v2}, Lcom/meizu/settings/voicewakeup/WaveCurve;->aphlaColor(IF)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_17
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/WaveCurve;->initPaintColors()V

    return-void
.end method
