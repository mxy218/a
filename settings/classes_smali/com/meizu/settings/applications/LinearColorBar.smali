.class public Lcom/meizu/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;
    }
.end annotation


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field private mColoredRegions:I

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLastLeftDiv:I

.field mLastRegion:I

.field mLastRightDiv:I

.field private mLeftColor:I

.field mLineWidth:I

.field private mMiddleColor:I

.field private mOnRegionTappedListener:Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowIndicator:Z

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xff6978

    .line 29
    iput p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLeftColor:I

    .line 30
    iput p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mMiddleColor:I

    const p1, -0x312825

    .line 31
    iput p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mRightColor:I

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mShowIndicator:Z

    const/4 p2, 0x7

    .line 37
    iput p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 39
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 49
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 50
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 65
    iget-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v0, 0xf0

    if-lt p2, v0, :cond_6d

    const/4 p2, 0x2

    goto :goto_6e

    :cond_6d
    move p2, p1

    .line 70
    :goto_6e
    iput p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLineWidth:I

    .line 71
    iget-object p2, p0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object p0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private pickColor(II)I
    .registers 4

    .line 176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRegion:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_d

    const/4 p0, -0x1

    return p0

    .line 179
    :cond_d
    iget p0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColoredRegions:I

    and-int/2addr p0, p2

    if-nez p0, :cond_16

    const p0, -0xaaaaab

    return p0

    :cond_16
    return p1
.end method

.method private updateIndicator()V
    .registers 13

    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 119
    :cond_c
    iget-object v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget-boolean v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-nez v1, :cond_1b

    return-void

    .line 124
    :cond_1b
    iget-boolean v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mShowingGreen:Z

    const v2, 0xffffff

    if-eqz v1, :cond_3a

    .line 125
    iget-object v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v0, -0x2

    int-to-float v7, v3

    iget v9, p0, Lcom/meizu/settings/applications/LinearColorBar;->mRightColor:I

    and-int v8, v9, v2

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_51

    .line 128
    :cond_3a
    iget-object v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v0, -0x2

    int-to-float v7, v3

    iget v9, p0, Lcom/meizu/settings/applications/LinearColorBar;->mMiddleColor:I

    and-int v8, v9, v2

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 131
    :goto_51
    iget-object p0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    const v6, 0xa0a0a0

    const v7, -0x5f5f60

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .registers 2

    .line 163
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 187
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 193
    iget v4, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, 0x0

    add-int/2addr v4, v5

    .line 194
    iget v6, v0, Lcom/meizu/settings/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v6, v3

    float-to-int v6, v6

    add-int/2addr v6, v4

    .line 195
    iget v7, v0, Lcom/meizu/settings/applications/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v6

    .line 198
    iget-boolean v7, v0, Lcom/meizu/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v7, :cond_23

    move v7, v3

    move v3, v6

    goto :goto_25

    :cond_23
    move v3, v4

    move v7, v6

    .line 206
    :goto_25
    iget v8, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    const/4 v9, 0x1

    if-ne v8, v3, :cond_2e

    iget v8, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLastInterestingRight:I

    if-eq v8, v7, :cond_c2

    .line 207
    :cond_2e
    iget-object v8, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 208
    iget-object v8, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 209
    iget-boolean v8, v0, Lcom/meizu/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-eqz v8, :cond_be

    if-ge v3, v7, :cond_be

    .line 210
    iget-object v8, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 213
    iget-object v10, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v15, v3

    int-to-float v11, v8

    invoke-virtual {v10, v15, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    iget-object v11, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    const/4 v13, 0x0

    const/high16 v14, -0x40000000  # -2.0f

    int-to-float v8, v8

    const/high16 v16, -0x40000000  # -2.0f

    const/16 v17, 0x0

    move v12, v15

    move v10, v15

    move v15, v8

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 217
    iget-object v11, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v12, v2, 0x2

    sub-int/2addr v12, v9

    int-to-float v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v11, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v14, v7

    const/16 v20, 0x0

    iget-object v15, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v8

    move/from16 v19, v14

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 221
    iget-object v11, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 222
    iget v11, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v11, v11

    const/high16 v15, 0x3f000000  # 0.5f

    add-float/2addr v11, v15

    .line 223
    iget-object v15, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v16, -0x40000000  # -2.0f

    add-float v9, v11, v16

    invoke-virtual {v15, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    iget-object v15, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-float v21, v10, v11

    iget-object v10, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    move-object/from16 v16, v15

    move/from16 v17, v9

    move/from16 v19, v21

    move/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 227
    iget-object v9, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    sub-float v10, v12, v11

    invoke-virtual {v9, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    iget-object v9, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    sub-float v21, v14, v11

    iget-object v11, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v19, v21

    move/from16 v22, v11

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 232
    :cond_be
    iput v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    .line 233
    iput v7, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLastInterestingRight:I

    .line 236
    :cond_c2
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d8

    .line 237
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/meizu/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 238
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/meizu/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d8
    if-lez v4, :cond_f7

    .line 242
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 243
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 244
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLeftColor:I

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Lcom/meizu/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v4, 0x0

    sub-int/2addr v2, v3

    move v5, v4

    .line 250
    :cond_f7
    iput v4, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLastLeftDiv:I

    .line 251
    iput v6, v0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v5, v6, :cond_11a

    .line 256
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 257
    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 258
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/meizu/settings/applications/LinearColorBar;->mMiddleColor:I

    const/4 v7, 0x2

    invoke-direct {v0, v4, v7}, Lcom/meizu/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v3, v6, v5

    sub-int/2addr v2, v3

    move v5, v6

    :cond_11a
    add-int/2addr v2, v5

    if-ge v5, v2, :cond_136

    .line 267
    iget-object v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 268
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 269
    iget-object v2, v0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRightColor:I

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4}, Lcom/meizu/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v2, v0, Lcom/meizu/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/meizu/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_136
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 138
    invoke-direct {p0}, Lcom/meizu/settings/applications/LinearColorBar;->updateIndicator()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_26

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    .line 146
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 147
    iget v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastLeftDiv:I

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    .line 148
    iput v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_23

    .line 149
    :cond_18
    iget v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v0, v1, :cond_20

    const/4 v0, 0x2

    .line 150
    iput v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_23

    :cond_20
    const/4 v0, 0x4

    .line 152
    iput v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRegion:I

    .line 154
    :goto_23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 158
    :cond_26
    :goto_26
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRegion:I

    if-eqz v1, :cond_e

    .line 169
    invoke-interface {v0, v1}, Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;->onRegionTapped(I)V

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mLastRegion:I

    .line 172
    :cond_e
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public setColoredRegions(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setOnRegionTappedListener(Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_e

    .line 77
    iput-object p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/meizu/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 78
    :goto_b
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_e
    return-void
.end method

.method public setShowIndicator(Z)V
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 104
    invoke-direct {p0}, Lcom/meizu/settings/applications/LinearColorBar;->updateIndicator()V

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setShowingGreen(Z)V
    .registers 3

    .line 109
    iget-boolean v0, p0, Lcom/meizu/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_c

    .line 110
    iput-boolean p1, p0, Lcom/meizu/settings/applications/LinearColorBar;->mShowingGreen:Z

    .line 111
    invoke-direct {p0}, Lcom/meizu/settings/applications/LinearColorBar;->updateIndicator()V

    .line 112
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_c
    return-void
.end method
