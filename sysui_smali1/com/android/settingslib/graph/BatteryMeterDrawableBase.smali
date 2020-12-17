.class public Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawableBase.java"


# instance fields
.field protected final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field protected final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field protected mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private final mFrame:Landroid/graphics/RectF;

.field protected final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mLevel:I

.field private final mOutlinePath:Landroid/graphics/Path;

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPlusFrame:Landroid/graphics/RectF;

.field protected final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field protected mPowerSaveAsColorError:Z

.field private mPowerSaveEnabled:Z

.field protected final mPowersavePaint:Landroid/graphics/Paint;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mTextHeight:F

.field protected final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field protected final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method private getColorForLevel(I)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 281
    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 282
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 283
    aget v3, v2, v3

    if-gt p1, v1, :cond_18

    .line 287
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_17

    .line 288
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return p0

    :cond_17
    return v3

    :cond_18
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_2

    :cond_1c
    return v1
.end method

.method private updateSize()V
    .registers 6

    .line 249
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 251
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 252
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000  # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    return-void
.end method


# virtual methods
.method protected batteryColorForLevel(I)I
    .registers 3

    .line 306
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v0, :cond_d

    goto :goto_12

    .line 308
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result p0

    goto :goto_14

    .line 307
    :cond_12
    :goto_12
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    :goto_14
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 313
    iget v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    return-void

    :cond_e
    int-to-float v4, v2

    const/high16 v5, 0x42c80000  # 100.0f

    div-float/2addr v4, v5

    .line 319
    iget v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getAspectRatio()F

    move-result v6

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 321
    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    sub-int/2addr v7, v6

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v9, v5

    .line 322
    iget v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    mul-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 323
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    .line 324
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v11

    sub-int/2addr v3, v5

    .line 326
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v12

    int-to-float v14, v3

    add-int/2addr v12, v6

    int-to-float v12, v12

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {v11, v13, v14, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    int-to-float v5, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 330
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v6

    const v11, 0x3e8f5c29  # 0.28f

    mul-float/2addr v6, v11

    .line 331
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->top:F

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 333
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v11, v6

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v10, v10

    add-float/2addr v6, v10

    .line 330
    invoke-virtual {v3, v5, v12, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v10

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 340
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->batteryColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x60

    const/high16 v5, 0x3f800000  # 1.0f

    if-lt v2, v3, :cond_87

    move v4, v5

    goto :goto_8c

    .line 344
    :cond_87
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-gt v2, v3, :cond_8c

    move v4, v7

    :cond_8c
    :goto_8c
    cmpl-float v3, v4, v5

    if-nez v3, :cond_95

    .line 348
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_a1

    .line 349
    :cond_95
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    .line 352
    :goto_a1
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 353
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getRadiusRatio()F

    move-result v4

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v6, v10

    mul-float/2addr v4, v6

    .line 355
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v6, v10}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 356
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v10, v4, v4, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 357
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 358
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v10, v4, v4, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 359
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 360
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 361
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {v6, v4, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 363
    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_1e1

    .line 366
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v11, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v12, 0x40800000  # 4.0f

    div-float/2addr v4, v12

    add-float/2addr v11, v4

    add-float/2addr v11, v5

    .line 367
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v15, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v16, 0x40c00000  # 6.0f

    div-float v4, v4, v16

    add-float/2addr v15, v4

    .line 368
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    sub-float/2addr v8, v4

    add-float/2addr v8, v5

    .line 369
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v17, 0x41200000  # 10.0f

    div-float v4, v4, v17

    sub-float/2addr v12, v4

    .line 370
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_13e

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v15

    if-nez v5, :cond_13e

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_13e

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_1b2

    .line 372
    :cond_13e
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v11, v15, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 373
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 374
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v11, v11, v6

    .line 375
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v11, v5

    add-float/2addr v8, v11

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v11, v5, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v12, v12, v10

    .line 376
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    .line 374
    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x2

    .line 377
    :goto_16a
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    array-length v8, v5

    if-ge v4, v8, :cond_193

    .line 378
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    aget v5, v5, v4

    .line 379
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v5, v11

    add-float/2addr v12, v5

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v11, v5, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    add-int/lit8 v16, v4, 0x1

    aget v15, v15, v16

    .line 380
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v15, v5

    add-float/2addr v11, v15

    .line 378
    invoke-virtual {v8, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_16a

    .line 382
    :cond_193
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    aget v5, v5, v6

    .line 383
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v11, v5

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v12, v12, v10

    .line 384
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v12, v5

    add-float/2addr v8, v12

    .line 382
    invoke-virtual {v4, v11, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 387
    :cond_1b2
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v5, v3

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v4

    div-float/2addr v8, v5

    .line 388
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3e99999a  # 0.3f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1d6

    .line 391
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2bf

    .line 394
    :cond_1d6
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_2bf

    .line 396
    :cond_1e1
    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_2bf

    .line 398
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    mul-float/2addr v4, v5

    const/high16 v8, 0x40400000  # 3.0f

    div-float/2addr v4, v8

    .line 399
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v11, v8

    .line 400
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v12, v8

    .line 401
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v15, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v5

    sub-float/2addr v15, v8

    .line 402
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v5

    sub-float/2addr v7, v8

    .line 403
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_237

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v12

    if-nez v5, :cond_237

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v15

    if-nez v5, :cond_237

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2ab

    .line 405
    :cond_237
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v11, v12, v15, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 406
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 407
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v8, v8, v6

    .line 408
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v11, v11, v10

    .line 409
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v11, v5

    add-float/2addr v8, v11

    .line 407
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x2

    .line 410
    :goto_263
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    array-length v7, v5

    if-ge v4, v7, :cond_28c

    .line 411
    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    aget v5, v5, v4

    .line 412
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v11, v5

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    add-int/lit8 v15, v4, 0x1

    aget v12, v12, v15

    .line 413
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v12, v5

    add-float/2addr v8, v12

    .line 411
    invoke-virtual {v7, v11, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_263

    .line 415
    :cond_28c
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    aget v5, v5, v6

    .line 416
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v8, v5

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v11, v11, v10

    .line 417
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v11, v5

    add-float/2addr v7, v11

    .line 415
    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    :cond_2ab
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 422
    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v4, :cond_2bf

    .line 423
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2bf
    :goto_2bf
    const/4 v4, 0x0

    .line 431
    iget-boolean v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    const/high16 v7, 0x3f000000  # 0.5f

    if-nez v5, :cond_336

    iget-boolean v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-nez v5, :cond_336

    iget v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-le v2, v5, :cond_336

    iget-boolean v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v5, :cond_336

    .line 432
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    .line 435
    iget v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    const/16 v8, 0x64

    if-ne v5, v8, :cond_2e7

    const v5, 0x3ec28f5c  # 0.38f

    goto :goto_2e8

    :cond_2e7
    move v5, v7

    :goto_2e8
    mul-float/2addr v9, v5

    .line 433
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    iput v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    .line 437
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 438
    iget v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v13

    .line 439
    iget v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v8, v8

    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    add-float/2addr v8, v9

    const v9, 0x3ef0a3d7  # 0.47f

    mul-float/2addr v8, v9

    add-float/2addr v8, v14

    cmpl-float v9, v3, v8

    if-lez v9, :cond_310

    move v6, v10

    :cond_310
    if-nez v6, :cond_338

    .line 442
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 443
    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    const/16 v17, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    move-object/from16 v16, v4

    move/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 445
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_338

    :cond_336
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 450
    :cond_338
    :goto_338
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 453
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iput v3, v9, Landroid/graphics/RectF;->top:F

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 455
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 456
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 459
    iget-boolean v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v3, :cond_380

    iget-boolean v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-nez v3, :cond_380

    .line 460
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-gt v2, v3, :cond_379

    .line 462
    iget v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v13

    .line 463
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    add-float/2addr v3, v4

    const v4, 0x3ef5c28f  # 0.48f

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    .line 464
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_380

    :cond_379
    if-eqz v6, :cond_380

    .line 467
    iget-object v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 472
    :cond_380
    :goto_380
    iget-boolean v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v2, :cond_393

    iget-boolean v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v2, :cond_393

    iget-boolean v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v2, :cond_393

    .line 473
    iget-object v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_393
    return-void
.end method

.method protected getAspectRatio()F
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 177
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_17

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_17

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_17

    .line 263
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 266
    :cond_17
    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getRadiusRatio()F
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    invoke-direct {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->updateSize()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 485
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 486
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 487
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 488
    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
