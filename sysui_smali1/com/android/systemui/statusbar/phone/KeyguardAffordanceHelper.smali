.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# static fields
.field private static sDownInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sDownInterpolatorRebound:Landroid/view/animation/PathInterpolator;

.field private static sLongTouchDownInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sLongTouchUpInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sUpInterpolator:Landroid/view/animation/PathInterpolator;

.field private static sUpInterpolatorRebound:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field protected mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndAndLaunchListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintDistance:F

.field private mHintDistanceLongTouch:F

.field private mHintDistanceRebound:F

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLongTouch:Z

.field private mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mNeedRebound:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mShouldStartPhase2:Z

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTargetDistance:F

.field private mTargetedView:Landroid/view/View;

.field private mTouchSlop:I

.field private mTouchSlopExeeded:Z

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 952
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f  # 0.67f

    const v2, 0x3ea8f5c3  # 0.33f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sLongTouchUpInterpolator:Landroid/view/animation/PathInterpolator;

    .line 953
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sLongTouchDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 954
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f  # 0.23f

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sUpInterpolator:Landroid/view/animation/PathInterpolator;

    .line 955
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f451eb8  # 0.77f

    const v2, 0x3f3ae148  # 0.73f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 956
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ee66666  # 0.45f

    const/high16 v2, 0x3e800000  # 0.25f

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sUpInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .line 957
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sDownInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V
    .registers 12

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 923
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    .line 933
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndAndLaunchListener:Landroid/animation/AnimatorListenerAdapter;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 94
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mShouldStartPhase2:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mShouldStartPhase2:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;Z)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;Z)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Ljava/lang/Runnable;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Landroid/view/View;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)F
    .registers 1

    .line 43
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .registers 2

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;FZZ)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzSetTranslation(FZZ)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_7

    .line 340
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method private endMotion(ZFF)V
    .registers 6

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(ZFF)V

    goto :goto_b

    .line 245
    :cond_9
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 247
    :goto_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_14

    .line 248
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 249
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_14
    return-void
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .registers 10

    .line 345
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity(FF)F

    move-result p2

    .line 349
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->needsAntiFalsing()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_18

    .line 350
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p3

    if-eqz p3, :cond_18

    move p3, v0

    goto :goto_19

    :cond_18
    move p3, v1

    :goto_19
    if-nez p3, :cond_24

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result p3

    if-eqz p3, :cond_22

    goto :goto_24

    :cond_22
    move p3, v1

    goto :goto_25

    :cond_24
    :goto_24
    move p3, v0

    .line 354
    :goto_25
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v2, p2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    move v2, v0

    goto :goto_30

    :cond_2f
    move v2, v1

    .line 355
    :goto_30
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3f

    if-eqz v2, :cond_3f

    move v4, v0

    goto :goto_40

    :cond_3f
    move v4, v1

    :goto_40
    or-int/2addr p3, v4

    xor-int/2addr v2, p3

    if-eqz v2, :cond_45

    move p2, v3

    :cond_45
    if-nez p3, :cond_4c

    if-eqz p1, :cond_4a

    goto :goto_4c

    :cond_4a
    move p1, v1

    goto :goto_4d

    :cond_4c
    :goto_4c
    move p1, v0

    .line 357
    :goto_4d
    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float p3, p3, v3

    if-gez p3, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzFling(FZZ)V

    return-void
.end method

.method private getCurrentVelocity(FF)F
    .registers 9

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/16 v1, 0x3e8

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 520
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr p1, v2

    .line 521
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr p2, v2

    float-to-double v2, p1

    float-to-double v4, p2

    .line 522
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 527
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eq p1, p2, :cond_32

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, p0, :cond_33

    :cond_32
    neg-float v0, v0

    :cond_33
    return v0
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .registers 4

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    .line 219
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    .line 223
    :cond_22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftMzPaySwipePossible()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .registers 3

    .line 495
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result p0

    div-float/2addr p1, p0

    const p0, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, p0

    const p0, 0x3f4ccccd  # 0.8f

    add-float/2addr p1, p0

    const/high16 p0, 0x3fc00000  # 1.5f

    .line 497
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private initDimens()V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_min_swipe_amount:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_min_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_keyguard_affordance_touch_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->hint_grow_amount_sideways:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x3ecccccd  # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_hint_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistanceLongTouch:F

    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistanceLongTouch:F

    float-to-double v1, v0

    const-wide v3, 0x3ff851eb851eb852L  # 1.52

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistance:F

    float-to-double v0, v0

    const-wide v2, 0x3fc851eb851eb852L  # 0.19

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 121
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistanceRebound:F

    return-void
.end method

.method private initIcons()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMZPayIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    return-void
.end method

.method private initVelocityTracker()V
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 508
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 510
    :cond_7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .registers 3

    .line 361
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float p0, p0

    add-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .registers 7

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    sub-float/2addr p2, v0

    float-to-double p1, p2

    sub-float/2addr p3, v1

    float-to-double v0, p3

    .line 237
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 238
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method private leftMzPaySwipePossible()Z
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private leftSwipePossible()Z
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private mzFling(FZZ)V
    .registers 9

    if-eqz p3, :cond_a

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    neg-float v0, v0

    goto :goto_10

    .line 860
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    :goto_10
    if-eqz p2, :cond_13

    const/4 v0, 0x0

    :cond_13
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 862
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 863
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v3, v1, v4, v0, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 864
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p2, :cond_51

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndAndLaunchListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eq v0, v2, :cond_46

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v0, p3, v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    goto :goto_4b

    .line 880
    :cond_46
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStartMeizuPay()V

    .line 882
    :goto_4b
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 883
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    goto :goto_54

    .line 886
    :cond_51
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzReset(Z)V

    :goto_54
    if-eqz p2, :cond_5b

    .line 889
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    :cond_5b
    return-void
.end method

.method private mzSetTranslation(FZZ)V
    .registers 6

    .line 894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 895
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v0, p1, v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_30

    .line 896
    :cond_1e
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    if-eqz v0, :cond_30

    .line 898
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v1, p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    invoke-interface {v0, p1, p2, p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onTranslationChanged(FZZZ)V

    :cond_30
    return-void
.end method

.method private resetAnimation()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 645
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 646
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 653
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 664
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0xb7

    int-to-long v1, v1

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 666
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 667
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private rightSwipePossible()Z
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;Z)V
    .registers 8

    if-eqz p3, :cond_5

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_c

    :cond_5
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 771
    :goto_c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistanceLongTouch:F

    goto :goto_1c

    .line 772
    :cond_13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistance:F

    goto :goto_1c

    :cond_1a
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistanceRebound:F

    :goto_1c
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetDistance:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 773
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetDistance:F

    neg-float v3, v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 774
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 782
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 810
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz p1, :cond_46

    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sLongTouchUpInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_4f

    .line 811
    :cond_46
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    if-eqz p1, :cond_4d

    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sUpInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_4f

    :cond_4d
    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sUpInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .line 812
    :goto_4f
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz p2, :cond_56

    const/16 p2, 0xd9

    goto :goto_5f

    :cond_56
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    if-eqz p2, :cond_5d

    const/16 p2, 0xb7

    goto :goto_5f

    :cond_5d
    const/16 p2, 0x50

    .line 813
    :goto_5f
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p2

    .line 814
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 815
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 816
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 817
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-void
.end method

.method private startSwiping(Landroid/view/View;)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    move v1, v2

    :goto_f
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 211
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-void
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;Z)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 825
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 826
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 834
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 849
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz p1, :cond_27

    const/16 p1, 0xd9

    goto :goto_30

    :cond_27
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    if-eqz p1, :cond_2e

    const/16 p1, 0xb7

    goto :goto_30

    :cond_2e
    const/16 p1, 0x50

    .line 850
    :goto_30
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz p2, :cond_37

    sget-object p2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sLongTouchDownInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_40

    .line 851
    :cond_37
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    if-eqz p2, :cond_3e

    sget-object p2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sDownInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_40

    :cond_3e
    sget-object p2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->sDownInterpolatorRebound:Landroid/view/animation/PathInterpolator;

    .line 852
    :goto_40
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p1

    .line 853
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 854
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 855
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .registers 2

    .line 501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_7

    .line 502
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V
    .registers 9

    .line 476
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    if-nez p6, :cond_9

    return-void

    :cond_9
    if-eqz p7, :cond_f

    .line 480
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    goto :goto_12

    .line 482
    :cond_f
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 484
    :goto_12
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .registers 5

    .line 488
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 489
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 490
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 491
    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    return-void
.end method


# virtual methods
.method public isOnAffordanceIcon(FF)Z
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isSwipingInProgress()Z
    .registers 1

    .line 554
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p0
.end method

.method public mzOnTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 672
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    return v2

    .line 675
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_cd

    if-eq v0, v4, :cond_99

    const/4 v5, 0x2

    if-eq v0, v5, :cond_32

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2f

    const/4 p1, 0x5

    if-eq v0, p1, :cond_24

    goto/16 :goto_11a

    .line 710
    :cond_24
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz p1, :cond_11a

    .line 711
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_11a

    :cond_2f
    move v0, v2

    goto/16 :goto_9a

    .line 715
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 717
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr v1, p1

    .line 718
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 719
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v0, :cond_58

    const/high16 v0, 0x41000000  # 8.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_58

    .line 720
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v0, :cond_58

    .line 722
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_58

    .line 724
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 728
    :cond_58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_88

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v0, :cond_88

    .line 730
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v5, 0x0

    if-eq v0, v3, :cond_76

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v0, v3, :cond_6e

    goto :goto_76

    .line 734
    :cond_6e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v0, p1

    .line 735
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_85

    .line 731
    :cond_76
    :goto_76
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz p1, :cond_7e

    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintDistanceLongTouch:F

    neg-float p1, p1

    goto :goto_80

    :cond_7e
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    :goto_80
    add-float/2addr p1, v1

    .line 732
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 737
    :goto_85
    invoke-direct {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzSetTranslation(FZZ)V

    .line 740
    :cond_88
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz p1, :cond_11a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_11a

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-eqz p0, :cond_11a

    .line 741
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_11a

    :cond_99
    move v0, v4

    .line 748
    :goto_9a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_a3

    .line 749
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 751
    :cond_a3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    xor-int/lit8 p1, v0, 0x1

    .line 752
    invoke-direct {p0, p1, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    .line 753
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez p1, :cond_11a

    if-eqz v0, :cond_11a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-nez p1, :cond_11a

    .line 754
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mShouldStartPhase2:Z

    .line 755
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v0, v1, :cond_c1

    move v0, v4

    goto :goto_c2

    :cond_c1
    move v0, v2

    :goto_c2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v1, p0, :cond_c9

    move v2, v4

    :cond_c9
    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(ZZ)V

    goto :goto_11a

    .line 681
    :cond_cd
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 682
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_da

    if-eq v5, v0, :cond_da

    goto :goto_11b

    .line 686
    :cond_da
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_e1

    .line 687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 690
    :cond_e1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 691
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mShouldStartPhase2:Z

    .line 692
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 693
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 694
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 695
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 696
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    .line 697
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mNeedRebound:Z

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 699
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 700
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 701
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz p1, :cond_11a

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eq p1, v0, :cond_111

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMZPayIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v0, p1, :cond_109

    goto :goto_111

    .line 704
    :cond_109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, p0, :cond_11a

    .line 705
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_11a

    .line 703
    :cond_111
    :goto_111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCameraAnimationRunnableLongTouch:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11a
    :goto_11a
    return v4

    .line 683
    :cond_11b
    :goto_11b
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    return v2
.end method

.method public mzReset(Z)V
    .registers 4

    .line 904
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 906
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->resetAnimation()V

    goto :goto_e

    :cond_a
    const/4 v1, 0x0

    .line 908
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzSetTranslation(FZZ)V

    .line 910
    :goto_e
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLongTouch:Z

    if-eqz p1, :cond_17

    .line 911
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onHintFinished()V

    .line 912
    :cond_17
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 913
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz p1, :cond_25

    .line 914
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    const/4 p1, 0x0

    .line 915
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    :cond_25
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onRtlPropertiesChanged()V
    .registers 1

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;Z)V
    .registers 4

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 765
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public updatePreviews()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method
