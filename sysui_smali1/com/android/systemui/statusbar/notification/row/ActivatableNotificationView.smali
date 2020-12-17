.class public abstract Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field private mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field private mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field protected mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field protected mBgTint:I

.field private mBlockNextTouch:Z

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field private mDimmed:Z

.field private mDimmedAlpha:I

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDrawingAppearAnimation:Z

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFirstInSection:Z

.field private mHeadsUpAddStartLocation:I

.field private mHeadsUpLocation:F

.field private mIsAppearing:Z

.field private mIsBelowSpeedBump:Z

.field private mIsHeadsUpAnimation:Z

.field private mLastInSection:Z

.field private mNeedsDimming:Z

.field private mNormalBackgroundVisibilityAmount:F

.field private mNormalColor:I

.field protected mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

.field private mOverrideAmount:F

.field private mOverrideTint:I

.field private mShadowHidden:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private mTintedRippleColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 96
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, 0x3f000000  # 0.5f

    const/4 v3, 0x0

    const v4, 0x3f19999a  # 0.6f

    invoke-direct {v0, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    const/high16 p2, 0x3f800000  # 1.0f

    .line 108
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    const/high16 v0, -0x40800000  # -1.0f

    .line 131
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 140
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd  # 0.8f

    const v3, 0x3f19999a  # 0.6f

    invoke-direct {v0, v2, v1, v3, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v1, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 171
    const-class p2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 172
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 173
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors()V

    .line 175
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 177
    new-instance p1, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$raBogtwUDgGzree3QaRWS5kgw_g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$raBogtwUDgGzree3QaRWS5kgw_g;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$fZ3qu4yQQcyUWjUQZMAyhFN3cZI;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$fZ3qu4yQQcyUWjUQZMAyhFN3cZI;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;

    invoke-direct {v5, p2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method private calculateBgColor(ZZ)I
    .registers 3

    if-eqz p2, :cond_14

    .line 1008
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    if-eqz p2, :cond_14

    const/4 p2, 0x0

    .line 1009
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p1

    .line 1010
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p0

    return p0

    :cond_14
    if-eqz p1, :cond_1b

    .line 1012
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz p1, :cond_1b

    return p1

    .line 1015
    :cond_1b
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    return p0
.end method

.method private cancelAppearAnimation()V
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 881
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method private cancelFadeAnimations()V
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 725
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 727
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 728
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private enableAppearDrawing(Z)V
    .registers 3

    .line 1035
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_18

    .line 1036
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez p1, :cond_15

    const/high16 p1, 0x3f800000  # 1.0f

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setContentAlpha(F)V

    const/high16 p1, -0x40800000  # -1.0f

    .line 1039
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 p1, 0x0

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 1042
    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_18
    return-void
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_b

    .line 344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method private initDimens()V
    .registers 3

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpAddStartLocation:I

    return-void
.end method

.method private isTouchExplorationEnabled()Z
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method private makeActive()V
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_13

    .line 362
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :cond_13
    return-void
.end method

.method private setContentAlpha(F)V
    .registers 4

    .line 950
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object p0

    .line 951
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_18

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 954
    :goto_19
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v0, :cond_23

    const/4 v1, 0x0

    .line 956
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 959
    :cond_23
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startActivateAnimation(Z)V
    .registers 10

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 370
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 373
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 375
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_33

    .line 378
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_39

    .line 381
    :cond_33
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-static {v4, v0, v1, v3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 384
    :goto_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_45

    .line 388
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, v1

    goto :goto_49

    .line 391
    :cond_45
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 392
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 394
    :goto_49
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xdc

    .line 395
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_66

    .line 397
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_71

    .line 406
    :cond_66
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v7, 0x3ecccccd  # 0.4f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 407
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 409
    :goto_71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_7a

    move v1, v3

    .line 410
    :cond_7a
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 422
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 12

    .line 802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 803
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 804
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float p2, p2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_23

    if-eqz p1, :cond_1f

    .line 807
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 808
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_23

    .line 810
    :cond_1f
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 811
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 814
    :cond_23
    :goto_23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsAppearing:Z

    if-eqz p1, :cond_30

    .line 818
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 819
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_39

    .line 822
    :cond_30
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 823
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    move v0, v1

    :goto_39
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 826
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    aput v2, p2, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 828
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float p5, p5

    iget p6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr p6, v0

    .line 830
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p6

    mul-float/2addr p5, p6

    float-to-long p5, p5

    .line 829
    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 831
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p8, :cond_71

    .line 841
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_71
    const-wide/16 p5, 0x0

    cmp-long p2, p3, p5

    if-lez p2, :cond_82

    .line 845
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearRect()V

    .line 847
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 849
    :cond_82
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;

    invoke-direct {p3, p0, p7, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 873
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateAppearAnimationAlpha()V
    .registers 3

    .line 942
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v0, v1

    .line 944
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 945
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 946
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setContentAlpha(F)V

    return-void
.end method

.method private updateAppearRect()V
    .registers 10

    .line 892
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v0, v1, v0

    .line 893
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 894
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v2, v3

    .line 895
    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    const/4 v3, 0x0

    sub-float/2addr v0, v3

    const v4, 0x3f4ccccd  # 0.8f

    div-float v4, v0, v4

    .line 900
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 901
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 903
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz v5, :cond_30

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsAppearing:Z

    if-nez v5, :cond_30

    move v5, v3

    goto :goto_33

    :cond_30
    const v5, 0x3d4ccccd  # 0.05f

    :goto_33
    sub-float v4, v1, v4

    .line 906
    invoke-static {v5, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 907
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 910
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz v6, :cond_4b

    .line 911
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    invoke-static {v6, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    add-float/2addr v5, v4

    goto :goto_5d

    .line 914
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f000000  # 0.5f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 915
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    :goto_5d
    div-float/2addr v0, v1

    .line 921
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 922
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 926
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v6

    .line 927
    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v3, v7, v3

    const v8, 0x3dcccccd  # 0.1f

    if-lez v3, :cond_7c

    int-to-float v1, v6

    mul-float/2addr v7, v0

    mul-float/2addr v7, v8

    sub-float/2addr v1, v7

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_88

    :cond_7c
    int-to-float v3, v6

    add-float/2addr v7, v3

    mul-float/2addr v7, v0

    mul-float/2addr v7, v8

    sub-float v2, v7, v2

    sub-float/2addr v1, v0

    mul-float/2addr v3, v1

    mul-float/2addr v0, v2

    add-float v1, v3, v0

    move v0, v2

    .line 936
    :goto_88
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 937
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v4, v0, v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    return-void
.end method

.method private updateBackgroundTint(Z)V
    .registers 4

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 578
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 580
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getRippleColor()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    if-nez p1, :cond_24

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    goto :goto_5f

    .line 589
    :cond_24
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, p1, :cond_5f

    .line 590
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    .line 591
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 592
    fill-array-data p1, :array_60

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 593
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 601
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 602
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 603
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5f
    :goto_5f
    return-void

    :array_60
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private updateColors()V
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    .line 189
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_ripple_tinted_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    .line 191
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_ripple_untinted_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    .line 193
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_material_background_dimmed_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedAlpha:I

    return-void
.end method

.method private updateHeadsupBg()V
    .registers 6

    .line 1143
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_panel_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1144
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_bg_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1145
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->heads_up_bg_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1146
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result v3

    .line 1147
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    .line 1148
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1151
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1152
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v0, v0

    .line 1153
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateShowingLayoutTranslation()V

    return-void
.end method

.method private updateOutlineAlpha()V
    .registers 2

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineAlpha(F)V

    return-void
.end method

.method private updateShowingLayoutTranslation()V
    .registers 3

    .line 1164
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_bg_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setTranslationY(F)V

    goto :goto_29

    .line 1169
    :cond_21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setTranslationY(F)V

    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method protected applyBackgroundRoundness(FF)V
    .registers 4

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    .line 973
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    .line 974
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    return-void
.end method

.method protected applyRoundness()V
    .registers 3

    .line 964
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    .line 965
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    .line 966
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v1

    .line 965
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyBackgroundRoundness(FF)V

    return-void
.end method

.method public calculateBgColor()I
    .registers 2

    const/4 v0, 0x1

    .line 991
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p0

    return p0
.end method

.method public cancelAppearDrawing()V
    .registers 2

    .line 887
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearAnimation()V

    const/4 v0, 0x0

    .line 888
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .registers 3

    .line 996
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 999
    :cond_c
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1052
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_d

    .line 1053
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 1054
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1056
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1057
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz p0, :cond_17

    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_9

    .line 323
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    :cond_9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 329
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_11

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    goto :goto_1a

    .line 333
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    :goto_1a
    return-void
.end method

.method public getBackgroundColorWithoutTint()I
    .registers 2

    const/4 v0, 0x0

    .line 1083
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p0

    return p0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method public getCurrentBackgroundTint()I
    .registers 1

    .line 1087
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    return p0
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .registers 1

    .line 1103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method protected getRippleColor()I
    .registers 2

    .line 1020
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_7

    .line 1021
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    return p0

    .line 1023
    :cond_7
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    return p0
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleSlideBack()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected initBackground()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget v1, Lcom/android/systemui/R$drawable;->notification_bg_transparent_state:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget v1, Lcom/android/systemui/R$drawable;->notification_bg_transparent_state:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget v1, Lcom/android/systemui/R$drawable;->mz_notification_bg:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget v0, Lcom/android/systemui/R$drawable;->notification_flyme_bg_headsup:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    return-void
.end method

.method public isBelowSpeedBump()Z
    .registers 1

    .line 495
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    return p0
.end method

.method public isDimmable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isDrawingAppearAnimation()Z
    .registers 1

    .line 1047
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    return p0
.end method

.method public isFirstInSection()Z
    .registers 1

    .line 527
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    return p0
.end method

.method public isHeadsUpAnimatingAway()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isInExpandButtonArea(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isLastInSection()Z
    .registers 1

    .line 523
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    return p0
.end method

.method public isPinned()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$ActivatableNotificationView(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeActive()V

    goto :goto_a

    :cond_6
    const/4 p1, 0x1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :goto_a
    return-void
.end method

.method public synthetic lambda$new$1$ActivatableNotificationView()Z
    .registers 1

    .line 183
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public makeInactive(Z)V
    .registers 3

    .line 429
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 431
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_15

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 433
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V

    goto :goto_15

    .line 435
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 439
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    if-eqz p1, :cond_1c

    .line 440
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 442
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAppearAnimationFinished(Z)V
    .registers 2

    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .registers 1

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1138
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateHeadsupBg()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 204
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onDensityOrFontScaleChanged()V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initDimens()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 217
    sget v0, Lcom/android/systemui/R$id;->backgroundNormal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 218
    sget v0, Lcom/android/systemui/R$id;->fake_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    .line 223
    sget v0, Lcom/android/systemui/R$id;->backgroundDimmed:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 225
    sget v0, Lcom/android/systemui/R$id;->backgroundFlyme:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 226
    sget v0, Lcom/android/systemui/R$id;->backgroundFlymeHeadsup:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_30

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInExpandButtonArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_22

    return v1

    .line 270
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 271
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    return v1

    .line 276
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 733
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onLayout(ZIIII)V

    .line 734
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    return p1

    .line 298
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_35

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInExpandButtonArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    .line 305
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 308
    :cond_35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_39
    :goto_39
    return v1
.end method

.method public performAddAnimation(JJZ)V
    .registers 16

    const/4 v0, 0x1

    .line 790
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 791
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    .line 792
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpAddStartLocation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    .line 793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1f

    const/4 v2, 0x1

    if-eqz p5, :cond_14

    const/4 p5, 0x0

    goto :goto_16

    :cond_14
    const/high16 p5, -0x40800000  # -1.0f

    :goto_16
    move v3, p5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 794
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1f
    return-void
.end method

.method public performClick()Z
    .registers 2

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    .line 352
    :cond_d
    :goto_d
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .registers 19

    move-object v0, p0

    const/4 v1, 0x1

    .line 776
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    move v1, p6

    .line 777
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    move/from16 v1, p7

    .line 778
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    .line 779
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p5

    move-wide v3, p3

    move-wide v5, p1

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 780
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_22

    :cond_1d
    if-eqz p8, :cond_22

    .line 783
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_22
    :goto_22
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected resetBackgroundAlpha()V
    .registers 2

    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .registers 3

    .line 739
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 740
    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 741
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 742
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 744
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 746
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateHeadsupBg()V

    return-void
.end method

.method protected setBackgroundTintColor(I)V
    .registers 3

    .line 614
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_1f

    .line 615
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    .line 616
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_b

    const/4 p1, 0x0

    .line 620
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 624
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    :cond_1f
    return-void
.end method

.method protected setBackgroundTop(I)V
    .registers 3

    .line 980
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    .line 984
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    return-void
.end method

.method public setBackgroundVisible(Z)V
    .registers 3

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, 0x4

    :goto_d
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .registers 3

    .line 480
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 481
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_f

    .line 482
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onBelowSpeedBumpChanged()V

    :cond_f
    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 3

    .line 763
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipBottomAmount(I)V

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 768
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 3

    .line 752
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 757
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    return-void
.end method

.method public setDimmed(ZZ)V
    .registers 3

    .line 446
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result p2

    and-int/2addr p1, p2

    .line 448
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eq p2, p1, :cond_d

    .line 449
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    :cond_d
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .registers 3

    .line 517
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setDistanceToTopRoundness(F)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDistanceToTopRoundness(F)V

    .line 519
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDistanceToTopRoundness(F)V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .registers 7

    .line 1073
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 1074
    :goto_a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    .line 1075
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v1, :cond_12

    if-nez v0, :cond_20

    .line 1076
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result p0

    const v1, 0x3dcccccd  # 0.1f

    add-float/2addr p0, v1

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    :cond_20
    return-void
.end method

.method public setFirstInSection(Z)V
    .registers 3

    .line 541
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    if-eq p1, v0, :cond_10

    .line 542
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setFirstInSection(Z)V

    .line 544
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setFirstInSection(Z)V

    :cond_10
    return-void
.end method

.method public setLastInSection(Z)V
    .registers 3

    .line 532
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    if-eq p1, v0, :cond_10

    .line 533
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setLastInSection(Z)V

    .line 535
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setLastInSection(Z)V

    :cond_10
    return-void
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .registers 2

    .line 474
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V
    .registers 2

    .line 1063
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    return-void
.end method

.method public setOverrideTintColor(IF)V
    .registers 4

    .line 559
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    .line 560
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result p1

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result p1

    if-nez p1, :cond_25

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz p1, :cond_25

    .line 564
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/high16 v0, 0x437f0000  # 255.0f

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedAlpha:I

    int-to-float p0, p0

    invoke-static {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    goto :goto_2c

    .line 568
    :cond_25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    :goto_2c
    return-void
.end method

.method public setRippleAllowed(Z)V
    .registers 2

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setPressedAllowed(Z)V

    return-void
.end method

.method public setTintColor(I)V
    .registers 3

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(IZ)V

    return-void
.end method

.method public setTintColor(IZ)V
    .registers 4

    .line 509
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eq p1, v0, :cond_9

    .line 510
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 511
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    :cond_9
    return-void
.end method

.method protected shouldHideBackground()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected updateBackground()V
    .registers 7

    .line 690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 691
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1e

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    .line 694
    :cond_1e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_44

    .line 697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    move v0, v2

    .line 698
    :goto_31
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_40

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :cond_40
    :goto_40
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    .line 703
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 708
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    .line 711
    :goto_5b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_64

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    .line 710
    :goto_65
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    return-void
.end method

.method public updateBackground(ZZ)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_13

    .line 1125
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz p2, :cond_f

    move v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 1128
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlyme:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result p2

    if-eqz p2, :cond_1c

    move v0, v1

    :cond_1c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundFlymeHeadsup:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :goto_24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateShowingLayoutTranslation()V

    return-void
.end method

.method protected updateBackgroundAlpha(F)V
    .registers 3

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_d
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 679
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 680
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 682
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected updateBackgroundClipping()V
    .registers 5

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    return-void
.end method

.method protected updateBackgroundColors()V
    .registers 1

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors()V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method protected updateBackgroundTint()V
    .registers 2

    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    return-void
.end method
