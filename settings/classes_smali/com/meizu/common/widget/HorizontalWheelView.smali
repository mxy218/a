.class public Lcom/meizu/common/widget/HorizontalWheelView;
.super Landroid/view/View;
.source "HorizontalWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;
    }
.end annotation


# instance fields
.field private mAllowScroll:Z

.field private mClick:Z

.field private mClickNumber:I

.field private mClickNumberOffset:F

.field private mClickOffset:F

.field private mDamping:F

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:I

.field private mDensity:F

.field private mDownX:I

.field private mDrawCount:I

.field private mIsAccessibilityEnable:Z

.field private mIsFling:Z

.field private mIsSetTotalMove:Z

.field private mLastX:I

.field private mLineColor:I

.field private mLineHeight:F

.field private mLineMarginBottom:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartY:F

.field private mLineStopY:F

.field private mLineWidth:F

.field private mLittleLineColor:I

.field private mLittleLineWidth:F

.field private mMaxTotalMove:F

.field private mMiddle:I

.field private mMinVelocity:I

.field private mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

.field private mOnce:Z

.field private mPaintRound:Z

.field private mScaleDistance:F

.field private mScaleTextSize:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSelected:I

.field private mSelectedColor:I

.field private mShowNumber:I

.field private mTextColor:I

.field private mTextMargin:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalMove:F

.field private mTouching:Z

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mTriangleSideLength:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/HorizontalWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41900000  # 18.0f

    .line 152
    iput p3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    const/high16 v0, -0x10000

    .line 153
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    const/high16 v0, -0x1000000

    .line 154
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    .line 156
    iput p3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    const/16 p3, 0x64

    .line 157
    iput p3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    const/4 p3, 0x1

    .line 160
    iput-boolean p3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    const/high16 v1, 0x40000000  # 2.0f

    .line 162
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 163
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    const/high16 v2, 0x41a00000  # 20.0f

    .line 166
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    const/high16 v2, 0x41200000  # 10.0f

    .line 169
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    .line 170
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    .line 174
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    .line 175
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    const/4 v0, 0x5

    .line 178
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    const/high16 v2, 0x40a00000  # 5.0f

    .line 183
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    .line 184
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    .line 185
    iput-boolean p3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    const/4 v0, -0x1

    .line 203
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 207
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    .line 211
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 212
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    .line 224
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->init()V

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/HorizontalWheelView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 227
    iget-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    invoke-virtual {v0, v2, v1, p3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 232
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    add-float/2addr v0, v1

    int-to-float p2, p2

    add-float/2addr v0, p2

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    .line 235
    iget p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    .line 237
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    .line 238
    iget-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-boolean p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mPaintRound:Z

    if-eqz p2, :cond_9f

    .line 240
    iget-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 243
    :cond_9f
    iget p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    .line 244
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    .line 245
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    .line 246
    iget-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const-string p2, "accessibility"

    .line 249
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_d2

    .line 251
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    .line 253
    :cond_d2
    iget-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    if-eqz p1, :cond_d9

    .line 254
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 256
    :cond_d9
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/HorizontalWheelView;)I
    .registers 1

    .line 145
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/HorizontalWheelView;)Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    return-object p0
.end method

.method private computeDistance(F)F
    .registers 3

    .line 639
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    const/high16 v0, 0x40000000  # 2.0f

    div-float v0, p0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_c

    neg-float p0, p1

    return p0

    :cond_c
    sub-float/2addr p0, p1

    return p0
.end method

.method private computeTextSizeAndColor(IF)V
    .registers 11

    .line 656
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 657
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 658
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 659
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 660
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 662
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 663
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 664
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 665
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float v1, v1

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float/2addr v7, p2

    mul-float/2addr v1, v7

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, v7

    int-to-float v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    int-to-float v4, v6

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v7

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 672
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 674
    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private countVelocityTracker()V
    .registers 12

    .line 557
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 558
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 559
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    const/high16 v1, 0x3f800000  # 1.0f

    .line 560
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 562
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_35

    .line 564
    :cond_32
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->fixPos()V

    :goto_35
    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;)V
    .registers 14

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 390
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    rem-float v2, v0, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 393
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    if-eq v0, v1, :cond_21

    .line 394
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 395
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->notifySelectedChange()V

    .line 396
    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    if-ne v1, v3, :cond_21

    .line 397
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 401
    :cond_21
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 403
    :goto_28
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDrawCount:I

    if-ge v2, v3, :cond_f2

    int-to-float v3, v2

    .line 405
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v4, v3

    add-float v8, v1, v4

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    const/high16 v11, 0x40800000  # 4.0f

    if-gez v4, :cond_8e

    add-int v4, v0, v2

    .line 408
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    if-gt v4, v5, :cond_8e

    .line 410
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    rem-int v5, v4, v5

    if-nez v5, :cond_73

    .line 411
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/HorizontalWheelView;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v5, v8}, Lcom/meizu/common/widget/HorizontalWheelView;->getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;

    move-result-object v5

    .line 413
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-direct {p0, v4, v5, v8}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 416
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v9, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget-object v10, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 419
    :cond_73
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-direct {p0, v4, v5, v8}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 420
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float v6, v5, v11

    add-float v7, v4, v6

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    div-float/2addr v5, v11

    sub-float v9, v4, v5

    iget-object v10, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 426
    :cond_8e
    :goto_8e
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v3, v4

    sub-float v7, v1, v3

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_ee

    sub-int v3, v0, v2

    if-ltz v3, :cond_ee

    .line 431
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    rem-int v4, v3, v4

    if-nez v4, :cond_cc

    .line 433
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/HorizontalWheelView;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    iget-object v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v7}, Lcom/meizu/common/widget/HorizontalWheelView;->getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 435
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-direct {p0, v3, v4, v7}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 438
    iget v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget-object v9, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_ee

    .line 440
    :cond_cc
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-direct {p0, v3, v4, v7}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 441
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 442
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float v5, v4, v11

    add-float v6, v3, v5

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    div-float/2addr v4, v11

    sub-float v8, v3, v4

    iget-object v9, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_ee
    :goto_ee
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_28

    .line 450
    :cond_f2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fixPos()V
    .registers 8

    const/4 v0, 0x0

    .line 627
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    const/4 v0, 0x1

    .line 628
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    .line 629
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 630
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 631
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    rem-float/2addr v0, v1

    .line 632
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->computeDistance(F)F

    move-result v0

    .line 633
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 634
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    float-to-int v2, v2

    float-to-int v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 278
    sget-object v0, Lcom/meizu/common/R$styleable;->HorizontalWheelView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, v1

    :goto_c
    if-ge v0, p2, :cond_f8

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 282
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcScaleDistance:I

    if-ne v2, v3, :cond_22

    .line 283
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    goto/16 :goto_f4

    .line 285
    :cond_22
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextColor:I

    const/high16 v4, -0x1000000

    if-ne v2, v3, :cond_30

    .line 286
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    goto/16 :goto_f4

    .line 288
    :cond_30
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextSize:I

    if-ne v2, v3, :cond_48

    .line 289
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 290
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    goto/16 :goto_f4

    .line 291
    :cond_48
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcSelectedColor:I

    if-ne v2, v3, :cond_56

    const/high16 v3, -0x10000

    .line 292
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    goto/16 :goto_f4

    .line 294
    :cond_56
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineColor:I

    if-ne v2, v3, :cond_62

    .line 295
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    goto/16 :goto_f4

    .line 297
    :cond_62
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineWidth:I

    if-ne v2, v3, :cond_70

    .line 298
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    goto/16 :goto_f4

    .line 300
    :cond_70
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineHeight:I

    if-ne v2, v3, :cond_7e

    .line 301
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    goto/16 :goto_f4

    .line 303
    :cond_7e
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLittleLineWidth:I

    if-ne v2, v3, :cond_8c

    .line 304
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    goto/16 :goto_f4

    .line 306
    :cond_8c
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLittleLineColor:I

    if-ne v2, v3, :cond_97

    .line 307
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    goto :goto_f4

    .line 309
    :cond_97
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTriangleSideLength:I

    if-ne v2, v3, :cond_a4

    .line 310
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    goto :goto_f4

    .line 312
    :cond_a4
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcShowNumber:I

    if-ne v2, v3, :cond_b1

    .line 313
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    goto :goto_f4

    .line 315
    :cond_b1
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextMarginBottom:I

    if-ne v2, v3, :cond_be

    .line 316
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    goto :goto_f4

    .line 318
    :cond_be
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineMarginBottom:I

    if-ne v2, v3, :cond_cb

    .line 319
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    goto :goto_f4

    .line 321
    :cond_cb
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcDamping:I

    if-ne v2, v3, :cond_ea

    .line 322
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    .line 323
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_e2

    .line 324
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    goto :goto_f4

    :cond_e2
    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f4

    .line 326
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    goto :goto_f4

    .line 329
    :cond_ea
    sget v3, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcPaintRound:I

    if-ne v2, v3, :cond_f4

    .line 330
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mPaintRound:Z

    :cond_f4
    :goto_f4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 334
    :cond_f8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMove(F)F
    .registers 5

    .line 618
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float v1, v0, p1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    neg-float p1, v0

    goto :goto_15

    :cond_b
    add-float v1, v0, p1

    .line 620
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v1, v1, p0

    if-lez v1, :cond_15

    sub-float p1, p0, v0

    :cond_15
    :goto_15
    return p1
.end method

.method private getText(I)Ljava/lang/String;
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1d

    if-ltz p1, :cond_1d

    .line 455
    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 457
    :cond_1d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;
    .registers 7

    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 483
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 484
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    int-to-float p0, p0

    invoke-virtual {p1, p3, p0}, Landroid/graphics/PointF;->set(FF)V

    return-object p1
.end method

.method private init()V
    .registers 4

    .line 260
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    .line 262
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 263
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMinVelocity:I

    .line 266
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    .line 267
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    .line 268
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    .line 269
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    .line 270
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    .line 271
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    const/high16 v0, 0x40400000  # 3.0f

    mul-float/2addr v0, v1

    .line 272
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    const/high16 v0, 0x41700000  # 15.0f

    mul-float/2addr v1, v0

    .line 273
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumberOffset:F

    return-void
.end method

.method private initTriangle()V
    .registers 6

    .line 361
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    const-wide v0, 0x3ff0c152382d7365L  # 1.0471975511965976

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 363
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 365
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private notifySelectedChange()V
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    if-eqz v0, :cond_c

    .line 571
    new-instance v0, Lcom/meizu/common/widget/HorizontalWheelView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/HorizontalWheelView$1;-><init>(Lcom/meizu/common/widget/HorizontalWheelView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method private sendAccessibilityEvent()V
    .registers 2

    .line 865
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    if-eqz v0, :cond_11

    .line 866
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    .line 868
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_11
    return-void
.end method

.method private setLinePaint(IFF)V
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 463
    iget p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float p2, p3, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_27

    .line 464
    iget p2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr p2, p3

    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/HorizontalWheelView;->computeTextSizeAndColor(IF)V

    goto :goto_2c

    .line 466
    :cond_27
    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2c
    return-void
.end method

.method private setSelectNotDraw(I)V
    .registers 3

    .line 728
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    if-le p1, v0, :cond_7

    .line 729
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    goto :goto_f

    :cond_7
    if-gez p1, :cond_d

    const/4 p1, 0x0

    .line 731
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    goto :goto_f

    .line 733
    :cond_d
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 735
    :goto_f
    iget p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float p1, p1

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 6

    .line 582
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 584
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 585
    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    if-eqz v2, :cond_49

    .line 586
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 587
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    const/4 v0, 0x0

    cmpl-float v3, v2, v0

    if-ltz v3, :cond_29

    .line 588
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_33

    :cond_29
    cmpg-float v3, v2, v0

    if-gtz v3, :cond_3f

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_3f

    .line 589
    :cond_33
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 590
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 591
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    return-void

    .line 594
    :cond_3f
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v0

    .line 595
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_4c

    :cond_49
    int-to-float v0, v0

    .line 597
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 599
    :goto_4c
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_72

    .line 602
    :cond_50
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    if-eqz v0, :cond_58

    .line 603
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->fixPos()V

    goto :goto_72

    :cond_58
    const/4 v0, -0x1

    .line 605
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 606
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    .line 607
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    if-nez v0, :cond_6c

    .line 608
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 610
    :cond_6c
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    if-eqz v0, :cond_72

    .line 611
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    :cond_72
    :goto_72
    return-void
.end method

.method public getScaleDistance()F
    .registers 1

    .line 836
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    return p0
.end method

.method public getSelected()F
    .registers 1

    .line 344
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float p0, p0

    return p0
.end method

.method public getTotalMove()F
    .registers 1

    .line 861
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 649
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 650
    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_a

    .line 651
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->drawScaleLine(Landroid/graphics/Canvas;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->drawTriangle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 874
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 875
    const-class p0, Lcom/meizu/common/widget/HorizontalWheelView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    .line 350
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    if-eqz v0, :cond_29

    .line 351
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 352
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->initTriangle()V

    .line 353
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDrawCount:I

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    .line 357
    :cond_29
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 785
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1a

    .line 786
    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "selected"

    .line 787
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelect(I)V

    const-string v0, "instanceState"

    .line 788
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1d

    .line 790
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1d
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 772
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    const-string/jumbo v2, "selected"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1a

    .line 775
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    .line 777
    :cond_1a
    iget p0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1f
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 491
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    if-eqz v0, :cond_e1

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    if-eqz v0, :cond_a

    goto/16 :goto_e1

    .line 494
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 497
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1d

    .line 498
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 500
    :cond_1d
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_d1

    if-eq v0, v2, :cond_68

    const/4 v3, 0x2

    if-eq v0, v3, :cond_32

    const/4 v3, 0x3

    if-eq v0, v3, :cond_68

    goto/16 :goto_de

    .line 511
    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 515
    :cond_3f
    iget p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_50

    .line 517
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_5a

    :cond_50
    cmpg-float v3, p1, v0

    if-gtz v3, :cond_5b

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_5b

    :cond_5a
    return v2

    .line 520
    :cond_5b
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result p1

    .line 521
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_de

    .line 526
    :cond_68
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 527
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 528
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_c4

    .line 529
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 530
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    neg-float v4, v3

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_c4

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    add-float/2addr v4, v3

    cmpg-float v3, v0, v4

    if-gtz v3, :cond_c4

    .line 531
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v3

    .line 532
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumberOffset:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_c4

    .line 533
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    mul-int v5, v3, v4

    if-eq v0, v5, :cond_c4

    .line 534
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    mul-int/2addr v3, v4

    .line 535
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 536
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    const/16 v3, 0x1f4

    invoke-virtual {p0, v0, v3}, Lcom/meizu/common/widget/HorizontalWheelView;->smoothScroll(II)V

    .line 537
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    .line 543
    :cond_c4
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-nez v0, :cond_de

    .line 544
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 546
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->countVelocityTracker()V

    return v2

    .line 504
    :cond_d1
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 505
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 506
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    .line 507
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 508
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 552
    :cond_de
    :goto_de
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    return v2

    .line 492
    :cond_e1
    :goto_e1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAllowScroll(Z)V
    .registers 2

    .line 819
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    return-void
.end method

.method public setOnValueChangeListener(Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    return-void
.end method

.method public setScaleDistance(F)V
    .registers 2

    .line 827
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 828
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelect(I)V
    .registers 4

    .line 722
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 723
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelectNotDraw(I)V

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    .line 844
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .line 853
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    return-void
.end method

.method public setTotalMove(F)V
    .registers 6

    .line 743
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 744
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_19

    .line 747
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_19

    .line 748
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_30

    .line 749
    :cond_19
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_28

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_28

    .line 750
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_30

    .line 751
    :cond_28
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_31

    .line 752
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    :goto_30
    move v0, v1

    :cond_31
    if-eqz v0, :cond_36

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_36
    return-void
.end method

.method public smoothScroll(II)V
    .registers 10

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 687
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    int-to-float p1, p1

    .line 688
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    sub-float/2addr p1, v0

    float-to-int v4, p1

    .line 689
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    float-to-int v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
