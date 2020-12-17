.class Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;
.super Ljava/lang/Object;
.source "WaveCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/WaveCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Curve"
.end annotation


# instance fields
.field private mAmplitude:F

.field private mAngle:I

.field private mAngleIncrement:I

.field private mHalfHeight:I

.field private mHeight:I

.field private final mPath:Landroid/graphics/Path;

.field private mPeaks:[F

.field private mPointCount:I

.field private mPointX:[F

.field private mPointY:[F

.field private mRadians:[F

.field private mWidth:I

.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveCurve;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/voicewakeup/WaveCurve;IIIF)V
    .registers 8

    .line 130
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->this$0:Lcom/meizu/settings/voicewakeup/WaveCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    .line 131
    iput p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mWidth:I

    .line 132
    iput p3, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mHeight:I

    .line 133
    iput p5, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    const/16 p1, 0x14

    .line 134
    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngleIncrement:I

    .line 135
    iget p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mHeight:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mHalfHeight:I

    .line 136
    iget p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mWidth:I

    div-int/lit8 p1, p1, 0x32

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointCount:I

    .line 137
    iput p4, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    .line 138
    iget p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointCount:I

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointX:[F

    .line 139
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointY:[F

    .line 140
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mRadians:[F

    .line 141
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPeaks:[F

    add-int/lit8 p1, p1, -0x1

    :goto_3a
    if-ltz p1, :cond_60

    .line 143
    iget-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mRadians:[F

    iget p3, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    int-to-double p3, p3

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr p3, v0

    const-wide v0, 0x4066800000000000L  # 180.0

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    double-to-float p3, p3

    aput p3, p2, p1

    .line 144
    iget p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    iget p3, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngleIncrement:I

    add-int/2addr p2, p3

    rem-int/lit16 p2, p2, 0x168

    iput p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_3a

    :cond_60
    const/4 p1, 0x0

    .line 146
    :goto_61
    iget p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointCount:I

    if-ge p1, p2, :cond_a4

    .line 147
    iget-object p3, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointX:[F

    mul-int/lit8 p4, p1, 0x32

    int-to-float p4, p4

    aput p4, p3, p1

    .line 148
    iget-object p4, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPeaks:[F

    const/high16 p5, -0x3f800000  # -4.0f

    aget v0, p3, p1

    mul-float/2addr v0, p5

    aget p5, p3, p1

    mul-float/2addr v0, p5

    add-int/lit8 p5, p2, -0x1

    mul-int/lit8 p5, p5, 0x32

    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x32

    mul-int/2addr p5, v1

    int-to-float p5, p5

    div-float/2addr v0, p5

    const/high16 p5, 0x40800000  # 4.0f

    aget p3, p3, p1

    mul-float/2addr p3, p5

    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 p2, p2, 0x32

    int-to-float p2, p2

    div-float/2addr p3, p2

    add-float/2addr v0, p3

    aput v0, p4, p1

    .line 150
    iget-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointY:[F

    iget-object p3, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mRadians:[F

    aget p3, p3, p1

    iget p5, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    mul-float/2addr p3, p5

    aget p4, p4, p1

    mul-float/2addr p3, p4

    iget p4, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mHalfHeight:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_61

    .line 152
    :cond_a4
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    sget-object p1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 14

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointX:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointY:[F

    aget v1, v1, v2

    const/4 v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v3

    .line 164
    :goto_1f
    iget v5, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointCount:I

    const/high16 v6, 0x40000000  # 2.0f

    if-ge v0, v5, :cond_3d

    .line 165
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointX:[F

    aget v5, v5, v0

    .line 166
    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointY:[F

    aget v7, v7, v0

    .line 167
    iget-object v8, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    add-float v9, v1, v5

    div-float/2addr v9, v6

    add-float v10, v4, v7

    div-float/2addr v10, v6

    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    move v4, v7

    goto :goto_1f

    .line 171
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    div-float/2addr v5, v6

    iget v7, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mHalfHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v6

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 172
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mRadians:[F

    iget p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointCount:I

    sub-int/2addr p2, v3

    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mRadians:[F

    iget p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    int-to-double v0, p2

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v0, v3

    const-wide v3, 0x4066800000000000L  # 180.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p2, v0

    aput p2, p1, v2

    .line 176
    iget p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    iget p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngleIncrement:I

    add-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAngle:I

    .line 177
    :goto_7a
    iget p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointCount:I

    if-ge v2, p1, :cond_95

    .line 178
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPointY:[F

    iget-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mRadians:[F

    aget p2, p2, v2

    iget v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mPeaks:[F

    aget v0, v0, v2

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mHalfHeight:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_95
    return-void
.end method

.method public setAmplitude(F)V
    .registers 4

    .line 156
    iget v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    .line 157
    iget p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_10

    move p1, v0

    :cond_10
    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveCurve$Curve;->mAmplitude:F

    return-void
.end method
