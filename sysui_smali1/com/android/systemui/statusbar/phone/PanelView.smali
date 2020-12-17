.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelView"


# instance fields
.field protected DG_DISTANCE_EXPANDS:F

.field protected DG_DISTANCE_UNLOCK:F

.field protected DG_FAST_DISTANCE_EXPANDS:F

.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field protected mDownTime:J

.field protected mEnablePullDownOnKeyguard:Z

.field protected mEnablePullDownOnKeyguardFromStatusBarOnly:Z

.field mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field protected mExpansionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/PanelExpansionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFixedDuration:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mIntialPanelHeight:F

.field protected mIsFullyCollapsedOnKeyguardShade:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field protected mLaunchingNotification:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field protected mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field private mPerf:Landroid/util/BoostFramework;

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected mStatusBarHeight:I

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchOnStatusBarInKeyguardShade:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field protected mTouchSlopExceededBeforeDown:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenTresholdReached:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrateOnOpening:Z

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private mViewName:Ljava/lang/String;

.field springAnimEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field springAnimListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 p2, -0x1

    .line 85
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 99
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 100
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 123
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 159
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 165
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 166
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 167
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1213
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1504
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x43960000  # 300.0f

    .line 1723
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    const/high16 v0, 0x44160000  # 600.0f

    .line 1724
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_EXPANDS:F

    const/high16 v0, 0x43c80000  # 400.0f

    .line 1725
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_FAST_DISTANCE_EXPANDS:F

    .line 1732
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->springAnimListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 1741
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->springAnimEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    const/4 v0, 0x1

    .line 1754
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    .line 1755
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    .line 1757
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFullyCollapsedOnKeyguardShade:Z

    .line 1761
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 227
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v0, 0x3f19999a  # 0.6f

    invoke-direct {p2, p1, v0, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 229
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-direct {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 231
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v4, 0x3f000000  # 0.5f

    const v5, 0x3e4ccccd  # 0.2f

    const v6, 0x3f19999a  # 0.6f

    const v7, 0x3f570a3d  # 0.84f

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 234
    new-instance p2, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 235
    const-class p2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$bool;->config_enableNotificationShadeDrag:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    .line 238
    const-class p2, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 239
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibrateOnOpening:Z

    .line 242
    new-instance p2, Landroid/util/BoostFramework;

    invoke-direct {p2}, Landroid/util/BoostFramework;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 246
    sget p2, Lcom/android/systemui/R$dimen;->dg_distance_expands:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_EXPANDS:F

    .line 247
    sget p2, Lcom/android/systemui/R$dimen;->dg_fast_distance_expands:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_FAST_DISTANCE_EXPANDS:F

    .line 248
    sget p2, Lcom/android/systemui/R$dimen;->dg_distance_unlock:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    return-void
.end method

.method private abortAnimations()V
    .registers 2

    .line 1317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/util/BoostFramework;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .registers 1

    .line 72
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .registers 5

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 272
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .registers 8

    .line 1441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_16

    new-array v0, v3, [F

    .line 1442
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_47

    :cond_16
    new-array v0, v3, [F

    .line 1445
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000  # 0.25f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v3, :cond_30

    .line 1445
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3d

    :cond_30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isShowingFilterPanel()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    goto :goto_3f

    :cond_3d
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    :goto_3f
    aput v3, v0, v2

    aput p1, v0, v1

    .line 1444
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1448
    :goto_47
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private endClosing()V
    .registers 2

    .line 816
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 817
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    :cond_a
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .registers 12

    const/4 v0, -0x1

    .line 590
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 591
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-nez v0, :cond_69

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v0, p2, v0

    .line 592
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_69

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, p3, v0

    .line 593
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_69

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_69

    if-eqz p4, :cond_34

    goto :goto_69

    .line 629
    :cond_34
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_56

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 630
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p1

    if-nez p1, :cond_56

    goto/16 :goto_117

    .line 641
    :cond_56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_117

    .line 642
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result p1

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    goto/16 :goto_117

    .line 596
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 598
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 599
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-double v5, v5

    .line 598
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 601
    invoke-virtual {p0, v0, v3, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_9b

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v1, :cond_9b

    if-eqz p4, :cond_99

    goto :goto_9b

    :cond_99
    move p1, v2

    goto :goto_9c

    :cond_9b
    :goto_9b
    move p1, v4

    .line 604
    :goto_9c
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 605
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 606
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v3

    .line 604
    invoke-static {p1, p4, v1, v3}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez p1, :cond_d5

    .line 608
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p4

    if-ne p4, v4, :cond_d5

    .line 609
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p4

    .line 610
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, p3, v1

    div-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-float p4, v0, p4

    .line 611
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-int p4, p4

    .line 612
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v5, 0xba

    invoke-virtual {v3, v5, v1, p4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 617
    :cond_d5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result p4

    if-eqz p4, :cond_e3

    iget p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float p4, p4, v1

    if-nez p4, :cond_f9

    goto :goto_ee

    :cond_e3
    iget p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p4, p4, v1

    if-nez p4, :cond_f9

    .line 618
    :goto_ee
    sget-object p2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string p3, "no necessary to fling"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    goto :goto_114

    .line 621
    :cond_f9
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZZ)V

    if-eqz p1, :cond_10b

    .line 622
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz p2, :cond_10b

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    if-nez p2, :cond_10b

    goto :goto_10c

    :cond_10b
    move v4, v2

    :goto_10c
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 623
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz p2, :cond_114

    .line 624
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    .line 627
    :cond_114
    :goto_114
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 646
    :cond_117
    :goto_117
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 647
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    return-void
.end method

.method private flingToHeightExpandAnimation(F)V
    .registers 6

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    .line 1652
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1654
    :cond_12
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000  # 0.25f

    mul-float/2addr v2, v3

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x40400000  # 3.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1656
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1657
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000  # 0.75f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    if-gez v0, :cond_4e

    .line 1658
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_51

    :cond_4e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    add-float/2addr v0, v1

    .line 1657
    :goto_51
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1659
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1660
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1661
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x43480000  # 200.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1662
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x41700000  # 15.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1663
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_98

    .line 1664
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1674
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->springAnimEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_98
    return-void
.end method

.method private getFalsingThreshold()I
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 657
    :goto_d
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private isDirectionUpwards(FF)Z
    .registers 4

    .line 565
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float/2addr p1, v0

    .line 566
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_d

    return v0

    .line 570
    :cond_d
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private isFalseTouch(FF)Z
    .registers 6

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 881
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 882
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0

    .line 884
    :cond_19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    return v2

    .line 887
    :cond_1f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    if-eqz v0, :cond_24

    return v1

    .line 890
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1408
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_e

    .line 1409
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 1410
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 1411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    :cond_e
    return-void
.end method

.method private shouldFlingExpands(FF)Z
    .registers 7

    .line 1592
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldFlingExpands  vel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", vectorVel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mInitialTouchY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mExpandedHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mIntialPanelHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getMaxPanelHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1592
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_11f

    .line 1598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_11f

    .line 1609
    :cond_61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result p2

    if-eqz p2, :cond_e1

    .line 1610
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1611
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getHighVelocityPxPerSecond()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_ab

    .line 1612
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_97

    .line 1615
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_EXPANDS:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_8b

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1614
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_aa

    :cond_8b
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1615
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_a9

    goto :goto_aa

    .line 1617
    :cond_97
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    neg-float v0, v0

    cmpl-float p2, p2, v0

    if-gez p2, :cond_aa

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v3

    :cond_aa
    :goto_aa
    return v2

    .line 1620
    :cond_ab
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_cd

    .line 1623
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_FAST_DISTANCE_EXPANDS:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_c1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1622
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_e0

    :cond_c1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1623
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_df

    goto :goto_e0

    .line 1625
    :cond_cd
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    neg-float v0, v0

    cmpl-float p2, p2, v0

    if-gez p2, :cond_e0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1626
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_df

    goto :goto_e0

    :cond_df
    move v2, v3

    :cond_e0
    :goto_e0
    return v2

    .line 1629
    :cond_e1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1630
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getHighVelocityPxPerSecond()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_107

    .line 1631
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    sub-float/2addr v0, v1

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_106

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1634
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_105

    goto :goto_106

    :cond_105
    move v2, v3

    :cond_106
    :goto_106
    return v2

    .line 1636
    :cond_107
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->DG_DISTANCE_UNLOCK:F

    sub-float/2addr v0, v1

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_11e

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_11d

    goto :goto_11e

    :cond_11d
    move v2, v3

    :cond_11e
    :goto_11e
    return v2

    .line 1599
    :cond_11f
    :goto_11f
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 1600
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_157

    .line 1602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p2

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_145

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isShowingFilterPanel()Z

    move-result p0

    if-eqz p0, :cond_142

    const/high16 p0, 0x3f000000  # 0.5f

    goto :goto_150

    :cond_142
    const/high16 p0, 0x3e000000  # 0.125f

    goto :goto_150

    .line 1603
    :cond_145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isShowingFilterPanel()Z

    move-result p0

    if-eqz p0, :cond_14e

    const/high16 p0, -0x41000000  # -0.5f

    goto :goto_150

    :cond_14e
    const/high16 p0, -0x42000000  # -0.125f

    :goto_150
    cmpl-float p0, p1, p0

    if-lez p0, :cond_155

    goto :goto_156

    :cond_155
    move v2, v3

    :goto_156
    return v2

    :cond_157
    cmpl-float p0, p1, v1

    if-lez p0, :cond_15c

    goto :goto_15d

    :cond_15c
    move v2, v3

    :goto_15d
    return v2
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .registers 9

    .line 1362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1363
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 1364
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1365
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1366
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1384
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1385
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/View;

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1388
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1389
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, p1, v4

    .line 1390
    array-length v0, p1

    :goto_3f
    if-ge v3, v0, :cond_6a

    aget-object v4, p1, v3

    if-nez v4, :cond_46

    goto :goto_67

    .line 1394
    :cond_46
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v6, v6

    .line 1395
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 1396
    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1397
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NxwxpLj3ZElyZw-bMmniBqBlhdY;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NxwxpLj3ZElyZw-bMmniBqBlhdY;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V

    .line 1398
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1403
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_6a
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .registers 5

    .line 1419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 1420
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1421
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1422
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1430
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1431
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V
    .registers 2

    .line 1487
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canPanelBeCollapsed()Z
    .registers 2

    .line 1210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method protected cancelHeightAnimator()V
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    .line 802
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 803
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 805
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 808
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 812
    :cond_21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    return-void
.end method

.method public cancelPeek()V
    .registers 3

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 1225
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_f

    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    :cond_f
    return-void
.end method

.method public collapse(ZF)V
    .registers 5

    .line 1194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz p1, :cond_1b

    .line 1201
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 1202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x78

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20

    :cond_1b
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1204
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    :cond_20
    :goto_20
    return-void
.end method

.method public collapseWithDuration(I)V
    .registers 3

    .line 1555
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 1556
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    const/4 p1, -0x1

    .line 1557
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    .line 1519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 1520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    .line 1521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1522
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    const-string v0, "T"

    const-string v1, "f"

    if-eqz p3, :cond_2f

    move-object p3, v0

    goto :goto_30

    :cond_2f
    move-object p3, v1

    :goto_30
    const/4 v2, 0x3

    aput-object p3, p1, v2

    const/4 p3, 0x4

    .line 1523
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v2, :cond_3a

    move-object v2, v0

    goto :goto_3b

    :cond_3a
    move-object v2, v1

    :goto_3b
    aput-object v2, p1, p3

    const/4 p3, 0x5

    .line 1524
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v2, :cond_44

    move-object v2, v0

    goto :goto_45

    :cond_44
    move-object v2, v1

    :goto_45
    aput-object v2, p1, p3

    const/4 p3, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, p1, p3

    const/4 p3, 0x7

    const-string v3, " (started)"

    const-string v4, ""

    if-eqz v2, :cond_5b

    .line 1525
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object v2, v3

    goto :goto_5c

    :cond_5b
    move-object v2, v4

    :goto_5c
    aput-object v2, p1, p3

    const/16 p3, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, p1, p3

    const/16 p3, 0x9

    if-eqz v2, :cond_6f

    .line 1526
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_70

    :cond_6f
    move-object v3, v4

    :goto_70
    aput-object v3, p1, p3

    const/16 p3, 0xa

    .line 1527
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz p0, :cond_79

    goto :goto_7a

    :cond_79
    move-object v0, v1

    :goto_7a
    aput-object v0, p1, p3

    const-string p0, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    .line 1516
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public expand(Z)V
    .registers 4

    .line 1236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 1240
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1241
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    const/4 p1, 0x0

    .line 1242
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1245
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_22

    .line 1246
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1248
    :cond_22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_29

    .line 1249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1251
    :cond_29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1285
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1288
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected fling(FZ)V
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    .line 894
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    return-void
.end method

.method protected fling(FZFZ)V
    .registers 13

    .line 903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 909
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 910
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_17

    if-eqz p2, :cond_27

    .line 911
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    goto :goto_26

    :cond_17
    if-eqz p2, :cond_1a

    goto :goto_27

    .line 913
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_26

    :cond_20
    if-eqz p2, :cond_27

    .line 916
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    :goto_26
    int-to-float v1, v0

    :cond_27
    :goto_27
    move v5, v1

    if-nez p2, :cond_2d

    const/4 v0, 0x1

    .line 920
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    :cond_2d
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .line 922
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fling(FZZ)V
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    .line 898
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .registers 5

    .line 864
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldFlingExpands(FF)Z

    move-result p0

    return p0
.end method

.method protected flingToHeight(FZFFZ)V
    .registers 22

    move-object/from16 v0, p0

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2a

    if-eqz p2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2a

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v1

    if-nez v1, :cond_2a

    move v7, v2

    goto :goto_2b

    :cond_2a
    move v7, v3

    :goto_2b
    if-eqz v7, :cond_39

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    move v11, v1

    goto :goto_3b

    :cond_39
    move/from16 v11, p3

    .line 936
    :goto_3b
    iget v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v11, v1

    if-eqz v1, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v1

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4e

    if-eqz p2, :cond_4e

    goto/16 :goto_174

    .line 941
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_57

    goto :goto_58

    :cond_57
    move v2, v3

    :goto_58
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 942
    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v14

    const-wide/16 v5, 0x0

    const/4 v15, -0x1

    if-eqz p2, :cond_93

    if-eqz p5, :cond_6b

    cmpg-float v1, p1, v8

    if-gez v1, :cond_6b

    move v12, v8

    goto :goto_6d

    :cond_6b
    move/from16 v12, p1

    .line 954
    :goto_6d
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeightExpandAnimation(F)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isShowingFilterPanel()Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_83

    .line 959
    :cond_7d
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_90

    .line 957
    :cond_83
    :goto_83
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v10, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v13, v1

    move-object v9, v14

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_90
    move-wide v12, v5

    goto/16 :goto_fa

    .line 963
    :cond_93
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldUseDismissingAnimation()Z

    move-result v1

    if-eqz v1, :cond_c9

    cmpl-float v1, p1, v8

    if-nez v1, :cond_b6

    .line 965
    sget-object v1, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v1, 0x43480000  # 200.0f

    .line 966
    iget v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-long v1, v2

    .line 967
    invoke-virtual {v14, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide v12, v5

    goto :goto_da

    .line 969
    :cond_b6
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 970
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v9, v2

    move-object v2, v14

    move v4, v11

    move-wide v12, v5

    move/from16 v5, p1

    move v6, v9

    .line 969
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_da

    :cond_c9
    move-wide v12, v5

    .line 973
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object v2, v14

    move v4, v11

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_da
    cmpl-float v1, p1, v8

    if-nez v1, :cond_e9

    .line 979
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float v1, v1, p4

    float-to-long v1, v1

    invoke-virtual {v14, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 981
    :cond_e9
    iget v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    if-eq v1, v15, :cond_f1

    int-to-long v1, v1

    .line 982
    invoke-virtual {v14, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 986
    :cond_f1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 987
    invoke-virtual {v14, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 991
    :cond_fa
    :goto_fa
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_10c

    .line 992
    iget-object v1, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 993
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v15, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 996
    :cond_10c
    iget-object v1, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v1

    if-nez v1, :cond_11b

    .line 997
    invoke-virtual {v14, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1000
    :cond_11b
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v1, v0, v7}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v14, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1026
    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    if-eqz p2, :cond_134

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_134

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isShowingFilterPanel()Z

    move-result v1

    if-eqz v1, :cond_173

    .line 1029
    :cond_134
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flingToHeight expand false HeightAnimator start,animator.Values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_161

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 1031
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1033
    :cond_161
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_170

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 1034
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1037
    :cond_170
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    :cond_173
    return-void

    :cond_174
    :goto_174
    const/4 v1, 0x0

    .line 937
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeight()I
.end method

.method protected getCurrentExpandVelocity()F
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 652
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public getExpandedFraction()F
    .registers 1

    .line 1169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return p0
.end method

.method public getExpandedHeight()F
    .registers 1

    .line 1165
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return p0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method public instantCollapse()V
    .registers 2

    .line 1293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 1300
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    goto :goto_1f

    :cond_16
    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 1305
    :goto_1f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetPanelNotificationsScale()V

    .line 1307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_29

    .line 1308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1310
    :cond_29
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 1311
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1313
    :cond_30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public instantExpandNotificatipnPanelOnKeyguardShade()V
    .registers 2

    .line 1679
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1681
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 1682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1684
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 1685
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_18
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1688
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1689
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_24

    .line 1690
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1694
    :cond_24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .registers 2

    .line 1181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isFullyCollapsed()Z
    .registers 2

    .line 1177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFullyCollapsedOnKeyguardShade:Z

    goto :goto_13

    :cond_9
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isFullyExpanded()Z
    .registers 4

    .line 1173
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move p0, v2

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p0

    :goto_f
    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isInHorizontalEmptyArea(F)Z
.end method

.method protected abstract isKeyguardNormalMode()Z
.end method

.method protected abstract isKeyguardShadeMode()Z
.end method

.method protected abstract isKeyguardShowing()Z
.end method

.method public isNotificationPanelFullyCollapsedOnKeyguardShade()Z
    .registers 3

    .line 1698
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1701
    :cond_8
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method protected isScrolledToBottom()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isShowingFilterPanel()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTracking()Z
    .registers 1

    .line 1185
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return p0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method public isUnlockHintRunning()Z
    .registers 1

    .line 1355
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    return p0
.end method

.method public synthetic lambda$createHeightAnimator$3$PanelView(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1449
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public synthetic lambda$setExpandedHeightInternal$0$PanelView()V
    .registers 2

    .line 1106
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimation$1$PanelView()V
    .registers 2

    .line 1338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintFinished()V

    const/4 v0, 0x0

    .line 1340
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimationPhase1$2$PanelView(Landroid/view/View;)V
    .registers 4

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 1400
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 1401
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1402
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected loadDimens()V
    .registers 4

    .line 253
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    .line 258
    sget v1, Lcom/android/systemui/R$dimen;->mz_hint_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    .line 259
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarHeight:I

    .line 260
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarHeight:I

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/camera/CameraStateController;->getBlackCircleWindowHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarHeight:I

    .line 262
    sget v1, Lcom/android/systemui/R$dimen;->unlock_falsing_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .registers 6

    .line 1456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_90

    .line 1457
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v4, "keyguard-shade mode, notify panel expansion change in keyguard-shade mode"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_36

    .line 1459
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v4, "reached negative max panel height, notify panel expansion changed to unlock in keyguard-shade modes specially."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_31

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_30

    goto :goto_31

    :cond_30
    move v1, v3

    :cond_31
    :goto_31
    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    goto/16 :goto_b5

    .line 1462
    :cond_36
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_52

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_52

    .line 1463
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "try to unlock on keyguard-shade but not reached max panel height yet, do not notify panel expansion changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    .line 1464
    :cond_52
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_65

    .line 1465
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "collapse notification panel on keyguard-shade, do not notify panel expansion changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    goto :goto_b5

    .line 1468
    :cond_65
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v4, "expand notification panel on keyguard-shade, notify panel expansion changed normally"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_8c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_8c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v2, :cond_8c

    .line 1470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    if-nez v2, :cond_8c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8b

    goto :goto_8c

    :cond_8b
    move v1, v3

    .line 1469
    :cond_8c
    :goto_8c
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    goto :goto_b5

    .line 1474
    :cond_90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    if-eqz v0, :cond_b5

    .line 1475
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_b2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_b2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v2, :cond_b2

    .line 1477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    if-nez v2, :cond_b2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v2, :cond_b2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_b1

    goto :goto_b2

    :cond_b1
    move v1, v3

    .line 1475
    :cond_b2
    :goto_b2
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1481
    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_cf

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onPanelExpansionChanged(FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    :cond_cf
    return-void
.end method

.method protected final notifyExpandingFinished()V
    .registers 2

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    :cond_d
    return-void
.end method

.method protected notifyExpandingStarted()V
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    :cond_a
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 1045
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1046
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-void
.end method

.method protected onClosingFinished()V
    .registers 1

    .line 1324
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 838
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .registers 2

    .line 1498
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1501
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result p0

    return p0
.end method

.method protected onExpandingFinished()V
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 832
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 680
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-eqz v0, :cond_18e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v0, :cond_18e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v0, :cond_19

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_18e

    .line 693
    :cond_19
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_28

    .line 696
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move v0, v1

    .line 698
    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 700
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v3

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_123

    if-eq v4, v6, :cond_11c

    const/4 v7, 0x2

    if-eq v4, v7, :cond_84

    const/4 v0, 0x3

    if-eq v4, v0, :cond_11c

    const/4 v0, 0x5

    if-eq v4, v0, :cond_73

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4c

    goto/16 :goto_18e

    .line 738
    :cond_4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 739
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_18e

    .line 741
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_5f

    move v6, v1

    .line 742
    :cond_5f
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 743
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 744
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_18e

    .line 748
    :cond_73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v6, :cond_18e

    .line 749
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 750
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_18e

    .line 755
    :cond_84
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v4

    .line 756
    invoke-virtual {v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v4

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 757
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v4

    if-ne v4, v6, :cond_9d

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    if-nez v4, :cond_9d

    return v1

    .line 763
    :cond_9d
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v4, v0, v4

    .line 764
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    if-nez v3, :cond_ae

    .line 765
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-nez p1, :cond_ae

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz p1, :cond_18e

    .line 766
    :cond_ae
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 767
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v7, v3

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_c7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v7, :cond_d3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_d3

    cmpg-float v3, v4, v5

    if-gez v3, :cond_d3

    :cond_c7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v3, v2, v3

    .line 768
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_f9

    .line 771
    :cond_d3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-eqz p1, :cond_18e

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz p1, :cond_18e

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_18e

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float p1, v2, p1

    .line 773
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_18e

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_18e

    .line 775
    :cond_f9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 776
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2, v0, v6, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 778
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-eqz p1, :cond_11b

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_11b

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_11b

    .line 780
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onPullNotificationPanelOnKeyguardShade()V

    :cond_11b
    return v6

    .line 789
    :cond_11c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_18e

    .line 704
    :cond_123
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 705
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_12e

    move v3, v6

    goto :goto_12f

    :cond_12e
    move v3, v1

    :goto_12f
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    .line 706
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 708
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v3, :cond_145

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v3, :cond_145

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v3, :cond_149

    :cond_145
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_152

    .line 710
    :cond_149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 712
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    return v6

    .line 715
    :cond_152
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 716
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 717
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v3

    xor-int/2addr v3, v6

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 718
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceededBeforeDown:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 720
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 723
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v4

    if-eqz v4, :cond_16f

    const/high16 v5, -0x40800000  # -1.0f

    :cond_16f
    cmpl-float v3, v3, v5

    if-nez v3, :cond_175

    move v3, v6

    goto :goto_176

    :cond_175
    move v3, v1

    :goto_176
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 725
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 726
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 727
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 728
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 729
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 731
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->touchOnStatusBarInKeyguardShade(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    .line 732
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    if-eqz p0, :cond_18e

    return v6

    :cond_18e
    :goto_18e
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1060
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1061
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelLaidOut()V

    .line 1062
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    const/4 p1, 0x1

    .line 1063
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 1064
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz p2, :cond_1d

    .line 1065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1066
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    const/4 p1, 0x0

    .line 1067
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    :cond_1d
    return-void
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method protected abstract onPullNotificationPanelOnKeyguardShade()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    const-string v1, "PanelTouch"

    const/4 v2, 0x0

    if-nez v0, :cond_40a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_12

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_40a

    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v0, :cond_1e

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_40a

    .line 306
    :cond_1e
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 308
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-ne v0, v5, :cond_44

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOnStatusBarInKeyguardShade:Z

    if-nez v0, :cond_44

    const-string p0, "intercept for useThirdPartLockscreen"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 316
    :cond_44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-nez v0, :cond_55

    .line 317
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_4f

    .line 319
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_4f
    const-string p0, "intercept for mNotificationsDragDisable"

    .line 321
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 326
    :cond_55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_6c

    .line 328
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    :cond_6c
    return v5

    .line 342
    :cond_6d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7c

    .line 345
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move v0, v2

    .line 347
    :cond_7c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_a2

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureWaitForTouchSlop()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v6

    if-nez v6, :cond_9f

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v6

    if-eqz v6, :cond_9d

    goto :goto_9f

    :cond_9d
    move v6, v2

    goto :goto_a0

    :cond_9f
    :goto_9f
    move v6, v5

    :goto_a0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    .line 355
    :cond_a2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_379

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v8, 0x3e800000  # 0.25f

    if-eq v6, v5, :cond_2ec

    const/4 v9, 0x2

    if-eq v6, v9, :cond_f3

    if-eq v6, v3, :cond_2ec

    const/4 v3, 0x5

    if-eq v6, v3, :cond_e5

    const/4 v0, 0x6

    if-eq v6, v0, :cond_bb

    goto/16 :goto_400

    .line 390
    :cond_bb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 391
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v1, v0, :cond_400

    .line 393
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, v0, :cond_cf

    move v0, v2

    goto :goto_d0

    :cond_cf
    move v0, v5

    .line 394
    :goto_d0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 397
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v3, v1, v5, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    goto/16 :goto_400

    .line 401
    :cond_e5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v5, :cond_400

    .line 402
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 403
    invoke-direct {p0, p1, v1, v0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    return v2

    .line 408
    :cond_f3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 409
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float p1, v0, p1

    .line 412
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v3, v1, v3

    cmpg-float v6, v3, v4

    if-gez v6, :cond_12b

    .line 413
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x42a00000  # 80.0f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_12b

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_12b

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 414
    invoke-static {v3}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->canFlingToBrowsePage()Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 415
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPosterHintStart()V

    .line 416
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    .line 418
    :cond_12b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_144

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-nez v3, :cond_144

    cmpl-float v3, p1, v4

    if-lez v3, :cond_144

    .line 421
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v0, "disable pull-down on keyguard-normal 0."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_400

    .line 425
    :cond_144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_199

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    if-eqz v3, :cond_199

    cmpl-float v3, p1, v4

    if-lez v3, :cond_199

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v3

    if-eqz v3, :cond_165

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 429
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_16b

    :cond_165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardNormalMode()Z

    move-result v3

    if-eqz v3, :cond_199

    .line 430
    :cond_16b
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIntialPanelHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialTouchY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandedHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_400

    .line 436
    :cond_199
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isInHorizontalEmptyArea(F)Z

    move-result v3

    if-eqz v3, :cond_1b2

    cmpl-float v3, p1, v4

    if-lez v3, :cond_1b2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 437
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v0, "FullyExpanded in isInHorizontalEmptyArea  , disable pull-down"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_400

    .line 445
    :cond_1b2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_20f

    .line 446
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1d1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    if-eqz v3, :cond_20f

    .line 448
    :cond_1d1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 449
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v3, :cond_20f

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v3, :cond_20f

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v3, :cond_20f

    .line 450
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v3, :cond_1ef

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1ef

    .line 451
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    move p1, v4

    .line 454
    :cond_1ef
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 456
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v3

    if-eqz v3, :cond_20c

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_20c

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_20c

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onPullNotificationPanelOnKeyguardShade()V

    .line 461
    :cond_20c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 467
    :cond_20f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 468
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIntialPanelHeight:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_223

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v3, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_255

    :cond_223
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v3, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_255

    .line 469
    :cond_22b
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_24e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isShowingFilterPanel()Z

    move-result v3

    if-eqz v3, :cond_23f

    goto :goto_24e

    :cond_23f
    const/high16 v3, 0x40800000  # 4.0f

    mul-float/2addr v3, p1

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    mul-float/2addr v3, v8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_255

    .line 469
    :cond_24e
    :goto_24e
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v3, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 473
    :goto_255
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_265

    .line 474
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_262

    .line 475
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 477
    :cond_262
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_277

    .line 478
    :cond_265
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v6, :cond_277

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v6, :cond_277

    .line 481
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 482
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 483
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 484
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    :cond_277
    :goto_277
    neg-float p1, p1

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p1, p1, v6

    if-ltz p1, :cond_289

    .line 488
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 489
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    .line 493
    :cond_289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_298

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_298

    .line 494
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 497
    :cond_298
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez p1, :cond_2ad

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_2a4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_2ad

    .line 498
    :cond_2a4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result p1

    if-nez p1, :cond_2ad

    .line 499
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 503
    :cond_2ad
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-nez p1, :cond_400

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_400

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p1

    cmpl-float p1, p1, v8

    if-lez p1, :cond_400

    .line 504
    sget p1, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_400

    sget p1, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    .line 505
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_400

    .line 506
    sget p1, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_400

    .line 513
    :cond_2ec
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 514
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShowing()Z

    move-result p1

    if-nez p1, :cond_400

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-nez p1, :cond_309

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_400

    :cond_309
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_400

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_400

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandFlingAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_323

    .line 517
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_400

    :cond_323
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v8

    cmpl-float p1, v0, p1

    if-lez p1, :cond_400

    .line 518
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 521
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 522
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x43480000  # 200.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 523
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->springAnimListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 524
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->springAnimEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 525
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSpringBackAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto/16 :goto_400

    .line 357
    :cond_379
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 358
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 359
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 362
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_38c

    const/high16 v4, -0x40800000  # -1.0f

    :cond_38c
    cmpl-float v0, v0, v4

    if-nez v0, :cond_392

    move v0, v5

    goto :goto_393

    :cond_392
    move v0, v2

    :goto_393
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 364
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 365
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 369
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3b7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 371
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_3b7

    move v0, v5

    goto :goto_3b8

    :cond_3b7
    move v0, v2

    :goto_3b8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 372
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 373
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_3cd

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3c9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz p1, :cond_3cd

    :cond_3c9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3ec

    .line 375
    :cond_3cd
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3d5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz p1, :cond_3e0

    :cond_3d5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_3e0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_3de

    goto :goto_3e0

    :cond_3de
    move p1, v2

    goto :goto_3e1

    :cond_3e0
    :goto_3e0
    move p1, v5

    :goto_3e1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 381
    :cond_3ec
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_400

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_400

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 382
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    .line 530
    :cond_400
    :goto_400
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_408

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p0, :cond_409

    :cond_408
    move v2, v5

    :cond_409
    return v2

    .line 299
    :cond_40a
    :goto_40a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intercept for mInstantExpanding "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mTouchDisabled "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mMotionAborted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected onTrackingStarted()V
    .registers 2

    .line 671
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 674
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 675
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 665
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onUnlockHintFinished()V
    .registers 1

    .line 1347
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .registers 1

    .line 1351
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .registers 4

    .line 1072
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1074
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 1078
    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_13

    return-void

    .line 1082
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-eqz v1, :cond_1c

    goto :goto_3a

    .line 1086
    :cond_1c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-nez v1, :cond_27

    return-void

    .line 1090
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2f

    const/4 v0, 0x1

    .line 1091
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    .line 1096
    :cond_2f
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_37

    return-void

    .line 1101
    :cond_37
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method protected abstract resetPanelNotificationsScale()V
.end method

.method public resetPeekTouching()V
    .registers 2

    const/4 v0, 0x0

    .line 1713
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    return-void
.end method

.method public abstract resetViews(Z)V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .registers 2

    .line 1189
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setEnablePullDownOnKeyguard(Z)V
    .registers 3

    .line 1572
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    .line 1573
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_e

    const-string p1, "enable"

    goto :goto_10

    :cond_e
    const-string p1, "disable"

    :goto_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pull down on keyguard."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExpandedFraction(F)V
    .registers 3

    .line 1161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .registers 3

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .registers 6

    .line 1105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_14

    .line 1106
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 1108
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    .line 1110
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v3

    sub-float/2addr v0, v3

    .line 1111
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_44

    sub-float v1, p1, v0

    .line 1112
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_38

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    .line 1114
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 1116
    :cond_38
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    goto :goto_52

    .line 1118
    :cond_44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1119
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_52

    sub-float/2addr p1, v0

    .line 1120
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    :cond_52
    :goto_52
    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float v1, v0, v2

    if-nez v1, :cond_59

    goto :goto_5d

    .line 1133
    :cond_59
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float v2, v1, v0

    .line 1132
    :goto_5d
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 1134
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public setFullyCollapsedOnKeyguardShade(Z)V
    .registers 2

    .line 1581
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFullyCollapsedOnKeyguardShade:Z

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .registers 2

    .line 1547
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public setLaunchingNotification(Z)V
    .registers 2

    .line 1551
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .registers 2

    .line 276
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 277
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz p1, :cond_14

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 279
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 282
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_14
    return-void
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldGestureWaitForTouchSlop()Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .registers 3

    .line 287
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 288
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    :cond_15
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .registers 5

    .line 579
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 580
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 581
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    if-eqz p3, :cond_13

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 584
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_13
    return-void
.end method

.method protected startExpandingFromPeek()V
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .registers 2

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 1335
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1337
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$tAljekoGx9mlKIleW6Fmi59MCOs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$tAljekoGx9mlKIleW6Fmi59MCOs;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    const/4 v0, 0x1

    .line 1343
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected touchOnStatusBarInKeyguardShade(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
