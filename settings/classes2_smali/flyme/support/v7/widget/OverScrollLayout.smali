.class public Lflyme/support/v7/widget/OverScrollLayout;
.super Landroid/widget/FrameLayout;
.source "OverScrollLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;,
        Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;,
        Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;
    }
.end annotation


# static fields
.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private canScrollDownAtActionDown:Z

.field private canScrollLeftAtActionDown:Z

.field private canScrollRightAtActionDown:Z

.field private canScrollUpAtActionDown:Z

.field private mAntiShakeValue:I

.field private mConfictRatio:F

.field private mDownX:I

.field private mDownY:I

.field private mFingerDir:I

.field private mFlingRun:Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;

.field private mForbidOverScrollInMutiChoiceState:Z

.field mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

.field private mListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

.field mMotionX:I

.field mMotionY:I

.field private mNestedScrollingParent:Landroidx/core/view/NestedScrollingParentHelper;

.field private mOrientation:I

.field private mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

.field private mOverScroller:Landroid/widget/OverScroller;

.field mOverscrollDistance:I

.field private mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 709
    new-instance v0, Lflyme/support/v7/widget/OverScrollLayout$2;

    invoke-direct {v0}, Lflyme/support/v7/widget/OverScrollLayout$2;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/OverScrollLayout;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/OverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/OverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mAntiShakeValue:I

    .line 43
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    .line 44
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mDownX:I

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lflyme/support/v7/widget/OverScrollLayout;->canScrollDownAtActionDown:Z

    .line 51
    iput-boolean p2, p0, Lflyme/support/v7/widget/OverScrollLayout;->canScrollUpAtActionDown:Z

    .line 55
    iput-boolean p2, p0, Lflyme/support/v7/widget/OverScrollLayout;->canScrollLeftAtActionDown:Z

    .line 58
    iput-boolean p2, p0, Lflyme/support/v7/widget/OverScrollLayout;->canScrollRightAtActionDown:Z

    const/4 p3, 0x0

    .line 62
    iput p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mConfictRatio:F

    .line 65
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    const v0, 0x3df5c28f  # 0.12f

    const v1, 0x3ea8f5c3  # 0.33f

    const/high16 v2, 0x3f800000  # 1.0f

    .line 73
    invoke-static {v0, p3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p3

    iput-object p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

    .line 665
    new-instance p3, Lflyme/support/v7/widget/OverScrollLayout$1;

    invoke-direct {p3, p0}, Lflyme/support/v7/widget/OverScrollLayout$1;-><init>(Lflyme/support/v7/widget/OverScrollLayout;)V

    iput-object p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 86
    iput-boolean p2, p0, Lflyme/support/v7/widget/OverScrollLayout;->mForbidOverScrollInMutiChoiceState:Z

    .line 87
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mNestedScrollingParent:Landroidx/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/OverScrollLayout;IIIIIIIIZ)Z
    .registers 10

    .line 23
    invoke-virtual/range {p0 .. p9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/OverScrollLayout;IIIIIIIIZ)Z
    .registers 10

    .line 23
    invoke-virtual/range {p0 .. p9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lflyme/support/v7/widget/OverScrollLayout;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lflyme/support/v7/widget/OverScrollLayout;->startViewSpringback()V

    return-void
.end method

.method static synthetic access$1100(Lflyme/support/v7/widget/OverScrollLayout;II)I
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/OverScrollLayout;->updateIncrementalDelta(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lflyme/support/v7/widget/OverScrollLayout;IIIIIIIIZ)Z
    .registers 10

    .line 23
    invoke-virtual/range {p0 .. p9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lflyme/support/v7/widget/OverScrollLayout;IIIIIIIIZ)Z
    .registers 10

    .line 23
    invoke-virtual/range {p0 .. p9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/OverScrollLayout;)Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/OverScrollLayout;)Lflyme/support/v7/widget/MzRecyclerView;
    .registers 1

    .line 23
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/OverScrollLayout;)Landroid/widget/OverScroller;
    .registers 1

    .line 23
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/OverScrollLayout;)Z
    .registers 1

    .line 23
    invoke-direct {p0}, Lflyme/support/v7/widget/OverScrollLayout;->needScroll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lflyme/support/v7/widget/OverScrollLayout;)Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;
    .registers 1

    .line 23
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFlingRun:Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;

    return-object p0
.end method

.method static synthetic access$602(Lflyme/support/v7/widget/OverScrollLayout;Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;)Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;
    .registers 2

    .line 23
    iput-object p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFlingRun:Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;

    return-object p1
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/OverScrollLayout;)I
    .registers 1

    .line 23
    iget p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    return p0
.end method

.method static synthetic access$800(Lflyme/support/v7/widget/OverScrollLayout;I)I
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/OverScrollLayout;->getNewOverflingDistance(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/OverScrollLayout;)I
    .registers 1

    .line 23
    iget p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    return p0
.end method

.method private canScrollHorizontallyForActionDown(I)Z
    .registers 6

    .line 593
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 594
    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    if-nez v1, :cond_17

    return p0

    :cond_17
    const/4 v2, 0x1

    const/16 v3, 0x32

    if-gez p1, :cond_20

    if-le v0, v3, :cond_1f

    move p0, v2

    :cond_1f
    return p0

    :cond_20
    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_24

    move p0, v2

    :cond_24
    return p0
.end method

.method private canScrollVerticallyForActionDown(I)Z
    .registers 6

    .line 574
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 575
    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    if-nez v1, :cond_17

    return p0

    :cond_17
    const/4 v2, 0x1

    const/16 v3, 0x32

    if-gez p1, :cond_20

    if-le v0, v3, :cond_1f

    move p0, v2

    :cond_1f
    return p0

    :cond_20
    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_24

    move p0, v2

    :cond_24
    return p0
.end method

.method private findRecyclerView(Landroid/view/View;)Z
    .registers 7

    .line 106
    instance-of v0, p1, Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 107
    check-cast p1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    goto :goto_27

    .line 109
    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 110
    check-cast p1, Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_16
    if-ge v3, v0, :cond_26

    .line 113
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lflyme/support/v7/widget/OverScrollLayout;->findRecyclerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_27

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_26
    move v2, v1

    :goto_27
    return v2
.end method

.method private getNewOverflingDistance(I)I
    .registers 3

    .line 854
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e99999a  # 0.3f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-nez p1, :cond_d

    return p0

    .line 861
    :cond_d
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/16 v0, 0x4e20

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private needScroll()Z
    .registers 4

    .line 700
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_43

    .line 701
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    const/4 v2, -0x1

    if-nez v0, :cond_26

    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1a
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_26
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    if-ne v0, v1, :cond_43

    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-nez v0, :cond_36

    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_36
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-ne v0, v1, :cond_43

    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :cond_44
    :goto_44
    return v1
.end method

.method private startViewSpringback()V
    .registers 2

    .line 839
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_17

    .line 840
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    if-nez v0, :cond_11

    .line 841
    new-instance v0, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;-><init>(Lflyme/support/v7/widget/OverScrollLayout;)V

    iput-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    .line 843
    :cond_11
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;->startSpringback()V

    goto :goto_2d

    .line 844
    :cond_17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 845
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    if-nez v0, :cond_28

    .line 846
    new-instance v0, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;-><init>(Lflyme/support/v7/widget/OverScrollLayout;)V

    iput-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    .line 848
    :cond_28
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;->startSpringback()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private updateIncrementalDelta(II)I
    .registers 7

    .line 435
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    if-eqz p2, :cond_39

    if-eqz v0, :cond_39

    mul-int v1, p2, p1

    if-gez v1, :cond_37

    .line 443
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 444
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {p0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v2, p0

    const/4 p0, 0x0

    cmpg-float v1, v2, p0

    if-gez v1, :cond_21

    goto :goto_22

    :cond_21
    move p0, v2

    :goto_22
    int-to-float v1, p1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    if-lez p1, :cond_2b

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2b
    if-nez p0, :cond_2e

    const/4 p0, -0x1

    .line 455
    :cond_2e
    :goto_2e
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, v0, :cond_35

    const/4 p0, 0x0

    :cond_35
    move p1, p0

    goto :goto_39

    .line 459
    :cond_37
    div-int/lit8 p1, p1, 0x2

    :cond_39
    :goto_39
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v10, p0

    .line 136
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 137
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 139
    :cond_c
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 141
    iget v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1c4

    .line 144
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    .line 146
    iget-object v6, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v6

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v14, v8

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    .line 151
    iget-object v9, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v9}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    if-eqz v7, :cond_19c

    if-eq v7, v13, :cond_168

    if-eq v7, v4, :cond_48

    if-eq v7, v3, :cond_168

    goto/16 :goto_35c

    .line 178
    :cond_48
    invoke-direct {v10, v13}, Lflyme/support/v7/widget/OverScrollLayout;->canScrollVerticallyForActionDown(I)Z

    move-result v1

    iput-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollDownAtActionDown:Z

    .line 179
    invoke-direct {v10, v5}, Lflyme/support/v7/widget/OverScrollLayout;->canScrollVerticallyForActionDown(I)Z

    move-result v1

    iput-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollUpAtActionDown:Z

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-nez v1, :cond_fe

    .line 184
    iget-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mForbidOverScrollInMutiChoiceState:Z

    if-eqz v1, :cond_6b

    iget-object v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->isInMutiChoiceState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_b6

    .line 188
    :cond_6b
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mAntiShakeValue:I

    if-lez v1, :cond_7c

    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lflyme/support/v7/widget/OverScrollLayout;->mAntiShakeValue:I

    if-ge v1, v2, :cond_7c

    goto :goto_b6

    .line 193
    :cond_7c
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v10, Lflyme/support/v7/widget/OverScrollLayout;->mConfictRatio:F

    mul-float/2addr v1, v2

    iget v2, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownX:I

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_95

    goto :goto_b6

    .line 197
    :cond_95
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    sub-int v1, v14, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_a6

    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    if-le v14, v1, :cond_a6

    if-nez v6, :cond_a6

    iget-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollUpAtActionDown:Z

    if-eqz v1, :cond_b5

    :cond_a6
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    sub-int/2addr v1, v14

    if-le v1, v2, :cond_b6

    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    if-ge v14, v1, :cond_b6

    if-nez v0, :cond_b6

    iget-boolean v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollDownAtActionDown:Z

    if-nez v0, :cond_b6

    :cond_b5
    move v12, v13

    :cond_b6
    :goto_b6
    if-eqz v12, :cond_164

    .line 207
    iget v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    sub-int v0, v14, v0

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    invoke-direct {v10, v0, v1}, Lflyme/support/v7/widget/OverScrollLayout;->updateIncrementalDelta(II)I

    move-result v0

    .line 210
    iget-object v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->releaseEdgeEffect()V

    neg-int v2, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    const/16 v19, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v22

    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 217
    invoke-super {v10, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 218
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 220
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    return v13

    .line 224
    :cond_fe
    iget v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    if-eq v14, v0, :cond_164

    sub-int v0, v14, v0

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    invoke-direct {v10, v0, v1}, Lflyme/support/v7/widget/OverScrollLayout;->updateIncrementalDelta(II)I

    move-result v0

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int v2, v1, v0

    neg-int v3, v0

    if-gtz v2, :cond_117

    if-gtz v1, :cond_11b

    :cond_117
    if-ltz v2, :cond_11f

    if-gez v1, :cond_11f

    :cond_11b
    neg-int v1, v1

    move v15, v0

    move v2, v1

    goto :goto_121

    :cond_11f
    move v2, v3

    move v15, v12

    :goto_121
    if-eqz v2, :cond_134

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    :cond_134
    if-eqz v15, :cond_161

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_142

    .line 242
    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/OverScrollLayout;->invalidateParentIfNeeded()V

    .line 247
    :cond_142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 248
    invoke-super {v10, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 249
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 251
    :cond_161
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    return v13

    .line 255
    :cond_164
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    goto/16 :goto_35c

    .line 260
    :cond_168
    iput-boolean v13, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollDownAtActionDown:Z

    .line 261
    iput-boolean v13, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollUpAtActionDown:Z

    .line 262
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 263
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17c

    move v12, v13

    .line 264
    :cond_17c
    iput v12, v10, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_195

    .line 266
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    if-nez v0, :cond_18f

    .line 267
    new-instance v0, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    invoke-direct {v0, v10}, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;-><init>(Lflyme/support/v7/widget/OverScrollLayout;)V

    iput-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    .line 269
    :cond_18f
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;->startSpringback()V

    return v13

    .line 272
    :cond_195
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_35c

    .line 155
    :cond_19c
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionY:I

    .line 156
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    .line 157
    iput v8, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownX:I

    .line 158
    invoke-direct {v10, v12}, Lflyme/support/v7/widget/OverScrollLayout;->getNewOverflingDistance(I)I

    move-result v0

    iput v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    .line 160
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVerticalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;

    if-eqz v0, :cond_1af

    .line 161
    invoke-virtual {v0}, Lflyme/support/v7/widget/OverScrollLayout$VerticalFlingRunnable;->endFling()V

    .line 164
    :cond_1af
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mFlingRun:Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;

    if-eqz v0, :cond_1b6

    .line 165
    invoke-virtual {v0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->endFling()V

    .line 168
    :cond_1b6
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1bd

    .line 169
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 172
    :cond_1bd
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_35c

    return v13

    :cond_1c4
    if-nez v0, :cond_35c

    .line 278
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    .line 281
    iget-object v6, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v6

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v14, v8

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    .line 286
    iget-object v9, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v9}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    if-eqz v7, :cond_334

    if-eq v7, v13, :cond_301

    if-eq v7, v4, :cond_1ef

    if-eq v7, v3, :cond_301

    goto/16 :goto_35c

    .line 311
    :cond_1ef
    invoke-direct {v10, v13}, Lflyme/support/v7/widget/OverScrollLayout;->canScrollHorizontallyForActionDown(I)Z

    move-result v1

    iput-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollRightAtActionDown:Z

    .line 312
    invoke-direct {v10, v5}, Lflyme/support/v7/widget/OverScrollLayout;->canScrollHorizontallyForActionDown(I)Z

    move-result v1

    iput-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollLeftAtActionDown:Z

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    if-nez v1, :cond_299

    .line 316
    iget-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mForbidOverScrollInMutiChoiceState:Z

    if-eqz v1, :cond_212

    iget-object v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->isInMutiChoiceState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_212

    goto :goto_251

    .line 320
    :cond_212
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mAntiShakeValue:I

    if-lez v1, :cond_223

    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownX:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lflyme/support/v7/widget/OverScrollLayout;->mAntiShakeValue:I

    if-ge v1, v2, :cond_223

    goto :goto_251

    .line 325
    :cond_223
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownX:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v10, Lflyme/support/v7/widget/OverScrollLayout;->mConfictRatio:F

    mul-float/2addr v1, v2

    iget v2, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23c

    goto :goto_251

    .line 329
    :cond_23c
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    if-le v14, v1, :cond_246

    if-nez v6, :cond_246

    iget-boolean v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollLeftAtActionDown:Z

    if-eqz v1, :cond_250

    :cond_246
    iget v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    if-ge v14, v1, :cond_251

    if-nez v0, :cond_251

    iget-boolean v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollRightAtActionDown:Z

    if-nez v0, :cond_251

    :cond_250
    move v12, v13

    :cond_251
    :goto_251
    if-eqz v12, :cond_2fe

    .line 337
    iget v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    sub-int v0, v14, v0

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-direct {v10, v0, v1}, Lflyme/support/v7/widget/OverScrollLayout;->updateIncrementalDelta(II)I

    move-result v0

    .line 339
    iget-object v1, v10, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->releaseEdgeEffect()V

    neg-int v1, v0

    const/4 v2, 0x0

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    const/16 v19, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v22

    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 345
    invoke-super {v10, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 346
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 347
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    return v13

    .line 351
    :cond_299
    iget v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    if-eq v14, v0, :cond_2fe

    sub-int v0, v14, v0

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-direct {v10, v0, v1}, Lflyme/support/v7/widget/OverScrollLayout;->updateIncrementalDelta(II)I

    move-result v0

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    sub-int v2, v1, v0

    neg-int v3, v0

    if-gtz v2, :cond_2b2

    if-gtz v1, :cond_2b6

    :cond_2b2
    if-ltz v2, :cond_2b9

    if-gez v1, :cond_2b9

    :cond_2b6
    neg-int v1, v1

    move v15, v0

    goto :goto_2bb

    :cond_2b9
    move v1, v3

    move v15, v12

    :goto_2bb
    if-eqz v1, :cond_2ce

    const/4 v2, 0x0

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    :cond_2ce
    if-eqz v15, :cond_2fb

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_2dc

    .line 370
    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setScrollX(I)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/OverScrollLayout;->invalidateParentIfNeeded()V

    .line 375
    :cond_2dc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 376
    invoke-super {v10, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 377
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 379
    :cond_2fb
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    return v13

    .line 383
    :cond_2fe
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    goto :goto_35c

    .line 388
    :cond_301
    iput-boolean v13, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollRightAtActionDown:Z

    .line 389
    iput-boolean v13, v10, Lflyme/support/v7/widget/OverScrollLayout;->canScrollLeftAtActionDown:Z

    .line 390
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 391
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_315

    move v12, v13

    .line 392
    :cond_315
    iput v12, v10, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_32e

    .line 394
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    if-nez v0, :cond_328

    .line 395
    new-instance v0, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    invoke-direct {v0, v10}, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;-><init>(Lflyme/support/v7/widget/OverScrollLayout;)V

    iput-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    .line 397
    :cond_328
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;->startSpringback()V

    return v13

    .line 400
    :cond_32e
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_35c

    .line 289
    :cond_334
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mMotionX:I

    .line 290
    iput v8, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownY:I

    .line 291
    iput v14, v10, Lflyme/support/v7/widget/OverScrollLayout;->mDownX:I

    .line 292
    invoke-direct {v10, v12}, Lflyme/support/v7/widget/OverScrollLayout;->getNewOverflingDistance(I)I

    move-result v0

    iput v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    .line 294
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mHorizonalFlingRunnable:Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;

    if-eqz v0, :cond_347

    .line 295
    invoke-virtual {v0}, Lflyme/support/v7/widget/OverScrollLayout$HorizonalFlingRunnable;->endFling()V

    .line 298
    :cond_347
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mFlingRun:Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;

    if-eqz v0, :cond_34e

    .line 299
    invoke-virtual {v0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->endFling()V

    .line 302
    :cond_34e
    iget-object v0, v10, Lflyme/support/v7/widget/OverScrollLayout;->mOverScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_355

    .line 303
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 306
    :cond_355
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_35c

    return v13

    .line 405
    :cond_35c
    :goto_35c
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected invalidateParentIfNeeded()V
    .registers 2

    .line 429
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_17

    .line 430
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/OverScrollLayout;->findRecyclerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x3f800000  # 1.0f

    .line 101
    iput v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mConfictRatio:F

    return-void

    .line 99
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "OverScrollLayout only contain recyclerview"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "OverScrollLayout only can host 1 elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 16

    .line 653
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    cmpg-float v0, p3, v3

    if-ltz v0, :cond_23

    :cond_b
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-nez v0, :cond_13

    cmpl-float v0, p3, v3

    if-gtz v0, :cond_23

    :cond_13
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-ne v0, v2, :cond_1b

    cmpg-float v0, p2, v3

    if-ltz v0, :cond_23

    :cond_1b
    iget v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mFingerDir:I

    if-nez v0, :cond_4a

    cmpl-float v0, p2, v3

    if-lez v0, :cond_4a

    .line 655
    :cond_23
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lflyme/support/v7/widget/OverScrollLayout;->mListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/RecyclerView;->addOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 656
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lflyme/support/v7/widget/OverScrollLayout;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverScroller:Landroid/widget/OverScroller;

    .line 657
    iget-object v3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    float-to-int v6, p2

    float-to-int v7, p3

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :cond_4a
    return v1
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 643
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mNestedScrollingParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 410
    iget p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_20

    .line 411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-eq p3, p2, :cond_3c

    .line 412
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 413
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 414
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout;->invalidateParentIfNeeded()V

    .line 415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    goto :goto_3c

    :cond_20
    if-nez p3, :cond_3c

    .line 418
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_3c

    .line 419
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScrollX(I)V

    .line 421
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout;->invalidateParentIfNeeded()V

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .line 124
    iget-object p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p3}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of p3, p3, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz p3, :cond_18

    .line 125
    iget-object p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p3}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p3}, Lflyme/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result p3

    iput p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    .line 127
    :cond_18
    iget p3, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOrientation:I

    const/4 p4, 0x1

    const v0, 0x3e99999a  # 0.3f

    if-ne p3, p4, :cond_26

    int-to-float p1, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 128
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    goto :goto_2d

    :cond_26
    if-nez p3, :cond_2d

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 130
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 648
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout;->mNestedScrollingParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setAntiShakeValue(I)V
    .registers 2

    .line 611
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mAntiShakeValue:I

    return-void
.end method

.method public setConfictRatio(F)V
    .registers 2

    .line 629
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout;->mConfictRatio:F

    return-void
.end method
