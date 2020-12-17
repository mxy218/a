.class Landroid/support/v4/widget/CircularProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field mAlpha:I

.field mArrow:Landroid/graphics/Path;

.field mArrowHeight:I

.field final mArrowPaint:Landroid/graphics/Paint;

.field mArrowScale:F

.field mArrowWidth:I

.field final mCirclePaint:Landroid/graphics/Paint;

.field mColorIndex:I

.field mColors:[I

.field mCurrentColor:I

.field mEndTrim:F

.field final mPaint:Landroid/graphics/Paint;

.field mRingCenterRadius:F

.field mRotation:F

.field mShowArrow:Z

.field mStartTrim:F

.field mStartingEndTrim:F

.field mStartingRotation:F

.field mStartingStartTrim:F

.field mStrokeWidth:F

.field final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 620
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 621
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 622
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 624
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 625
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 626
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    const/high16 v0, 0x40a00000  # 5.0f

    .line 627
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v0, 0x3f800000  # 1.0f

    .line 639
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    const/16 v0, 0xff

    .line 643
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    .line 647
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 648
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 649
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 651
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 652
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 654
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 11

    .line 688
    iget-object v6, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 689
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2d

    .line 692
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v0, v1

    .line 695
    :cond_2d
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 696
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 697
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 698
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v1

    .line 695
    invoke-virtual {v6, v0, v3, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 700
    iget p2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr p2, v0

    const/high16 v1, 0x43b40000  # 360.0f

    mul-float/2addr p2, v1

    .line 701
    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    add-float/2addr v3, v0

    mul-float/2addr v3, v1

    sub-float v7, v3, p2

    .line 704
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 708
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v0, v2

    .line 709
    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 710
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v0, v0

    .line 712
    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v4, 0x0

    .line 714
    iget-object v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    move v2, p2

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual {p0, p1, p2, v7, v6}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    return-void
.end method

.method drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .registers 12

    .line 720
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_90

    .line 721
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_17

    .line 722
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 723
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1a

    .line 725
    :cond_17
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 727
    :goto_1a
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 728
    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 733
    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 734
    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 735
    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    iget v6, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 737
    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v0, v4

    sub-float/2addr v0, v2

    .line 738
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 737
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 739
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 741
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float/2addr p2, p3

    .line 744
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    .line 745
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    .line 744
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 746
    iget-object p2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_90
    return-void
.end method

.method getAlpha()I
    .registers 1

    .line 831
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    return p0
.end method

.method getEndTrim()F
    .registers 1

    .line 871
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    return p0
.end method

.method getNextColor()I
    .registers 2

    .line 801
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColorIndex()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method getNextColorIndex()I
    .registers 2

    .line 805
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    array-length p0, p0

    rem-int/2addr v0, p0

    return v0
.end method

.method getStartTrim()F
    .registers 1

    .line 851
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    return p0
.end method

.method getStartingColor()I
    .registers 2

    .line 863
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget p0, v0, p0

    return p0
.end method

.method getStartingEndTrim()F
    .registers 1

    .line 859
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    return p0
.end method

.method getStartingRotation()F
    .registers 1

    .line 923
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    return p0
.end method

.method getStartingStartTrim()F
    .registers 1

    .line 855
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    return p0
.end method

.method goToNextColor()V
    .registers 2

    .line 813
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method resetOriginals()V
    .registers 2

    const/4 v0, 0x0

    .line 940
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 941
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 942
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 943
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 944
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 945
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setAlpha(I)V
    .registers 2

    .line 824
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    return-void
.end method

.method setArrowDimensions(FF)V
    .registers 3

    float-to-int p1, p1

    .line 664
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    float-to-int p1, p2

    .line 665
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method setArrowScale(F)V
    .registers 3

    .line 910
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 911
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    :cond_8
    return-void
.end method

.method setCenterRadius(F)V
    .registers 2

    .line 886
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    return-void
.end method

.method setColor(I)V
    .registers 2

    .line 774
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 817
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setColorIndex(I)V
    .registers 3

    .line 793
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 794
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget p1, p1, v0

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method setColors([I)V
    .registers 2
    .param p1  # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 757
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    const/4 p1, 0x0

    .line 759
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method setEndTrim(F)V
    .registers 2

    .line 867
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    return-void
.end method

.method setRotation(F)V
    .registers 2

    .line 875
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    return-void
.end method

.method setShowArrow(Z)V
    .registers 3

    .line 897
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_6

    .line 898
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    :cond_6
    return-void
.end method

.method setStartTrim(F)V
    .registers 2

    .line 847
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    return-void
.end method

.method setStrokeWidth(F)V
    .registers 2

    .line 838
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 839
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method storeOriginals()V
    .registers 2

    .line 931
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 932
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 933
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method