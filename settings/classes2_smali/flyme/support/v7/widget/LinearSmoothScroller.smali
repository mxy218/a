.class public Lflyme/support/v7/widget/LinearSmoothScroller;
.super Lflyme/support/v7/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 97
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;-><init>()V

    const v0, 0x3eb33333  # 0.35f

    const v1, 0x3f0f5c29  # 0.56f

    const v2, 0x3e4ccccd  # 0.2f

    const/high16 v3, 0x3f800000  # 1.0f

    .line 85
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    return-void
.end method

.method private clampApplyScroll(II)I
    .registers 3

    sub-int p0, p1, p2

    mul-int/2addr p1, p0

    if-gtz p1, :cond_6

    const/4 p0, 0x0

    :cond_6
    return p0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 6

    const/4 p0, -0x1

    if-eq p5, p0, :cond_1c

    if-eqz p5, :cond_12

    const/4 p0, 0x1

    if-ne p5, p0, :cond_a

    sub-int/2addr p4, p2

    return p4

    .line 286
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    sub-int/2addr p3, p1

    if-lez p3, :cond_16

    return p3

    :cond_16
    sub-int/2addr p4, p2

    if-gez p4, :cond_1a

    return p4

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    sub-int/2addr p3, p1

    return p3
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 13

    .line 329
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 330
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    .line 334
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 335
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    .line 336
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, p1, v1

    .line 337
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v7

    .line 338
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    .line 339
    invoke-virtual/range {v4 .. v9}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 13

    .line 304
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 305
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    .line 309
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 310
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v2, v3

    .line 311
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    .line 312
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    .line 313
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    .line 314
    invoke-virtual/range {v4 .. v9}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return p0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    .line 164
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x41c80000  # 25.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected calculateTimeForDeceleration(I)I
    .registers 4

    .line 181
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fd57a786c22680aL  # 0.3356

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method protected calculateTimeForScrolling(I)I
    .registers 2

    .line 195
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 354
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 355
    instance-of v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v0, :cond_f

    .line 356
    check-cast p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 357
    invoke-interface {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 359
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 360
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LinearSmoothScroller"

    .line 359
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getHorizontalSnapPreference()I
    .registers 3

    .line 208
    iget-object p0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz p0, :cond_14

    iget p0, p0, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_c

    goto :goto_14

    :cond_c
    cmpl-float p0, p0, v0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_15

    :cond_12
    const/4 p0, -0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected getVerticalSnapPreference()I
    .registers 3

    .line 222
    iget-object p0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz p0, :cond_14

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_c

    goto :goto_14

    :cond_c
    cmpl-float p0, p0, v0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_15

    :cond_12
    const/4 p0, -0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected onSeekTargetStep(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 5

    .line 128
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getChildCount()I

    move-result p3

    if-nez p3, :cond_a

    .line 129
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    return-void

    .line 138
    :cond_a
    iget p3, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, p3, p1}, Lflyme/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 139
    iget p1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 141
    iget p1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez p1, :cond_25

    iget p1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez p1, :cond_25

    .line 142
    invoke-virtual {p0, p4}, Lflyme/support/v7/widget/LinearSmoothScroller;->updateActionForInterimTarget(Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    :cond_25
    return-void
.end method

.method protected onStart()V
    .registers 1

    return-void
.end method

.method protected onStop()V
    .registers 2

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    .line 114
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    .line 115
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 117
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_28

    neg-int p2, p2

    neg-int p1, p1

    .line 119
    iget-object p0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_28
    return-void
.end method

.method protected updateActionForInterimTarget(Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    .line 234
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 235
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_48

    .line 241
    :cond_18
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 242
    iput-object v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 244
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000  # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 245
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    const/16 v0, 0x2710

    .line 246
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    .line 250
    iget v1, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a  # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object p0, p0, Lflyme/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v3, v0, p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 236
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    .line 237
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 238
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    return-void
.end method
