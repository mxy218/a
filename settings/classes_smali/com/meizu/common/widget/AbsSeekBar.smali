.class public abstract Lcom/meizu/common/widget/AbsSeekBar;
.super Lcom/meizu/common/widget/ProgressBar;
.source "AbsSeekBar.java"


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field mIsVertical:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 59
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 726
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/16 p1, 0x100

    .line 727
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 729
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    const/4 p1, 0x0

    .line 731
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 732
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 733
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 734
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 59
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 726
    iput p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/16 p1, 0x100

    .line 727
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 729
    iput p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    const/4 p1, 0x0

    .line 731
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 732
    iput-boolean p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 733
    iput p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 734
    iput p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 59
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 726
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/16 v0, 0x100

    .line 727
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 729
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    const/4 v0, 0x0

    .line 731
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 732
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 733
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 734
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 80
    sget-object v0, Lcom/meizu/common/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    sget p3, Lcom/meizu/common/R$styleable;->SeekBar_mcThumb:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 83
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget p3, Lcom/meizu/common/R$styleable;->SeekBar_mcThumbOffset:I

    .line 86
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getThumbOffset()I

    move-result v0

    .line 85
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 87
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p2, 0x3f000000  # 0.5f

    .line 90
    iput p2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 92
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 93
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    return-void
.end method

.method private attemptClaimDrag()V
    .registers 2

    .line 668
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e
    return-void
.end method

.method private getIntFromFloat(F)I
    .registers 2

    .line 751
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getPosByProgress(I)I
    .registers 6

    .line 770
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_12

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    goto :goto_1f

    .line 773
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    :goto_1f
    sub-int/2addr v0, v1

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 776
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float p1, p1

    .line 777
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_37

    .line 779
    iget-boolean p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz p0, :cond_36

    return v2

    :cond_36
    return v1

    .line 786
    :cond_37
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_57

    .line 787
    iget-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz p1, :cond_4e

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    :goto_4c
    sub-int/2addr p1, p0

    return p1

    .line 790
    :cond_4e
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    goto :goto_4c

    .line 794
    :cond_57
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v3

    if-gtz v3, :cond_63

    .line 795
    iget-boolean p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz p0, :cond_62

    return v2

    :cond_62
    return v1

    :cond_63
    int-to-float v0, v0

    .line 802
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v1, v3

    .line 803
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v2, p1

    .line 804
    iget-boolean p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz p0, :cond_7c

    return v2

    :cond_7c
    return v1
.end method

.method private getProgressByPos(I)I
    .registers 4

    .line 757
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_15

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    goto :goto_23

    .line 761
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 763
    :goto_23
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v1

    mul-int/2addr p1, v1

    div-int/2addr p1, v0

    int-to-float p1, p1

    .line 764
    iget p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V
    .registers 9

    .line 338
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 339
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 340
    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_18

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v1

    goto :goto_24

    .line 343
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int p2, p1, v0

    .line 347
    :goto_24
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    .line 350
    iget-boolean p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    const/high16 p1, -0x80000000

    if-eqz p0, :cond_47

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float/2addr p0, p4

    int-to-float p2, p2

    mul-float/2addr p0, p2

    float-to-int p0, p0

    if-ne p5, p1, :cond_40

    .line 354
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 355
    iget p5, p1, Landroid/graphics/Rect;->left:I

    .line 356
    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_42

    :cond_40
    add-int p1, p5, v0

    :goto_42
    add-int/2addr v1, p0

    .line 363
    invoke-virtual {p3, p5, p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5b

    :cond_47
    int-to-float p0, p2

    mul-float/2addr p4, p0

    float-to-int p0, p4

    if-ne p5, p1, :cond_55

    .line 368
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 369
    iget p5, p1, Landroid/graphics/Rect;->top:I

    .line 370
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_57

    :cond_55
    add-int p1, p5, v1

    :goto_57
    add-int/2addr v0, p0

    .line 377
    invoke-virtual {p3, p0, p5, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_5b
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 626
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 627
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge p1, v4, :cond_22

    goto :goto_36

    .line 633
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_2b

    move v1, v2

    goto :goto_36

    .line 636
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    .line 637
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 640
    :goto_36
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result p1

    goto :goto_6e

    .line 643
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    if-ge p1, v4, :cond_57

    move v1, v2

    goto :goto_6a

    .line 649
    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_5f

    goto :goto_6a

    .line 652
    :cond_5f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v3

    div-float v1, p1, v0

    .line 653
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 656
    :goto_6a
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result p1

    :goto_6e
    int-to-float p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    const/4 v0, 0x1

    .line 660
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method

.method private updateThumbPos(II)V
    .registers 13

    .line 266
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    iget-object v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_86

    if-nez v4, :cond_10

    move v8, v7

    goto :goto_15

    .line 269
    :cond_10
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v8, v1

    .line 272
    :goto_15
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 274
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v1

    if-lez v1, :cond_33

    .line 275
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    :cond_33
    move v5, v2

    if-le v8, v9, :cond_5e

    if-eqz v4, :cond_3f

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 279
    invoke-direct/range {v1 .. v6}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    :cond_3f
    sub-int/2addr v8, v9

    .line 281
    div-int/lit8 v8, v8, 0x2

    if-eqz v0, :cond_fd

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr p2, p0

    .line 284
    invoke-virtual {v0, v8, v7, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_fd

    :cond_5e
    if-eqz v0, :cond_79

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p2, v2

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 291
    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_79
    sub-int/2addr v9, v8

    .line 294
    div-int/lit8 v6, v9, 0x2

    if-eqz v4, :cond_fd

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 296
    invoke-direct/range {v1 .. v6}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto/16 :goto_fd

    :cond_86
    if-nez v4, :cond_8a

    move v8, v7

    goto :goto_8f

    .line 300
    :cond_8a
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v8, v1

    .line 303
    :goto_8f
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 305
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v1

    if-lez v1, :cond_ad

    .line 306
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    :cond_ad
    move v5, v2

    if-le v8, v9, :cond_d7

    if-eqz v4, :cond_b9

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 310
    invoke-direct/range {v1 .. v6}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    :cond_b9
    sub-int/2addr v8, v9

    .line 312
    div-int/lit8 v8, v8, 0x2

    if-eqz v0, :cond_fd

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v8

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr p2, p0

    .line 315
    invoke-virtual {v0, v7, v8, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_fd

    :cond_d7
    if-eqz v0, :cond_f2

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p2, v2

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 322
    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_f2
    sub-int/2addr v9, v8

    .line 325
    div-int/lit8 v6, v9, 0x2

    if-eqz v4, :cond_fd

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 327
    invoke-direct/range {v1 .. v6}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    :cond_fd
    :goto_fd
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    .line 231
    invoke-super {p0}, Lcom/meizu/common/widget/ProgressBar;->drawableStateChanged()V

    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xff

    goto :goto_18

    :cond_12
    const/high16 v1, 0x437f0000  # 255.0f

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    :cond_1b
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 240
    iget-object p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2e
    return-void
.end method

.method public getKeyProgressIncrement()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return p0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getThumbOffset()I
    .registers 1

    .line 166
    iget p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    return p0
.end method

.method public isInScrollingContainer()Z
    .registers 2

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_1a

    .line 427
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 428
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    return p0

    .line 431
    :cond_15
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_4

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 1

    .line 225
    invoke-super {p0}, Lcom/meizu/common/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 226
    iget-object p0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    monitor-enter p0

    .line 383
    :try_start_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 384
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_40

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_28

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_40

    .line 393
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 394
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 398
    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 814
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 815
    const-class p0, Lcom/meizu/common/widget/AbsSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method onKeyChange()V
    .registers 1

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 697
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ne p1, v1, :cond_13

    .line 698
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_1b

    :cond_13
    const/16 v1, 0x14

    if-ne p1, v1, :cond_27

    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_27

    :cond_1b
    if-lez v0, :cond_47

    .line 701
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    .line 702
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onKeyChange()V

    return v2

    :cond_27
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2f

    .line 705
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_37

    :cond_2f
    const/16 v1, 0x13

    if-ne p1, v1, :cond_47

    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_47

    .line 707
    :cond_37
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 708
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    .line 709
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onKeyChange()V

    return v2

    .line 715
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 9

    monitor-enter p0

    .line 402
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_12
    if-eqz v0, :cond_39

    .line 408
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 409
    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 410
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3b

    :cond_39
    move v0, v2

    move v3, v0

    .line 412
    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v3, v1

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 415
    invoke-static {v3, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 416
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_67

    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 423
    :cond_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZ)V
    .registers 9

    .line 246
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 247
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_19

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/high16 v5, -0x80000000

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_19
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/AbsSeekBar;->updateThumbPos(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 438
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_221

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_221

    .line 442
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c4

    if-eq v3, v4, :cond_fe

    const/4 v5, 0x2

    if-eq v3, v5, :cond_35

    const/4 p1, 0x3

    if-eq v3, p1, :cond_26

    goto/16 :goto_220

    .line 614
    :cond_26
    iget-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz p1, :cond_30

    .line 615
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 616
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 618
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_220

    .line 485
    :cond_35
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_cb

    .line 486
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v1, v4, :cond_c6

    .line 490
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_55

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 492
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_6b

    .line 494
    :cond_55
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    move v6, v1

    move v1, p1

    move p1, v6

    :goto_6b
    mul-float/2addr p1, p1

    mul-float/2addr v1, v1

    add-float/2addr p1, v1

    .line 499
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7d

    .line 500
    iget-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-nez p1, :cond_7d

    .line 501
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 502
    iput-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 506
    :cond_7d
    iget-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-nez p1, :cond_83

    goto/16 :goto_220

    .line 510
    :cond_83
    iget-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz p1, :cond_95

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    goto :goto_a2

    .line 513
    :cond_95
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    :goto_a2
    sub-int/2addr p1, v1

    if-nez p1, :cond_a7

    goto/16 :goto_220

    .line 519
    :cond_a7
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_af

    .line 520
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v0, v2

    goto :goto_b2

    .line 522
    :cond_af
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr v0, v1

    :goto_b2
    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 525
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result p1

    .line 527
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result p1

    add-int/2addr v1, p1

    .line 528
    invoke-virtual {p0, v1, v4}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    goto/16 :goto_220

    .line 530
    :cond_c6
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_220

    .line 534
    :cond_cb
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_d7

    .line 535
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownY:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_de

    .line 537
    :cond_d7
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 539
    :goto_de
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_220

    .line 540
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 541
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f3

    .line 542
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 544
    :cond_f3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 545
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 546
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_220

    .line 552
    :cond_fe
    iget-boolean v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_1b5

    .line 554
    iget-boolean v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v3, :cond_114

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    goto :goto_121

    .line 557
    :cond_114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    :goto_121
    sub-int/2addr v3, v5

    .line 559
    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v5, v4, :cond_17e

    iget-boolean v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v5, :cond_17e

    .line 562
    iget-boolean p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz p1, :cond_12f

    move v0, v2

    :cond_12f
    int-to-float p1, v3

    sub-float/2addr p1, v0

    .line 567
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v3

    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_15b

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_15b

    goto/16 :goto_220

    :cond_15b
    float-to-int p1, v0

    .line 571
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressByPos(I)I

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int v5, v2, v3

    if-lt v0, v5, :cond_16d

    add-int/2addr v2, v3

    .line 572
    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_1ae

    .line 573
    :cond_16d
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressByPos(I)I

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int v3, v0, v2

    if-ge p1, v3, :cond_1ae

    sub-int/2addr v0, v2

    .line 574
    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_1ae

    .line 576
    :cond_17e
    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v5, v4, :cond_1ab

    iget-boolean v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-ne v5, v4, :cond_1ab

    if-nez v3, :cond_18a

    goto/16 :goto_220

    .line 582
    :cond_18a
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr v0, p1

    .line 583
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr p1, v2

    .line 585
    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_197

    int-to-float v0, v3

    div-float/2addr p1, v0

    goto :goto_19a

    :cond_197
    int-to-float p1, v3

    div-float p1, v0, p1

    .line 590
    :goto_19a
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v0

    .line 592
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_1ae

    .line 594
    :cond_1ab
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 597
    :cond_1ae
    :goto_1ae
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 598
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1be

    .line 602
    :cond_1b5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 603
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 604
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 609
    :goto_1be
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 610
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    goto :goto_220

    .line 446
    :cond_1c4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v3

    if-eqz v3, :cond_1e5

    .line 447
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownX:F

    .line 448
    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownY:F

    .line 449
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne p1, v4, :cond_220

    .line 450
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 451
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 452
    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 453
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 454
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 455
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_220

    .line 458
    :cond_1e5
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 459
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1f3

    .line 460
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 462
    :cond_1f3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 464
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 465
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v3, v4, :cond_21a

    .line 466
    iget-boolean v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v3, :cond_209

    .line 467
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    goto :goto_211

    .line 470
    :cond_209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 471
    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 474
    :goto_211
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 475
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    goto :goto_21d

    .line 478
    :cond_21a
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 480
    :goto_21d
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    :cond_220
    :goto_220
    return v4

    :cond_221
    :goto_221
    return v1
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2

    if-gez p1, :cond_3

    neg-int p1, p1

    .line 187
    :cond_3
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 4

    monitor-enter p0

    .line 209
    :try_start_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setMax(I)V

    .line 211
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr p1, v0

    const/16 v0, 0x14

    if-le p1, v0, :cond_27

    :cond_13
    const/4 p1, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000  # 20.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 216
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    if-eq p1, v0, :cond_c

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz p1, :cond_54

    .line 117
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 122
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_1f

    .line 123
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_27

    .line 125
    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    :goto_27
    if-eqz v0, :cond_44

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_41

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_44

    .line 132
    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 135
    :cond_44
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 138
    :cond_54
    iput-object p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_73

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    .line 146
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_73
    return-void
.end method

.method public setThumbOffset(I)V
    .registers 2

    .line 176
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected setTouchMode(I)V
    .registers 3

    .line 744
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 745
    iget p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_a

    const/4 p1, 0x0

    .line 746
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    :cond_a
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
