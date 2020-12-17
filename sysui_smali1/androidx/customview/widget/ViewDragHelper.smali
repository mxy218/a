.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private final mDefaultEdgeSize:I

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 335
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroidx/customview/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 343
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_56

    if-eqz p3, :cond_4e

    .line 394
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 395
    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 397
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000  # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 399
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    .line 400
    iget p3, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 402
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 403
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 404
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 405
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    return-void

    .line 391
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent view may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 8

    .line 1312
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1313
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1315
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_56

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_30

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_30

    goto :goto_56

    :cond_30
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_47

    .line 1321
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 1322
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget p1, p0, p3

    or-int/2addr p1, p4

    aput p1, p0, p3

    return v1

    .line 1325
    :cond_47
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_56

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_56

    const/4 v1, 0x1

    :cond_56
    :goto_56
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1342
    :cond_4
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    .line 1343
    :goto_10
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v0

    :goto_1b
    if-eqz v1, :cond_2c

    if-eqz p1, :cond_2c

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    .line 1346
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2b

    move v0, v2

    :cond_2b
    return v0

    :cond_2c
    if-eqz v1, :cond_3b

    .line 1348
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3a

    move v0, v2

    :cond_3a
    return v0

    :cond_3b
    if-eqz p1, :cond_49

    .line 1350
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_49

    move v0, v2

    :cond_49
    return v0
.end method

.method private clampMag(FFF)F
    .registers 5

    .line 723
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p2, p0, p2

    const/4 v0, 0x0

    if-gez p2, :cond_a

    return v0

    :cond_a
    cmpl-float p0, p0, p3

    if-lez p0, :cond_15

    cmpl-float p0, p1, v0

    if-lez p0, :cond_13

    goto :goto_14

    :cond_13
    neg-float p3, p3

    :goto_14
    return p3

    :cond_15
    return p1
.end method

.method private clampMag(III)I
    .registers 4

    .line 706
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-le p0, p3, :cond_f

    if-lez p1, :cond_d

    goto :goto_e

    :cond_d
    neg-int p3, p3

    :goto_e
    return p3

    :cond_f
    return p1
.end method

.method private clearMotionHistory()V
    .registers 3

    .line 826
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 829
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 830
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 831
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 832
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 833
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 834
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 835
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 836
    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .registers 4

    .line 840
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    .line 843
    :cond_b
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 844
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 845
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 846
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 847
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 848
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 849
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 850
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    :cond_32
    :goto_32
    return-void
.end method

.method private computeAxisDuration(III)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 678
    :cond_4
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 679
    div-int/lit8 v1, v0, 0x2

    .line 680
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 682
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, v1

    add-float/2addr v1, p0

    .line 685
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_36

    const/high16 p1, 0x447a0000  # 1000.0f

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 687
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_42

    .line 689
    :cond_36
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p3

    div-float/2addr p0, p1

    add-float/2addr p0, v0

    const/high16 p1, 0x43800000  # 256.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_42
    const/16 p1, 0x258

    .line 692
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 12

    .line 653
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 654
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 655
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 656
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 657
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 658
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_2d

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_2f

    :cond_2d
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_2f
    div-float/2addr v0, v2

    if-eqz p5, :cond_35

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_37

    :cond_35
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_37
    div-float/2addr v1, v2

    .line 667
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    .line 668
    iget-object p4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .registers 4
    .param p0  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 372
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p0

    .line 373
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .registers 4
    .param p0  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 358
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 6

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 816
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 817
    iput-boolean p1, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 819
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_14

    .line 821
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 2

    const/high16 p0, 0x3f000000  # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 732
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private dragTo(IIII)V
    .registers 15

    .line 1462
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1463
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_1d

    .line 1465
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    .line 1466
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_1d
    move v6, p1

    if-eqz p4, :cond_2f

    .line 1469
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    .line 1470
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_2f
    move v7, p2

    if-nez p3, :cond_34

    if-eqz p4, :cond_3f

    :cond_34
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    .line 1476
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3f
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 11

    .line 854
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_7

    array-length v0, v0

    if-gt v0, p1, :cond_52

    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 855
    new-array v0, p1, [F

    .line 856
    new-array v1, p1, [F

    .line 857
    new-array v2, p1, [F

    .line 858
    new-array v3, p1, [F

    .line 859
    new-array v4, p1, [I

    .line 860
    new-array v5, p1, [I

    .line 861
    new-array p1, p1, [I

    .line 863
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v6, :cond_44

    .line 864
    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v7, v6

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v7, v6

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v7, v6

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v7, v6

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v7, v6

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v7, v6

    invoke-static {v6, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    :cond_44
    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 874
    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 875
    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 876
    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 877
    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 878
    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 879
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_52
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 15

    .line 633
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 634
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    .line 640
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 641
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return p1

    .line 645
    :cond_1c
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v6

    .line 646
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 648
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private getEdgesTouched(II)I
    .registers 6

    .line 1537
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1538
    :goto_e
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1b

    or-int/lit8 v0, v0, 0x4

    .line 1539
    :cond_1b
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_28

    or-int/lit8 v0, v0, 0x2

    .line 1540
    :cond_28
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, p0

    if-le p2, p1, :cond_35

    or-int/lit8 v0, v0, 0x8

    :cond_35
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 3

    .line 1546
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result p0

    if-nez p0, :cond_23

    .line 1547
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring pointerId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewDragHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    .line 1449
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1450
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1451
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1450
    invoke-direct {p0, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1453
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1454
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1453
    invoke-direct {p0, v1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1456
    invoke-direct {p0, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 6

    const/4 v0, 0x1

    .line 1292
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x4

    .line 1295
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x4

    :cond_12
    const/4 v1, 0x2

    .line 1298
    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1b

    or-int/lit8 v0, v0, 0x2

    :cond_1b
    const/16 v1, 0x8

    .line 1301
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_25

    or-int/lit8 v0, v0, 0x8

    :cond_25
    if-eqz v0, :cond_33

    .line 1306
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1307
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p0, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_33
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .registers 6

    .line 884
    invoke-direct {p0, p3}, Landroidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 885
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 886
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 887
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result p1

    aput p1, v0, p3

    .line 888
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_25

    .line 894
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 896
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_22

    .line 899
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 900
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 901
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 902
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v3, v2

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 10

    .line 561
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 562
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 563
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 564
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 565
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 566
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    .line 567
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 568
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_30
    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, -0x1

    .line 547
    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 548
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    .line 550
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 551
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_10
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    .line 512
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 513
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 514
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 515
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void

    .line 508
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    .line 1370
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_12

    .line 1372
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public checkTouchSlop(II)Z
    .registers 9

    .line 1395
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_16

    move p1, v2

    goto :goto_17

    :cond_16
    move p1, v1

    .line 1402
    :goto_17
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 1403
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    .line 1406
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, v3, p0

    if-lez p0, :cond_39

    move v1, v2

    :cond_39
    return v1

    :cond_3a
    if-eqz v0, :cond_49

    .line 1408
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_48

    move v1, v2

    :cond_48
    return v1

    :cond_49
    if-eqz p1, :cond_57

    .line 1410
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_57

    move v1, v2

    :cond_57
    return v1
.end method

.method public continueSettling(Z)Z
    .registers 13

    .line 771
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6a

    .line 772
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 773
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 774
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 775
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 776
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_2f

    .line 779
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_2f
    if-eqz v9, :cond_36

    .line 782
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v9}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_36
    if-nez v8, :cond_3a

    if-eqz v9, :cond_43

    .line 786
    :cond_3a
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_43
    if-eqz v0, :cond_5b

    .line 789
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_5b

    .line 792
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v2

    :cond_5b
    if-nez v0, :cond_6a

    if-eqz p1, :cond_67

    .line 798
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_6a

    .line 800
    :cond_67
    invoke-virtual {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 805
    :cond_6a
    :goto_6a
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p0, v1, :cond_6f

    const/4 v2, 0x1

    :cond_6f
    return v2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1523
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    .line 1525
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1526
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_2e

    .line 1527
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_2e

    return-object v1

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 523
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object p0
.end method

.method public getDefaultEdgeSize()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 495
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    return p0
.end method

.method public getEdgeSize()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 463
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return p0
.end method

.method public getTouchSlop()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 539
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return p0
.end method

.method public getViewDragState()I
    .registers 1

    .line 435
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    return p0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    .line 1491
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public isPointerDown(I)Z
    .registers 3

    .line 920
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1507
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_1d

    .line 1508
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_1d

    .line 1509
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1d

    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1d

    const/4 p0, 0x1

    :cond_1d
    return p0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_d

    .line 1139
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1142
    :cond_d
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 1143
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1145
    :cond_17
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_151

    const/4 v3, 0x1

    if-eq v0, v3, :cond_146

    const/4 v4, 0x2

    if-eq v0, v4, :cond_bf

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_75

    const/4 v4, 0x6

    if-eq v0, v4, :cond_30

    goto/16 :goto_179

    .line 1242
    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1243
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_70

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_70

    .line 1246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_40
    const/4 v3, -0x1

    if-ge v2, v1, :cond_6a

    .line 1248
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1249
    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_4c

    goto :goto_67

    .line 1254
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1255
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1256
    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_67

    .line 1257
    invoke-virtual {p0, v6, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1258
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    goto :goto_6b

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6a
    move p1, v3

    :goto_6b
    if-ne p1, v3, :cond_70

    .line 1265
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1268
    :cond_70
    invoke-direct {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_179

    .line 1169
    :cond_75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1170
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1171
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1173
    invoke-direct {p0, v2, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1176
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_a3

    float-to-int v1, v2

    float-to-int p1, p1

    .line 1179
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1180
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1182
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    .line 1183
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_179

    .line 1184
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_179

    :cond_a3
    float-to-int v1, v2

    float-to-int p1, p1

    .line 1186
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_179

    .line 1191
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_179

    .line 1281
    :cond_b2
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_ba

    const/4 p1, 0x0

    .line 1282
    invoke-direct {p0, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1284
    :cond_ba
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_179

    .line 1197
    :cond_bf
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_ff

    .line 1199
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-nez v0, :cond_cd

    goto/16 :goto_179

    .line 1201
    :cond_cd
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1202
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1204
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1205
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1207
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1209
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_179

    .line 1212
    :cond_ff
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_103
    if-ge v2, v0, :cond_142

    .line 1214
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1217
    invoke-direct {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v4

    if-nez v4, :cond_110

    goto :goto_13f

    .line 1219
    :cond_110
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1220
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1221
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1222
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1224
    invoke-direct {p0, v6, v7, v1}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1225
    iget v8, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v8, v3, :cond_12c

    goto :goto_142

    :cond_12c
    float-to-int v4, v4

    float-to-int v5, v5

    .line 1230
    invoke-virtual {p0, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1231
    invoke-direct {p0, v4, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 1232
    invoke-virtual {p0, v4, v1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_13f

    goto :goto_142

    :cond_13f
    :goto_13f
    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    .line 1236
    :cond_142
    :goto_142
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_179

    .line 1273
    :cond_146
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_14d

    .line 1274
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1276
    :cond_14d
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto :goto_179

    .line 1149
    :cond_151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1151
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1152
    invoke-virtual {p0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1154
    invoke-direct {p0, v0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1159
    invoke-virtual {p0, v2, p1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1161
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    .line 1162
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_179

    .line 1163
    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_179
    :goto_179
    return-void
.end method

.method setDragState(I)V
    .registers 4

    .line 924
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 925
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_19

    .line 926
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 927
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 928
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez p1, :cond_19

    const/4 p1, 0x0

    .line 929
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_19
    return-void
.end method

.method public setEdgeSize(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 479
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    .line 451
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    .line 415
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    .line 613
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_1b

    .line 618
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 619
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 620
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 618
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p0

    return p0

    .line 614
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1000
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_11

    .line 1005
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1008
    :cond_11
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    .line 1009
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1011
    :cond_1b
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_104

    if-eq v2, v6, :cond_ff

    if-eq v2, v4, :cond_70

    const/4 v7, 0x3

    if-eq v2, v7, :cond_ff

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3c

    const/4 v4, 0x6

    if-eq v2, v4, :cond_34

    :cond_31
    :goto_31
    const/4 v5, 0x0

    goto/16 :goto_135

    .line 1111
    :cond_34
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1112
    invoke-direct {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto :goto_31

    .line 1035
    :cond_3c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1036
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1037
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1039
    invoke-direct {v0, v7, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1042
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v3, :cond_60

    .line 1043
    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v1, v2

    .line 1044
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v1, v3

    if-eqz v4, :cond_31

    .line 1045
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v1, v3

    invoke-virtual {v4, v1, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_31

    :cond_60
    if-ne v3, v4, :cond_31

    float-to-int v3, v7

    float-to-int v1, v1

    .line 1049
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1050
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v1, v3, :cond_31

    .line 1051
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_31

    .line 1058
    :cond_70
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v2, :cond_31

    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    if-nez v2, :cond_79

    goto :goto_31

    .line 1061
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_7e
    if-ge v3, v2, :cond_fa

    .line 1063
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1066
    invoke-direct {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v7

    if-nez v7, :cond_8c

    goto/16 :goto_f7

    .line 1068
    :cond_8c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1069
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1070
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v9, v9, v4

    sub-float v9, v7, v9

    .line 1071
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    .line 1073
    invoke-virtual {v0, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b0

    .line 1074
    invoke-direct {v0, v7, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_b0

    move v8, v6

    goto :goto_b1

    :cond_b0
    const/4 v8, 0x0

    :goto_b1
    if-eqz v8, :cond_e6

    .line 1081
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int v13, v11, v12

    .line 1083
    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v14, v7, v13, v12}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v12

    .line 1085
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int v15, v13, v14

    .line 1087
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v5, v7, v15, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v5

    .line 1089
    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v14, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v14

    .line 1090
    iget-object v15, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v15, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_df

    if-lez v14, :cond_e6

    if-ne v12, v11, :cond_e6

    :cond_df
    if-eqz v15, :cond_fa

    if-lez v15, :cond_e6

    if-ne v5, v13, :cond_e6

    goto :goto_fa

    .line 1096
    :cond_e6
    invoke-direct {v0, v9, v10, v4}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1097
    iget v5, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v5, v6, :cond_ee

    goto :goto_fa

    :cond_ee
    if-eqz v8, :cond_f7

    .line 1102
    invoke-virtual {v0, v7, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_f7

    goto :goto_fa

    :cond_f7
    :goto_f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 1106
    :cond_fa
    :goto_fa
    invoke-direct/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_31

    .line 1118
    :cond_ff
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_31

    .line 1015
    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x0

    .line 1017
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1018
    invoke-direct {v0, v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 1020
    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1023
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v2, v3, :cond_125

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v3, v4, :cond_125

    .line 1024
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1027
    :cond_125
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v2, v2, v1

    .line 1028
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v2, v3

    if-eqz v4, :cond_135

    .line 1029
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1123
    :cond_135
    :goto_135
    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v6, :cond_13a

    move v5, v6

    :cond_13a
    return v5
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 588
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    .line 589
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    .line 591
    invoke-direct {p0, p2, p3, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    if-nez p1, :cond_17

    .line 592
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez p2, :cond_17

    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz p2, :cond_17

    const/4 p2, 0x0

    .line 595
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_17
    return p1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5

    .line 944
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1a

    .line 948
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 949
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 950
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
