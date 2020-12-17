.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mEnabled:Z

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:F

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mOnlyMovements:Z

.field private mPullGestureMinXSpan:F

.field private mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchingForPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .registers 8

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 114
    new-instance v2, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 171
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 172
    iget p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float p3, p3

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr p3, v2

    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 173
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 174
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 176
    new-instance p2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {p2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/16 p2, 0x30

    .line 177
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 178
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    new-array p3, v1, [F

    const/4 p4, 0x0

    aput p4, p3, v0

    const-string p4, "height"

    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 179
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->pull_span_min:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 181
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 182
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 184
    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 185
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const p3, 0x3e99999a  # 0.3f

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/ExpandHelper;F)F
    .registers 2

    .line 40
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$ViewScaler;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private cancel(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZFZ)V

    .line 673
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 676
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private clamp(F)F
    .registers 4

    .line 208
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    int-to-float p1, v0

    .line 209
    :cond_8
    iget p0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_f

    goto :goto_10

    :cond_f
    move p0, p1

    :goto_10
    return p0
.end method

.method private clearView()V
    .registers 2

    const/4 v0, 0x0

    .line 653
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 218
    aget v0, v1, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/4 v0, 0x1

    .line 219
    aget v0, v1, v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    goto :goto_21

    .line 222
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method private finishExpanding(ZFZ)V
    .registers 11

    .line 572
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_5

    return-void

    .line 577
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 578
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const/4 v4, 0x0

    if-nez p1, :cond_45

    if-eqz v1, :cond_2c

    .line 582
    iget p1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2a

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_2a

    :cond_28
    :goto_28
    move p1, v2

    goto :goto_37

    :cond_2a
    move p1, v3

    goto :goto_37

    .line 584
    :cond_2c
    iget p1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float p1, v0, p1

    if-gez p1, :cond_28

    cmpl-float p1, p2, v4

    if-lez p1, :cond_2a

    goto :goto_28

    .line 586
    :goto_37
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_42

    move v1, v2

    goto :goto_43

    :cond_42
    move v1, v3

    :goto_43
    or-int/2addr p1, v1

    goto :goto_47

    :cond_45
    xor-int/lit8 p1, v1, 0x1

    .line 590
    :goto_47
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 591
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 593
    :cond_54
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, v3}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 594
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v1

    if-eqz p1, :cond_62

    goto :goto_64

    .line 595
    :cond_62
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    :goto_64
    int-to-float v1, v1

    cmpl-float v5, v1, v0

    if-eqz v5, :cond_a0

    .line 596
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v6, :cond_a0

    if-eqz p3, :cond_a0

    .line 597
    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v5, v2, [F

    aput v1, v5, v3

    invoke-virtual {p3, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 598
    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 599
    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 601
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v6, p0, p3, p1}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    cmpl-float p3, p2, v4

    if-ltz p3, :cond_8e

    goto :goto_8f

    :cond_8e
    move v2, v3

    :goto_8f
    if-ne p1, v2, :cond_92

    goto :goto_93

    :cond_92
    move p2, v4

    .line 624
    :goto_93
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, v0, v1, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 625
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_bb

    :cond_a0
    if-eqz v5, :cond_a7

    .line 628
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {p2, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 630
    :cond_a7
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {p2, p3, p1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 631
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {p1, p2, v3}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 632
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 635
    :goto_bb
    iput-boolean v3, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 636
    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 639
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p0, v3}, Lcom/android/systemui/ExpandHelper$Callback;->setExpandConsumed(Z)V

    return-void
.end method

.method private getCurrentVelocity()F
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    const/16 v1, 0x3e8

    .line 382
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isEnabled()Z
    .registers 1

    .line 394
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    return p0
.end method

.method private isFullyExpanded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .registers 3

    .line 398
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    if-ne p0, v0, :cond_18

    .line 399
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private isInside(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 234
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_17

    new-array v3, v1, [I

    .line 236
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 237
    aget p0, v3, v0

    int-to-float p0, p0

    add-float/2addr p2, p0

    .line 238
    aget p0, v3, v2

    int-to-float p0, p0

    add-float/2addr p3, p0

    :cond_17
    new-array p0, v1, [I

    .line 242
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
    aget v1, p0, v0

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 244
    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    const/4 p0, 0x0

    cmpl-float v1, p2, p0

    if-lez v1, :cond_49

    cmpl-float p0, p3, p0

    if-lez p0, :cond_49

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_38

    move p0, v2

    goto :goto_39

    :cond_38
    move p0, v0

    :goto_39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_44

    move p1, v2

    goto :goto_45

    :cond_44
    move p1, v0

    :goto_45
    and-int/2addr p0, p1

    if-eqz p0, :cond_49

    move v0, v2

    :cond_49
    return v0
.end method

.method private maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 375
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1a
    return-void
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .registers 4

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_2d

    .line 362
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_14

    .line 363
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 365
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_2d

    .line 354
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_25

    .line 355
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_28

    .line 357
    :cond_25
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 359
    :goto_28
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_2d
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 668
    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->cancel(Z)V

    return-void
.end method

.method public cancelImmediately()V
    .registers 2

    const/4 v0, 0x0

    .line 661
    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->cancel(Z)V

    return-void
.end method

.method finishExpanding(ZF)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 562
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZFZ)V

    return-void
.end method

.method getScaleAnimation()Landroid/animation/ObjectAnimator;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 268
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 276
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    .line 278
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 280
    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 281
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 282
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 283
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 286
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_44

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    return v5

    :cond_44
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4d

    .line 291
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_4d

    return v5

    :cond_4d
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_d1

    const/4 v2, 0x3

    if-eq v0, v5, :cond_bf

    if-eq v0, v4, :cond_5a

    if-eq v0, v2, :cond_bf

    goto/16 :goto_110

    .line 297
    :cond_5a
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    .line 298
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7b

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 299
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_7b

    .line 302
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 303
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 305
    :cond_7b
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v0, :cond_110

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v0, v2

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float/2addr v2, v3

    .line 308
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_110

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_110

    .line 310
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 311
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_110

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 312
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_110

    .line 339
    :cond_bf
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_c6

    move v1, v5

    .line 340
    :cond_c6
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v0

    .line 339
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_110

    .line 324
    :cond_d1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v0, :cond_e9

    .line 325
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v0

    int-to-float v4, v2

    invoke-direct {p0, v0, v4, v3}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 326
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->isScrolledToTop()Z

    move-result v0

    if-eqz v0, :cond_e9

    goto :goto_ea

    :cond_e9
    move v5, v1

    :goto_ea
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    int-to-float v0, v2

    .line 327
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_104

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, v0}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_104

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 330
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 332
    :cond_104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 344
    :cond_110
    :goto_110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 345
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 346
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_c

    return v1

    .line 408
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 416
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 417
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    .line 418
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    .line 422
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v4, :cond_31

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    return v1

    :cond_31
    const/4 v4, 0x1

    if-eqz v0, :cond_123

    const/4 v2, 0x3

    if-eq v0, v4, :cond_108

    const/4 v3, 0x2

    if-eq v0, v3, :cond_62

    if-eq v0, v2, :cond_108

    const/4 v2, 0x5

    if-eq v0, v2, :cond_44

    const/4 v2, 0x6

    if-eq v0, v2, :cond_44

    goto/16 :goto_14c

    .line 504
    :cond_44
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 505
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_14c

    .line 435
    :cond_62
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v0, :cond_a5

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v0, v2

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float/2addr v2, v3

    .line 438
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_a5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a5

    .line 440
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 441
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_a5

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 442
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 445
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 450
    :cond_a5
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_fa

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_fa

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float/2addr v0, v2

    .line 452
    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 455
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_c4

    move v3, v4

    goto :goto_c5

    :cond_c4
    move v3, v1

    .line 459
    :goto_c5
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_cd

    move v3, v4

    .line 464
    :cond_cd
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v0, :cond_da

    .line 465
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v0, :cond_d8

    .line 466
    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 468
    :cond_d8
    iput-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 471
    :cond_da
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    if-eqz v3, :cond_ed

    .line 474
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p1, v1}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    goto :goto_f2

    .line 476
    :cond_ed
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p1, v4}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    :goto_f2
    if-eqz v3, :cond_f9

    .line 480
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p0, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setExpandConsumed(Z)V

    :cond_f9
    return v4

    .line 490
    :cond_fa
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_14c

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    return v4

    .line 511
    :cond_108
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_115

    goto :goto_117

    :cond_115
    move v0, v1

    goto :goto_118

    :cond_117
    :goto_117
    move v0, v4

    .line 512
    :goto_118
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v2

    .line 511
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_14c

    .line 428
    :cond_123
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v0, :cond_135

    .line 429
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v0

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-direct {p0, v0, v5, v6}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_135

    move v0, v4

    goto :goto_136

    :cond_135
    move v0, v1

    :goto_136
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    int-to-float v0, v2

    int-to-float v2, v3

    .line 430
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 516
    :cond_14c
    :goto_14c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 517
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 518
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_15a

    move v1, v4

    :cond_15a
    return v1
.end method

.method public onlyObserveMovements(Z)V
    .registers 2

    .line 688
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    return-void
.end method

.method public setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    return-void
.end method

.method startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 526
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 529
    :cond_6
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 530
    iget-boolean p2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p1, p2, :cond_12

    return v0

    .line 533
    :cond_12
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 534
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 536
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 537
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {p2, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 538
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {p2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 539
    iget p2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 540
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p2, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 543
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {p2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 544
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_4b

    .line 547
    :cond_47
    iget p1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    :goto_4b
    return v0
.end method

.method updateExpansion()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    .line 194
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    .line 196
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1f

    const/high16 v3, -0x40800000  # -1.0f

    goto :goto_20

    :cond_1f
    move v3, v1

    :goto_20
    mul-float/2addr v2, v3

    .line 197
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 198
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v2, v1

    div-float/2addr v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 199
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float/2addr v2, v0

    .line 200
    invoke-direct {p0, v2}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 203
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    return-void
.end method
