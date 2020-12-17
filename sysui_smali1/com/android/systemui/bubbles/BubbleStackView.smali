.class public Lcom/android/systemui/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "BubbleStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field static final FLYOUT_HIDE_AFTER:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAfterFlyoutHides:Ljava/lang/Runnable;

.field private final mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mAfterMagnet:Ljava/lang/Runnable;

.field private mAnimateInFlyout:Ljava/lang/Runnable;

.field private mAnimatingMagnet:Z

.field private mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

.field private mBubblePaddingTop:I

.field private mBubbleSize:I

.field private mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBubbleTouchPadding:I

.field private mClippingParameters:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private final mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

.field private final mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

.field private mDesaturateAndDarkenTargetView:Landroid/view/View;

.field private mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDraggingInDismissTarget:Z

.field private mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private mExpandedAnimateXDistance:I

.field private mExpandedAnimateYDistance:I

.field private mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field private mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mExpandedViewContainer:Landroid/widget/FrameLayout;

.field private mExpandedViewPadding:I

.field private final mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

.field private final mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private mFlyoutDragDeltaX:F

.field private final mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mHideFlyout:Ljava/lang/Runnable;

.field private mImeOffset:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsExpanded:Z

.field private mIsExpansionAnimating:Z

.field private mIsGestureInProgress:Z

.field private mOrientation:I

.field private mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPointerHeight:I

.field private mShowingDismiss:Z

.field private mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field private mStackOnLeftOrWillBe:Z

.field private mStatusBarHeight:I

.field private final mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field private mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTempLoc:[I

.field mTempRect:Landroid/graphics/RectF;

.field private mTouchHandler:Lcom/android/systemui/bubbles/BubbleTouchHandler;

.field private mVerticalPosPercentBeforeRotation:F

.field private final mVibrator:Landroid/os/Vibrator;

.field private mViewUpdatedRequested:Z

.field private mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mWasOnLeftBeforeRotation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lcom/android/systemui/bubbles/BubbleStackView$1;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/BubbleStackView$1;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;)V
    .registers 10
    .param p3  # Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 320
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$jXS10HgKCVgyvjX1UcSgdO2D_ug;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$jXS10HgKCVgyvjX1UcSgdO2D_ug;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    const/high16 v1, -0x40800000  # -1.0f

    .line 182
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    .line 198
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 218
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    .line 230
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 238
    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    .line 239
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/RectF;

    .line 241
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 243
    new-instance v2, Lcom/android/systemui/bubbles/BubbleStackView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$2;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 254
    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$c-OiserdP7VIvU56hCAARnBncEE;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$c-OiserdP7VIvU56hCAARnBncEE;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 257
    new-instance v2, Lcom/android/systemui/bubbles/BubbleStackView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$3;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mClippingParameters:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 272
    new-instance v2, Lcom/android/systemui/bubbles/BubbleStackView$4;

    const-string v3, "FlyoutCollapseSpring"

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/bubbles/BubbleStackView$4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 286
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    .line 290
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 301
    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$qNTN7f0ovKQkRVyENDOFd8Z5ydA;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$qNTN7f0ovKQkRVyENDOFd8Z5ydA;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 316
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    const/4 v2, 0x0

    .line 1161
    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    .line 322
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 323
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 324
    new-instance v2, Lcom/android/systemui/bubbles/BubbleTouchHandler;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleData;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTouchHandler:Lcom/android/systemui/bubbles/BubbleTouchHandler;

    .line 325
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTouchHandler:Lcom/android/systemui/bubbles/BubbleTouchHandler;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 328
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 329
    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    .line 330
    sget v2, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    .line 331
    sget v2, Lcom/android/systemui/R$dimen;->bubble_touch_padding:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    .line 332
    sget v2, Lcom/android/systemui/R$dimen;->bubble_expanded_animate_x_distance:I

    .line 333
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateXDistance:I

    .line 334
    sget v2, Lcom/android/systemui/R$dimen;->bubble_expanded_animate_y_distance:I

    .line 335
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateYDistance:I

    .line 336
    sget v2, Lcom/android/systemui/R$dimen;->bubble_pointer_height:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerHeight:I

    const v2, 0x105020f

    .line 339
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    .line 340
    sget v2, Lcom/android/systemui/R$dimen;->pip_ime_offset:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeOffset:I

    .line 342
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    const-string/jumbo v2, "window"

    .line 343
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 345
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string/jumbo v2, "vibrator"

    .line 347
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVibrator:Landroid/os/Vibrator;

    .line 349
    sget v2, Lcom/android/systemui/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 350
    sget v2, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 352
    new-instance v3, Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-direct {v3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 354
    new-instance v3, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 355
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v3, v4, v5, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;-><init>(Landroid/graphics/Point;II)V

    iput-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    if-eqz p3, :cond_11f

    goto :goto_121

    .line 356
    :cond_11f
    sget-object p3, Lcom/android/systemui/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    :goto_121
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    .line 358
    new-instance p2, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 359
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 360
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    int-to-float p3, v2

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 361
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 362
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance p2, Lcom/android/systemui/bubbles/BubbleIconFactory;

    invoke-direct {p2, p1}, Lcom/android/systemui/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    .line 366
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 367
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 368
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 370
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpFlyout()V

    .line 374
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p3, 0x43480000  # 200.0f

    .line 375
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f400000  # 0.75f

    .line 376
    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 374
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 377
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 379
    new-instance p1, Lcom/android/systemui/bubbles/BubbleDismissView;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/bubbles/BubbleDismissView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    .line 380
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->pip_dismiss_gradient_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x50

    invoke-direct {p2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 380
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 386
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, p2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 388
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 390
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 391
    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 388
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 393
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, p2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 395
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 397
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 398
    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 395
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 399
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pASZEuVtfFyo-FF2s4CpK8srlzg;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pASZEuVtfFyo-FF2s4CpK8srlzg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 405
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 p1, 0x1

    .line 406
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 409
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$JEhiIzPncR72OLevX_9noDIsyDo;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$JEhiIzPncR72OLevX_9noDIsyDo;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 420
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$zB8p0_cj-tonbCXvIH4kDoBtabk;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$zB8p0_cj-tonbCXvIH4kDoBtabk;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    .line 465
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 467
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 468
    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    new-array p3, v1, [F

    .line 470
    fill-array-data p3, :array_232

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    .line 471
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$nTtH9EoKZ3I47Rp-Pl0BGULUUeI;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$nTtH9EoKZ3I47Rp-Pl0BGULUUeI;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_232
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedView()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleStackView;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleStackView;)F
    .registers 1

    .line 87
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    return-void
.end method

.method private afterExpandedViewAnimation()V
    .registers 2

    .line 960
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedView()V

    const/4 v0, 0x0

    .line 961
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 962
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    return-void
.end method

.method private animateCollapse()V
    .registers 5

    const/4 v0, 0x0

    .line 966
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 967
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 968
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    .line 970
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimations()V

    .line 971
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 972
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPositionAlongNearestHorizontalEdge()Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$iPZOxogmUqIzaWGRGN6BsKfV7Ys;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$iPZOxogmUqIzaWGRGN6BsKfV7Ys;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)V

    .line 971
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 980
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getCollapsedX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getCollapsedY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 982
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 983
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateDesaturateAndDarken(Landroid/view/View;Z)V
    .registers 4

    .line 1208
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-eqz p2, :cond_17

    .line 1212
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1214
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1215
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2b

    .line 1217
    :cond_17
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1218
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/bubbles/BubbleStackView$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$5;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1226
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_2b
    return-void
.end method

.method private animateExpansion()V
    .registers 3

    const/4 v0, 0x1

    .line 988
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 989
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 992
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$vo_7qhVTGBrVaeUfzKm3qxH9Tbg;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$vo_7qhVTGBrVaeUfzKm3qxH9Tbg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 998
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getCollapsedX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 999
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getCollapsedY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1004
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 1005
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 1006
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateFlyoutCollapsed(ZF)V
    .registers 6

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    .line 1369
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1370
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v2, :cond_14

    const v2, 0x44bb8000  # 1500.0f

    goto :goto_16

    :cond_14
    const/high16 v2, 0x43480000  # 200.0f

    .line 1369
    :goto_16
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1373
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 1374
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1375
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_34

    .line 1377
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    if-eqz v0, :cond_32

    neg-int p0, p0

    :cond_32
    int-to-float p0, p0

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    .line 1376
    :goto_35
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private beforeExpandedViewAnimation()V
    .registers 2

    .line 953
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 954
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 955
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedView()V

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    return-void
.end method

.method private getCollapsedX()F
    .registers 3

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 1011
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateXDistance:I

    neg-int p0, p0

    goto :goto_19

    .line 1012
    :cond_17
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateXDistance:I

    :goto_19
    int-to-float p0, p0

    return p0
.end method

.method private getCollapsedY()F
    .registers 2

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateYDistance:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getStatusBarHeight()I
    .registers 4

    .line 1532
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 1533
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1534
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    .line 1536
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1537
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 1534
    :cond_1b
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_20
    return v1
.end method

.method private hideDismissTarget()V
    .registers 2

    .line 1351
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    if-nez v0, :cond_5

    return-void

    .line 1355
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->springOut()V

    const/4 v0, 0x0

    .line 1356
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    return-void
.end method

.method private hideFlyoutImmediate()V
    .registers 3

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 1501
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1504
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1506
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->hideFlyout()V

    return-void
.end method

.method private isIntersecting(Landroid/view/View;FF)Z
    .registers 10

    .line 1545
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    .line 1546
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v5, v5

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    aget v2, v2, v4

    .line 1547
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    .line 1546
    invoke-virtual {v0, v3, v5, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1548
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$c-OiserdP7VIvU56hCAARnBncEE(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method private logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V
    .registers 28
    .param p1  # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_48

    .line 1685
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1686
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_11

    goto :goto_48

    .line 1700
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/16 v1, 0x95

    .line 1702
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1703
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 1704
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 1705
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v5

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v6

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v8

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v9

    .line 1710
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/bubbles/Bubble;->showInShadeWhenBubble()Z

    move-result v10

    .line 1711
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v11

    const/4 v12, 0x0

    move/from16 v7, p2

    .line 1701
    invoke-static/range {v1 .. v12}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    goto :goto_67

    :cond_48
    :goto_48
    const/16 v13, 0x95

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v18

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v20

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v19, p2

    .line 1687
    invoke-static/range {v13 .. v24}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    :goto_67
    return-void
.end method

.method private notifyExpansionChanged(Lcom/android/systemui/bubbles/Bubble;Z)V
    .registers 3

    .line 1021
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 1022
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method private requestUpdate()V
    .registers 3

    .line 1552
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_9
    const/4 v0, 0x1

    .line 1555
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 1556
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1557
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_18
    :goto_18
    return-void
.end method

.method private resetDesaturationAndDarken()V
    .registers 3

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private setUpFlyout()V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    if-eqz v0, :cond_7

    .line 493
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 495
    :cond_7
    new-instance v0, Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 498
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 499
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private springInDismissTarget()V
    .registers 2

    .line 1334
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1338
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->springIn()V

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1343
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    const v0, 0x46fffc00  # 32766.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setZ(F)V

    return-void
.end method

.method private updateBubbleZOrdersAndDotPosition(Z)V
    .registers 7

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_36

    .line 1603
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/BubbleView;

    const/4 v3, 0x1

    .line 1604
    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    .line 1606
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v3, v1

    int-to-float v3, v3

    .line 1605
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setZ(F)V

    .line 1608
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleView;->getDotPositionOnLeft()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-ne v3, v4, :cond_33

    xor-int/lit8 v3, v4, 0x1

    .line 1609
    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/bubbles/BubbleView;->setDotPosition(ZZ)V

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_36
    return-void
.end method

.method private updateExpandedBubble()V
    .registers 3

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1565
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_33

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_33

    .line 1566
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->populateExpandedView()V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    goto :goto_29

    :cond_27
    const/16 v1, 0x8

    :goto_29
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1569
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_33
    return-void
.end method

.method private updateExpandedView()V
    .registers 4

    .line 1578
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_b

    :cond_9
    const/16 v1, 0x8

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1579
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_3b

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    .line 1583
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v0

    .line 1584
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1586
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    goto :goto_3b

    .line 1591
    :cond_36
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1595
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 1596
    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleZOrdersAndDotPosition(Z)V

    return-void
.end method

.method private updatePointerPosition()V
    .registers 5

    .line 1619
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1624
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v1

    .line 1625
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v1

    .line 1626
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1629
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 1631
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setPointerPosition(F)V

    return-void
.end method

.method private updateSystemGestureExcludeRects()V
    .registers 7

    .line 658
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 659
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_43

    .line 660
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 662
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 661
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 663
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 664
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 663
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_4f

    .line 667
    :cond_43
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 668
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_4f
    return-void
.end method


# virtual methods
.method addBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 8

    .line 741
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 742
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 745
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/bubbles/Bubble;->inflate(Landroid/view/LayoutInflater;Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 746
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->setBubbleIconFactory(Lcom/android/systemui/bubbles/BubbleIconFactory;)V

    .line 747
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    .line 751
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/bubbles/BubbleView;->setDotPosition(ZZ)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 756
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mClippingParameters:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    .line 759
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->getUpdateMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1405
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showFlyoutForBubble()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 1407
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressFlyout(Z)V

    return-void

    :cond_13
    if-eqz v0, :cond_71

    .line 1412
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_71

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v1, :cond_71

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v1, :cond_28

    goto :goto_71

    .line 1421
    :cond_28
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 1423
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    .line 1426
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 1427
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 1429
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    if-eqz v1, :cond_47

    .line 1430
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1433
    :cond_47
    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Vnx81abGMMclYnqAiYuaTg3EgOw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Vnx81abGMMclYnqAiYuaTg3EgOw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    .line 1456
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1459
    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1493
    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x10

    .line 1495
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    :cond_71
    :goto_71
    return-void
.end method

.method animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V
    .registers 14

    .line 1242
    iput-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_34

    .line 1246
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p3}, Lcom/android/systemui/bubbles/BubbleDismissView;->getDismissTargetCenterY()F

    move-result p3

    iget p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float p4, p4

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p4, v1

    sub-float v5, p3, p4

    const/4 p3, 0x1

    .line 1248
    iput-boolean p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1250
    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$oLhNqxGbPa3FqJeraIwHlBcS7tk;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$oLhNqxGbPa3FqJeraIwHlBcS7tk;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    if-ne p1, p0, :cond_28

    .line 1258
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1, p5, p6, v5, v6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->magnetToDismiss(FFFLjava/lang/Runnable;)V

    .line 1259
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    goto :goto_4b

    .line 1261
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-object v2, p1

    move v3, p5

    move v4, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->magnetBubbleToDismiss(Landroid/view/View;FFFLjava/lang/Runnable;)V

    .line 1264
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    goto :goto_4b

    .line 1267
    :cond_34
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    if-ne p1, p0, :cond_43

    .line 1270
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->demagnetizeFromDismissToPoint(FFFF)V

    .line 1271
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    goto :goto_4b

    .line 1273
    :cond_43
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->demagnetizeBubbleTo(FFFF)V

    .line 1274
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    .line 1278
    :goto_4b
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVibrator:Landroid/os/Vibrator;

    if-eqz p2, :cond_50

    goto :goto_51

    :cond_50
    const/4 v0, 0x2

    :goto_51
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method collapseStack()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 919
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method collapseStack(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack()V

    .line 933
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "Stack view state:"

    .line 205
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  gestureInProgress:    "

    .line 206
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showingDismiss:       "

    .line 207
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isExpansionAnimating: "

    .line 208
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  draggingInDismiss:    "

    .line 209
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  animatingMagnet:      "

    .line 210
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;)V
    .registers 4

    .line 1511
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_2d

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_16

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1516
    :cond_16
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1517
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1518
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1519
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_32

    .line 1521
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1524
    :goto_32
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_47

    .line 1525
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1526
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1527
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_47
    return-void
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 3

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBubbleCount()I
    .registers 1

    .line 1638
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I
    .registers 2
    .param p1  # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1652
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;
    .registers 1

    .line 716
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method getExpandedBubbleView()Lcom/android/systemui/bubbles/BubbleView;
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method getExpandedViewY()F
    .registers 3

    .line 1395
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStatusBarHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerHeight:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method getFlyoutView()Landroid/view/View;
    .registers 1

    .line 903
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    return-object p0
.end method

.method public getNormalizedXPosition()F
    .registers 4

    .line 1659
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    .line 1660
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 1661
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getNormalizedYPosition()F
    .registers 4

    .line 1668
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    .line 1669
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 1670
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .registers 1

    .line 1674
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getTargetView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 879
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_43

    .line 880
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    move v1, v2

    .line 882
    :goto_16
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 883
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/BubbleView;

    .line 884
    invoke-direct {p0, v3, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_2d

    return-object v3

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 889
    :cond_30
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleExpandedView;

    float-to-int v0, v0

    float-to-int p1, p1

    .line 890
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->intersectingTouchableContent(II)Z

    move-result p1

    if-eqz p1, :cond_41

    return-object p0

    :cond_41
    const/4 p0, 0x0

    return-object p0

    .line 895
    :cond_43
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 896
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    :cond_55
    return-object p0
.end method

.method public isExpanded()Z
    .registers 1

    .line 695
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method public isExpansionAnimating()Z
    .registers 1

    .line 702
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    return p0
.end method

.method isInDismissTarget(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->getDismissTarget()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$animateCollapse$9$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4

    .line 975
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 976
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    const/4 p0, 0x0

    .line 977
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/Bubble;->setContentVisibility(Z)V

    return-void
.end method

.method public synthetic lambda$animateExpansion$10$BubbleStackView()V
    .registers 1

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 994
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$15$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 6

    .line 1434
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showBubbleDot()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 1438
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    .line 1445
    :cond_10
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    .line 1449
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p1, :cond_28

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 1451
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    const/4 p1, 0x0

    .line 1452
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    :cond_28
    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$16$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1469
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    .line 1472
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1473
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_24

    .line 1474
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    :goto_24
    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 p1, 0x0

    .line 1475
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    .line 1476
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$17$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4

    .line 1467
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    .line 1479
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$18$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Ljava/lang/CharSequence;)V
    .registers 13

    .line 1462
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1466
    :cond_7
    new-instance v7, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$fCrWIsrhQL7AP_8UuthVwv4qwM8;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$fCrWIsrhQL7AP_8UuthVwv4qwM8;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)V

    .line 1482
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 1483
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 1484
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v5

    .line 1485
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleView;->getBadgeColor()I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    .line 1488
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleView;->getDotCenter()[F

    move-result-object v9

    move-object v2, p2

    .line 1482
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setupFlyoutStartingAsDot(Ljava/lang/CharSequence;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[F)V

    .line 1489
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public synthetic lambda$animateMagnetToDismissTarget$11$BubbleStackView()V
    .registers 2

    const/4 v0, 0x0

    .line 1251
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1252
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    .line 1253
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public synthetic lambda$magnetToStackIfNeededThenAnimateDismissal$12$BubbleStackView(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 1300
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1301
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 1302
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    .line 1303
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1304
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    return-void
.end method

.method public synthetic lambda$magnetToStackIfNeededThenAnimateDismissal$13$BubbleStackView(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 1308
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1309
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 1310
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    .line 1311
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    .line 1312
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$magnetToStackIfNeededThenAnimateDismissal$14$BubbleStackView(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    .line 1291
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->springOut()V

    if-ne p1, p0, :cond_1f

    .line 1298
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    new-instance p3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->implodeStack(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 1307
    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6IgSc7n-WF13kFj8_shFyg558sU;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6IgSc7n-WF13kFj8_shFyg558sU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dismissDraggedOutBubble(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_29
    return-void
.end method

.method public synthetic lambda$new$0$BubbleStackView()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method public synthetic lambda$new$1$BubbleStackView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 303
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_11

    .line 304
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 306
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->hideFlyout()V

    :goto_16
    return-void
.end method

.method public synthetic lambda$new$2$BubbleStackView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    .line 400
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_f

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    :cond_f
    return-void
.end method

.method public synthetic lambda$new$3$BubbleStackView(Landroid/view/WindowInsets;)V
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public synthetic lambda$new$4$BubbleStackView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_18

    .line 413
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$SGgilPVMr7ds9JBrPWP0ZRoSeUQ;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$SGgilPVMr7ds9JBrPWP0ZRoSeUQ;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/WindowInsets;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateYPosition(Ljava/lang/Runnable;)V

    .line 417
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    .line 411
    :cond_18
    :goto_18
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$5$BubbleStackView()V
    .registers 1

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method public synthetic lambda$new$6$BubbleStackView(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 422
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateOrientation(ILandroid/graphics/Point;)V

    .line 423
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->updateOrientation(I)V

    .line 426
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_26

    .line 427
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 428
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    .line 432
    :cond_26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 433
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    if-eqz p1, :cond_54

    .line 439
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3e

    .line 441
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p4

    .line 442
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p3

    goto :goto_3f

    :cond_3e
    move p3, p4

    .line 445
    :goto_3f
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/2addr p4, p2

    .line 446
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p2, p1

    move p1, p2

    move p2, p4

    goto :goto_55

    :cond_54
    move p1, p2

    .line 448
    :goto_55
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-virtual {p3, p2, p4, p1, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 451
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_6a

    .line 453
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance p2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$BhIZ4rN3xHvYX6KiS0mXLMuJu-g;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$BhIZ4rN3xHvYX6KiS0mXLMuJu-g;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 457
    :cond_6a
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_78

    .line 458
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-boolean p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackToSimilarPositionAfterRotation(ZF)V

    .line 461
    :cond_78
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public synthetic lambda$new$7$BubbleStackView(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 472
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 473
    invoke-virtual {p1, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float p3, v0, p3

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr p3, v1

    sub-float p3, v0, p3

    .line 476
    invoke-virtual {p2, p3, p3, p3, v0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 483
    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 486
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 487
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic lambda$setSelectedBubble$8$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 819
    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->setContentVisibility(Z)V

    .line 821
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 822
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 823
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v1, 0x4

    .line 824
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    const/4 v1, 0x3

    .line 825
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 826
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/bubbles/Bubble;Z)V

    const/4 p1, 0x1

    .line 827
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/bubbles/Bubble;Z)V

    return-void
.end method

.method magnetToStackIfNeededThenAnimateDismissal(Landroid/view/View;FFLjava/lang/Runnable;)V
    .registers 14

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object v0

    .line 1290
    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;

    invoke-direct {v1, p0, p1, p4, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1317
    iget-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    if-eqz p4, :cond_12

    .line 1320
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    goto :goto_28

    .line 1321
    :cond_12
    iget-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    if-eqz p4, :cond_1a

    .line 1324
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    :cond_1a
    const/4 v4, 0x1

    const/high16 v5, -0x40800000  # -1.0f

    const/high16 v6, -0x40800000  # -1.0f

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    move v8, p3

    .line 1327
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/bubbles/BubbleStackView;->animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V

    .line 1328
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    :goto_28
    return-void
.end method

.method public onBubbleDragFinish(Landroid/view/View;FFFF)V
    .registers 6

    .line 1067
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p2, :cond_11

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz p2, :cond_9

    goto :goto_11

    .line 1071
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p2, p1, p4, p5}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    .line 1072
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideDismissTarget()V

    :cond_11
    :goto_11
    return-void
.end method

.method public onBubbleDragStart(Landroid/view/View;)V
    .registers 2

    .line 1047
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->prepareForBubbleDrag(Landroid/view/View;)V

    return-void
.end method

.method public onBubbleDragged(Landroid/view/View;FF)V
    .registers 5

    .line 1052
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1056
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dragBubbleOut(Landroid/view/View;FF)V

    .line 1057
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springInDismissTarget()V

    :cond_11
    :goto_11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 548
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 549
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method onDragFinish(FFFF)V
    .registers 5

    .line 1104
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez p2, :cond_25

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz p2, :cond_9

    goto :goto_25

    .line 1108
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x7

    .line 1109
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-gtz p1, :cond_1c

    move p1, p2

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 1112
    :goto_1d
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 1113
    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleZOrdersAndDotPosition(Z)V

    .line 1114
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideDismissTarget()V

    :cond_25
    :goto_25
    return-void
.end method

.method onDragStart()V
    .registers 3

    .line 1079
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_1b

    .line 1083
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimations()V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 1085
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    const/4 v0, 0x0

    .line 1087
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    :cond_1b
    :goto_1b
    return-void
.end method

.method onDragged(FF)V
    .registers 4

    .line 1091
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1095
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springInDismissTarget()V

    .line 1096
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackFromTouch(FF)V

    :cond_11
    :goto_11
    return-void
.end method

.method onFlyoutDragFinished(FF)V
    .registers 9

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const/high16 v3, -0x3b060000  # -2000.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_19

    goto :goto_17

    :cond_11
    const/high16 v3, 0x44fa0000  # 2000.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_19

    :goto_17
    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    const/high16 v4, 0x3e800000  # 0.25f

    if-eqz v0, :cond_2c

    .line 1180
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3a

    goto :goto_38

    .line 1181
    :cond_2c
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3a

    :goto_38
    move p1, v1

    goto :goto_3b

    :cond_3a
    move p1, v2

    :goto_3b
    const/4 v4, 0x0

    if-eqz v0, :cond_43

    cmpl-float v0, p2, v4

    if-lez v0, :cond_49

    goto :goto_47

    :cond_43
    cmpg-float v0, p2, v4

    if-gez v0, :cond_49

    :goto_47
    move v0, v1

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    if-nez v3, :cond_52

    if-eqz p1, :cond_51

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    .line 1185
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1186
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method onFlyoutDragStart()V
    .registers 2

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onFlyoutDragged(F)V
    .registers 9

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 1128
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    .line 1129
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    if-eqz v0, :cond_14

    neg-float p1, p1

    .line 1132
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1133
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_34

    cmpl-float v3, p1, v4

    if-lez v3, :cond_65

    :cond_34
    cmpl-float v2, p1, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_3c

    move v6, v5

    goto :goto_3d

    :cond_3c
    move v6, v3

    :goto_3d
    if-eqz v0, :cond_41

    if-gtz v2, :cond_45

    :cond_41
    if-nez v0, :cond_46

    if-gez v1, :cond_46

    :cond_45
    move v3, v5

    :cond_46
    if-eqz v6, :cond_4a

    sub-float/2addr p1, v4

    goto :goto_4d

    :cond_4a
    const/high16 v0, -0x40800000  # -1.0f

    mul-float/2addr p1, v0

    :goto_4d
    if-eqz v3, :cond_51

    const/4 v0, -0x1

    goto :goto_52

    :cond_51
    move v0, v5

    :goto_52
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    .line 1149
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000  # 8.0f

    if-eqz v6, :cond_60

    const/4 v5, 0x2

    :cond_60
    int-to-float v2, v5

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v2, p1, v0

    .line 1154
    :cond_65
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getRestingTranslationX()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method onFlyoutTapped()V
    .registers 3

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1167
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method onGestureFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 1199
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 1201
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_c

    .line 1202
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->onGestureFinished()V

    :cond_c
    return-void
.end method

.method onGestureStart()V
    .registers 2

    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .registers 5

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    if-eqz p1, :cond_8

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeOffset:I

    add-int/2addr p2, v1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setImeHeight(I)V

    .line 1037
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez p2, :cond_15

    .line 1038
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateForImeVisibility(Z)V

    :cond_15
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 557
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_top_left:I

    .line 558
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_top_left:I

    .line 559
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 562
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_top_right:I

    .line 563
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_top_right:I

    .line 564
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 565
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 567
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    .line 568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_bottom_left:I

    .line 569
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 572
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    .line 573
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_bottom_right:I

    .line 574
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 578
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 579
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p0, :cond_72

    .line 580
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_77

    .line 582
    :cond_72
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_77
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 519
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    .line 523
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 524
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105020f

    .line 528
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    .line 530
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    .line 532
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p1

    .line 533
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    .line 534
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 535
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    .line 537
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method public onThemeChanged()V
    .registers 5

    .line 508
    new-instance v0, Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpFlyout()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 511
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BubbleView;->setBubbleIconFactory(Lcom/android/systemui/bubbles/BubbleIconFactory;)V

    .line 512
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    .line 513
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    goto :goto_16

    :cond_3a
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 6

    .line 588
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 591
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p2

    const/high16 v1, 0x100000

    if-ne p1, v1, :cond_19

    .line 595
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    return v0

    :cond_19
    const/high16 v1, 0x80000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_24

    .line 598
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_24
    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_2e

    .line 601
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    .line 603
    :cond_2e
    sget v1, Lcom/android/systemui/R$id;->action_move_top_left:I

    if-ne p1, v1, :cond_3c

    .line 604
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    .line 606
    :cond_3c
    sget v1, Lcom/android/systemui/R$id;->action_move_top_right:I

    if-ne p1, v1, :cond_4a

    .line 607
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    .line 609
    :cond_4a
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    if-ne p1, v1, :cond_58

    .line 610
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    .line 612
    :cond_58
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    if-ne p1, v1, :cond_66

    .line 613
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    :cond_66
    return v2
.end method

.method performBackPressIfNeeded()Z
    .registers 2

    .line 1721
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1724
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->performBackPressIfNeeded()Z

    move-result p0

    return p0
.end method

.method removeBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_19

    .line 771
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    .line 772
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->cleanupExpandedState()V

    const/4 v0, 0x5

    .line 773
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_30

    .line 775
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "was asked to remove Bubble, but didn\'t find the view! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bubbles"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_30
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method public setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .registers 2

    .line 688
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    return-void
.end method

.method public setExpanded(Z)V
    .registers 3

    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_11

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateCollapse()V

    .line 847
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_21

    .line 849
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateExpansion()V

    .line 851
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 852
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 854
    :goto_21
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/bubbles/Bubble;Z)V

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 5
    .param p1  # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 806
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 809
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 810
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 812
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_23

    .line 816
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 817
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    :cond_23
    return-void
.end method

.method updateBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 3

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 783
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v0, 0x2

    .line 784
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    return-void
.end method

.method public updateBubbleOrder(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 788
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 789
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    .line 790
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->reorderView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 793
    :cond_1a
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleZOrdersAndDotPosition(Z)V

    return-void
.end method

.method public updateContentDescription()V
    .registers 11

    .line 623
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 626
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 627
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 629
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 630
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->stream_notification:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_40

    .line 632
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    :cond_40
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 637
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->bubble_content_description_single:I

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v1

    aput-object v2, v8, v4

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/systemui/R$string;->bubble_content_description_stack:I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    aput-object v2, v9, v4

    .line 642
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v7

    .line 641
    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 644
    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v2, :cond_75

    goto :goto_82

    :cond_75
    if-lez v0, :cond_7d

    .line 649
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_82

    .line 651
    :cond_7d
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_82
    return-void
.end method

.method public updateDotVisibility(Ljava/lang/String;)V
    .registers 2

    .line 678
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->updateDotVisibility()V

    :cond_b
    return-void
.end method

.method updateDots()V
    .registers 5

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_18

    .line 1385
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/BubbleView;

    const/4 v3, 0x1

    .line 1387
    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    return-void
.end method
