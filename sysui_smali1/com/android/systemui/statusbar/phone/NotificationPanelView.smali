.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$GuardianStateListener;
    }
.end annotation


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;

.field private static final mEmptyRect:Landroid/graphics/Rect;


# instance fields
.field private CUSTOM_ENTRY_FADE_IN_DISTANCE:I

.field private final PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private final PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAffordanceHasPreview:Z

.field protected mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAffordanceLaunchListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowExpandForSmallExpansion:Z

.field private mAlphaAnimDuration:J

.field private mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private mAmbientIndicationBottomPadding:I

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextPositionUpdate:Z

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field protected mBarState:I

.field protected mBigClockContainer:Landroid/view/ViewGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBlockTouches:Z

.field private mBlockingExpansionForCurrentTouch:Z

.field private mBottomAreaShadeAlpha:F

.field private final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mBottomAreaViewBG:Landroid/widget/ImageView;

.field protected mCameraShowing:Z

.field private final mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConflictingQsExpansionGesture:Z

.field private mCurrentPanelAlpha:I

.field private mDarkIconSize:I

.field private mDelayShowingKeyguardStatusBar:Z

.field private mDismissView:Landroid/widget/ImageView;

.field private mDismissViewInAnimation:Landroid/animation/Animator;

.field private mDismissViewOutAnimation:Landroid/animation/Animator;

.field private mDismissViewParent:Landroid/view/View;

.field private mDisplayId:I

.field private mDistanceBetweenClockAndFaceIcon:I

.field private mDownX:F

.field private mDownY:F

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field private mExpandOffset:F

.field private mExpandingFromHeadsUp:Z

.field private mExpectingSynthesizedDown:Z

.field private mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFilterDismissView:Landroid/widget/TextView;

.field private mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

.field private mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mFirstBypassAttempt:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGuardianView:Lcom/meizu/keyguard/guardian/HomeGuardianView;

.field protected mHasSlideDown:Z

.field protected mHasSlideUp:Z

.field private mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpInset:I

.field private mHeadsUpPinnedMode:Z

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private mHideIconsDuringNotificationLaunch:Z

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mIntercepting:Z

.field private mInterpolatedDarkAmount:F

.field private mIsExpanding:Z

.field private mIsExpansionFromHeadsUp:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

.field private mKeyguardHeadsUpShowingAmount:F

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

.field private mKeyguardShowing:Z

.field protected mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardStatusBarAnimateAlpha:F

.field protected mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardStatusViewAnimating:Z

.field final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastEventSynthesizedDown:Z

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private mLinearDarkAmount:F

.field private mListenForHeadsUp:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mLockscreenView:Landroid/view/View;

.field private mMaxFadeoutHeight:I

.field private mMeizuPayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mMeizuPayShowing:Z

.field private mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

.field private mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

.field private mNavigationBarBottomHeight:I

.field private mNoVisibleNotifications:Z

.field private mNormalClockView:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

.field protected mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field protected mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOnReinflationListener:Ljava/lang/Runnable;

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelAlpha:I

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private mPanelBottomReservedHeight:I

.field private mPanelExpanded:Z

.field private mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mPulsing:Z

.field private mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpandedWhenTouchStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field protected mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field protected mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field protected mQsFrame:Landroid/widget/FrameLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mQsFullyExpanded:Z

.field protected mQsMaxExpansionHeight:I

.field protected mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsNotificationTopPadding:I

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private mResetState:Ljava/lang/Runnable;

.field private mSetBackgroundCallback:Lkeyguard/util/BottomAreaViewBackgroudUtil$SetBackgroundCallback;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShelfHeight:I

.field private mShowEmptyShadeView:Z

.field private mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

.field private mShowIconsWhenExpanded:Z

.field private mShowLockscreenNotifications:Z

.field private mShowingDetail:Z

.field private mShowingFilterPanel:Z

.field private mShowingKeyguardHeadsUp:Z

.field private mSlideContent:Landroid/widget/FrameLayout;

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private mStartWallpaper:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field public mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

.field private mThemeResId:I

.field private mTopPaddingAdjustment:I

.field private mTrackingHeadsUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingPointer:I

.field private mTranslating:Z

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockMoveDistance:I

.field protected mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyRect:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 211
    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$8G22_EmtDJSBkKVCqvCP10-xXeA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$8G22_EmtDJSBkKVCqvCP10-xXeA;

    sget-object v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;

    sget v6, Lcom/android/systemui/R$id;->keyguard_hun_animator_tag:I

    sget v7, Lcom/android/systemui/R$id;->keyguard_hun_animator_end_tag:I

    sget v8, Lcom/android/systemui/R$id;->keyguard_hun_animator_start_tag:I

    const-string v3, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    .line 212
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V
    .registers 16
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 250
    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    const/4 p2, 0x1

    .line 321
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 331
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 333
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 356
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 361
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    const/4 v0, -0x1

    .line 371
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    const-string v0, "lockscreen_affordance"

    .line 377
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 379
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 411
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 412
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    .line 416
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 429
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 437
    sget-object v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;

    sget-object v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;

    sget v4, Lcom/android/systemui/R$id;->panel_alpha_animator_tag:I

    sget v5, Lcom/android/systemui/R$id;->panel_alpha_animator_start_tag:I

    sget v6, Lcom/android/systemui/R$id;->panel_alpha_animator_end_tag:I

    const-string v1, "panelAlpha"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 444
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x96

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 446
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 447
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0xc8

    .line 448
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 449
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationFinishListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 450
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 451
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 452
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 455
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 456
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 457
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 458
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    .line 1976
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1984
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 1992
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1999
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2033
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2052
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 3830
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 4527
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mResetState:Ljava/lang/Runnable;

    .line 5324
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    .line 5375
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$37;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$37;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSetBackgroundCallback:Lkeyguard/util/BottomAreaViewBackgroudUtil$SetBackgroundCallback;

    .line 5383
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    .line 5397
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    .line 5426
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowLockscreenNotifications:Z

    const/4 v0, 0x0

    .line 5444
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayShowing:Z

    .line 5445
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    .line 500
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 501
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 502
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 503
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    .line 504
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 505
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 507
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 p2, 0xff

    .line 508
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    .line 509
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplayId:I

    .line 511
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 512
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$_yBzfez4yNorLL4Wz7TE5dCgf3o;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$_yBzfez4yNorLL4Wz7TE5dCgf3o;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p5, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulseExpandAbortListener(Ljava/lang/Runnable;)V

    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeResId:I

    .line 518
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 519
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 520
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    .line 521
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p2, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p6, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 524
    fill-array-data p2, :array_1f6

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 525
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$NSwb4zrunwx8nVzrQ3gQl4T8b5M;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$NSwb4zrunwx8nVzrQ3gQl4T8b5M;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p3, 0xa0

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 532
    invoke-static {p1}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    .line 533
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    invoke-virtual {p1, p2}, Lcom/meizu/media/music/KeyguardMusicController;->registerMusicViewChange(Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;)V

    .line 534
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->start_wallpaper_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CUSTOM_ENTRY_FADE_IN_DISTANCE:I

    .line 536
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->notification_panel_bottom_reserved_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelBottomReservedHeight:I

    .line 538
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->keyguard_data_time_y:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 539
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->mz_face_recognition_view_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDistanceBetweenClockAndFaceIcon:I

    return-void

    :array_1f6
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private UpdateClockOrMusicView(F)V
    .registers 3

    .line 5070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 5071
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5072
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDelayShowingKeyguardStatusBar:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDelayShowingKeyguardStatusBar:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .registers 2

    .line 165
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return p0
.end method

.method static synthetic access$2000()Landroid/graphics/Rect;
    .registers 1

    .line 165
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/String;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setupFilterPanel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setupQsDetail()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel;
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FFF)Z
    .registers 4

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/os/PowerManager;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelDown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTranslating:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTranslating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;J)V
    .registers 3

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J
    .registers 3

    .line 165
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaAnimDuration:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getDismissViewAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZ)V
    .registers 3

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideDismissView(IZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZ)V
    .registers 3

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showDismissView(IZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleShowingDetail(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/ImageView;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/Context;Z)V
    .registers 3

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZ)V
    .registers 4

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZ)V
    .registers 3

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQSPulseExpansion()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method private animateKeyguardStatusBarIn(J)V
    .registers 5

    .line 2043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2045
    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2046
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2047
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2048
    sget-object p0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2049
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2009
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2010
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2011
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2012
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_2a

    :cond_28
    const-wide/16 v1, 0x0

    .line 2011
    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2016
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2017
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide v1

    goto :goto_3e

    :cond_3c
    const-wide/16 v1, 0x168

    .line 2021
    :goto_3e
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2023
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2024
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2030
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateGestureExclusionRect()Landroid/graphics/Rect;
    .registers 2

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 846
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz v0, :cond_13

    .line 848
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_17

    goto :goto_19

    .line 852
    :cond_17
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyRect:Landroid/graphics/Rect;

    :goto_19
    return-object p0
.end method

.method private calculatePanelHeightQsExpanded()I
    .registers 5

    .line 2645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2646
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2647
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2652
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_28

    .line 2654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2656
    :cond_28
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2658
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_31

    .line 2659
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2663
    :cond_31
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3f

    .line 2664
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2667
    :cond_3f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_49

    .line 2668
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    .line 2666
    :goto_4a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2669
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v0

    add-float/2addr v2, v0

    .line 2670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_78

    .line 2671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2672
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 2673
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_78
    float-to-int p0, v2

    return p0
.end method

.method private calculateQsTopPadding()F
    .registers 5

    .line 2254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_33

    .line 2262
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardNotificationStaticPadding()I

    move-result v0

    .line 2263
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2264
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 2265
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2267
    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p0

    .line 2267
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2269
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4b

    .line 2270
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardNotificationStaticPadding()I

    move-result p0

    .line 2270
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 2272
    :cond_4b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardNotificationStaticPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 2277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result p0

    .line 2275
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 2279
    :cond_65
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private cancelQsAnimation()V
    .registers 1

    .line 2344
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    .line 2345
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method private determineAccessibilityPaneTitle()Ljava/lang/String;
    .registers 3

    .line 2240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings_edit:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2242
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_2b

    .line 2245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2246
    :cond_2b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 2247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_lock_screen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2249
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_shade:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private flingAnimation()V
    .registers 6

    .line 4699
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 4703
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 4705
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    neg-float v1, v1

    aput v1, v2, v0

    .line 4707
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4708
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4715
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4722
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b  # 0.17f

    const v2, 0x3f19999a  # 0.6f

    const v3, 0x3e75c28f  # 0.24f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 4723
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private flingExpandsQs(F)Z
    .registers 5

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1425
    :cond_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_25

    .line 1426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result p0

    const/high16 p1, 0x3f000000  # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_24

    move v1, v2

    :cond_24
    return v1

    :cond_25
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2b

    move v1, v2

    :cond_2b
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .registers 5

    .line 1403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v0

    .line 1404
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1406
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    :cond_d
    if-eqz v1, :cond_13

    if-nez p2, :cond_13

    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    const/4 p1, 0x1

    .line 1408
    :goto_14
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    return-void
.end method

.method private getCurrentBottomAndHeaderAlpha()F
    .registers 6

    .line 5054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 5055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 5056
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, p0, v2

    if-ltz v1, :cond_20

    goto :goto_21

    :cond_20
    neg-float p0, p0

    :goto_21
    sub-float p0, v0, p0

    div-float/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_5f

    .line 5058
    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQSTranslation()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v3, :cond_37

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    add-float/2addr v0, v3

    .line 5059
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_58

    .line 5061
    sget-object v0, Lcom/android/systemui/Interpolators;->WALLPAPER_DISMISS:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    goto :goto_5f

    :cond_58
    sub-float p0, v3, v0

    div-float/2addr p0, v3

    .line 5063
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_5f
    return p0
.end method

.method private getCurrentQSVelocity()F
    .registers 3

    .line 2336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/16 v1, 0x3e8

    .line 2339
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2340
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private getDismissViewAlpha()F
    .registers 3

    .line 4322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const v1, 0x3f333333  # 0.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-nez v0, :cond_19

    .line 4323
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p0

    sub-float/2addr p0, v1

    const v0, 0x3e99999a  # 0.3f

    div-float/2addr p0, v0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private getFadeoutAlpha()F
    .registers 5

    .line 2693
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_7

    return v1

    .line 2696
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 2697
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L  # 0.75

    .line 2698
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getFalsingThreshold()I
    .registers 2

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1790
    :goto_d
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getKeyguardHeadsUpShowingAmount()F
    .registers 1

    .line 3576
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    return p0
.end method

.method private getKeyguardNotificationStaticPadding()I
    .registers 3

    .line 2288
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2291
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2292
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    .line 2294
    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpInset:I

    .line 2295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 2298
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result p0

    .line 2299
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxPanelHeightBypass()I
    .registers 4

    .line 2531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 2532
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_23

    int-to-float v0, v0

    .line 2534
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShelfHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkIconSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_23
    return v0
.end method

.method private getMaxPanelHeightNonBypass()I
    .registers 4

    .line 2498
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 2499
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2500
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_1c

    .line 2501
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2502
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2506
    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2507
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v1, :cond_2b

    .line 2510
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    goto :goto_61

    .line 2513
    :cond_2b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzCalculatePanelHeightShade()I

    move-result p0

    goto :goto_61

    .line 2515
    :cond_30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2516
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v1, :cond_46

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-nez v1, :cond_50

    :cond_46
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    if-eqz v1, :cond_4b

    goto :goto_50

    .line 2520
    :cond_4b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzCalculatePanelHeightShade()I

    move-result p0

    goto :goto_61

    .line 2518
    :cond_50
    :goto_50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result p0

    goto :goto_61

    .line 2523
    :cond_55
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2526
    :goto_61
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getQSTranslation()F
    .registers 3

    .line 4455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzGetHeaderTranslation()F

    move-result p0

    add-float/2addr v0, p0

    goto :goto_1a

    .line 4456
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzGetHeaderTranslation()F

    move-result v0

    :goto_1a
    return v0
.end method

.method private getQsExpansionFraction()F
    .registers 4

    .line 1443
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getUnlockedStackScrollerPadding()I
    .registers 3

    .line 968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_34

    .line 1646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000  # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    const/4 v0, 0x1

    .line 1648
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1649
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1650
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_34
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isStackScrollerOverscrolled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-nez v0, :cond_2a

    .line 1568
    :cond_11
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable pull down quick setting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1572
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_67

    .line 1573
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v3, v2, :cond_67

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_67

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_67

    .line 1577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_67

    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInHorizontalEmptyArea(F)Z

    move-result v3

    if-nez v3, :cond_67

    .line 1582
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1583
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1585
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1589
    :cond_67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_70

    .line 1590
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1592
    :cond_70
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_80

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_80

    .line 1593
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1594
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v3, :cond_80

    return v2

    :cond_80
    const/4 v3, 0x3

    if-eq v0, v3, :cond_85

    if-ne v0, v2, :cond_87

    .line 1599
    :cond_85
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    :cond_87
    if-nez v0, :cond_95

    .line 1601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_95

    .line 1603
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1605
    :cond_95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v0, :cond_c2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c2

    .line 1607
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "panel_open_qs"

    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1608
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1609
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1610
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1614
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :cond_c2
    return v1
.end method

.method private handleShowingDetail(Z)V
    .registers 4

    .line 4844
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 4847
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeRemoteInputs()V

    const/4 p1, 0x1

    .line 4848
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideDismissView(IZ)V

    .line 4849
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_1f

    .line 4851
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4852
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showDismissView(IZ)V

    :goto_1f
    return-void
.end method

.method private hideDismissView(IZ)V
    .registers 5

    .line 5214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    if-nez p2, :cond_2e

    .line 5219
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 5220
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 5222
    :cond_20
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5223
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 5226
    :cond_2e
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    if-eqz p2, :cond_39

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_39

    return-void

    .line 5230
    :cond_39
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    if-nez p2, :cond_4e

    .line 5231
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$animator;->dismiss_view_out_animator:I

    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    .line 5232
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 5234
    :cond_4e
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 5235
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$35;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5243
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 5244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private init3PartLockscreen(Landroid/content/Context;Z)V
    .registers 6

    .line 4763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init3PartLockscreen force = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4764
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    if-eqz p2, :cond_33

    const-string p2, "force init 3-part wrapper"

    .line 4767
    invoke-static {p2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 4768
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_24

    .line 4769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_24
    const/4 p2, 0x0

    .line 4771
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    .line 4772
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 4775
    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {p2, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v1, :cond_4f

    .line 4778
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz p2, :cond_5b

    .line 4779
    invoke-virtual {p2, v1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockSoundOn(Z)V

    .line 4780
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {p2, v1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockVibrateOn(Z)V

    goto :goto_5b

    .line 4783
    :cond_4f
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz p2, :cond_5b

    .line 4784
    invoke-virtual {p2, v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockSoundOn(Z)V

    .line 4785
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {p2, v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockVibrateOn(Z)V

    :cond_5b
    :goto_5b
    if-eqz p1, :cond_e0

    .line 4788
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    if-eqz p1, :cond_63

    goto/16 :goto_e0

    .line 4792
    :cond_63
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getLockscreenView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    .line 4793
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    if-nez p1, :cond_85

    const-string p1, "load lockscreen view failed"

    .line 4795
    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 4796
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->resetFlymeTheme()V

    .line 4797
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    return-void

    .line 4800
    :cond_85
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-nez p1, :cond_93

    .line 4801
    sget p1, Lcom/android/systemui/R$id;->mz_keyguard_injector:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    .line 4803
    :cond_93
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    if-nez p1, :cond_a7

    .line 4804
    sget p1, Lcom/android/systemui/R$id;->status_bar_background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    .line 4805
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 4810
    :cond_a7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_be

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz p1, :cond_be

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_be

    .line 4811
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4813
    :cond_be
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz p1, :cond_e0

    .line 4814
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p1, :cond_d6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenOnFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 4815
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4816
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {p1, v1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onShow(Z)V

    .line 4818
    :cond_d6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p1, p2}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->setUnlockRunnable(Ljava/lang/Runnable;)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method private initBottomArea()V
    .registers 4

    .line 765
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUserSetupComplete:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method private initDismissViewAndFilterPanel()V
    .registers 3

    .line 4220
    sget v0, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    .line 4221
    sget v0, Lcom/android/systemui/R$id;->dismiss_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/widget/ImageView;

    .line 4222
    sget v0, Lcom/android/systemui/R$id;->filter_dismiss_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterDismissView:Landroid/widget/TextView;

    .line 4223
    sget v0, Lcom/android/systemui/R$id;->filter_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    .line 4224
    sget v0, Lcom/android/systemui/R$id;->notification_filter_stack:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissView(Landroid/widget/ImageView;)V

    .line 4227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterDismissView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFilterDismissView(Landroid/widget/TextView;)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 1377
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 1378
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownX:F

    .line 1381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownY:F

    .line 1382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    .line 1383
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_34

    move p1, v0

    goto :goto_35

    :cond_34
    move p1, v1

    :goto_35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    .line 1384
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAllowExpandForSmallExpansion:Z

    .line 1385
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_42

    .line 1387
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    goto :goto_4b

    .line 1390
    :cond_42
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    goto :goto_4b

    .line 1394
    :cond_45
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    .line 1396
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 1397
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    :goto_4b
    return-void
.end method

.method private initKeyguard()V
    .registers 4

    .line 4200
    sget v0, Lcom/android/systemui/R$id;->keyguard_music_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/music/KeyguardMusicView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 4201
    sget v0, Lcom/android/systemui/R$id;->animator_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    .line 4202
    sget v0, Lcom/android/systemui/R$id;->home_guardian_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/guardian/HomeGuardianView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGuardianView:Lcom/meizu/keyguard/guardian/HomeGuardianView;

    .line 4203
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/guardian/HomeGuardianController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/guardian/HomeGuardianController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGuardianView:Lcom/meizu/keyguard/guardian/HomeGuardianView;

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/guardian/HomeGuardianController;->setGuardianView(Lcom/meizu/keyguard/guardian/HomeGuardianView;)V

    .line 4204
    sget v0, Lcom/android/systemui/R$id;->normal_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGuardianView:Lcom/meizu/keyguard/guardian/HomeGuardianView;

    .line 4205
    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setGuardianView(Lcom/meizu/keyguard/guardian/HomeGuardianView;)V

    .line 4206
    sget v0, Lcom/android/systemui/R$id;->world_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/worldclock/WorldClockView;

    .line 4207
    sget v1, Lcom/android/systemui/R$id;->normal_clock_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNormalClockView:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    .line 4208
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/worldclock/WorldClockController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/worldclock/WorldClockController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNormalClockView:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {v1, v2}, Lcom/meizu/keyguard/worldclock/WorldClockController;->showNormalClockView(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V

    .line 4209
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/worldclock/WorldClockController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/worldclock/WorldClockController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/keyguard/worldclock/WorldClockController;->showWorldClockView(Lcom/meizu/keyguard/worldclock/WorldClockView;)V

    .line 4211
    sget v0, Lcom/android/systemui/R$id;->slide_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideContent:Landroid/widget/FrameLayout;

    .line 4212
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getInstance(Landroid/content/Context;)Lkeyguard/util/BottomAreaViewBackgroudUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSetBackgroundCallback:Lkeyguard/util/BottomAreaViewBackgroudUtil$SetBackgroundCallback;

    invoke-virtual {v0, v1}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->addSetBackgroundCallback(Lkeyguard/util/BottomAreaViewBackgroudUtil$SetBackgroundCallback;)V

    .line 4214
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V

    .line 4216
    sget v0, Lcom/android/systemui/R$id;->detail_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/MzQSDetail;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    return-void
.end method

.method private initVelocityTracker()V
    .registers 2

    .line 2329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 2330
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2332
    :cond_7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isInQsArea(FF)Z
    .registers 5

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 1621
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_42

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1622
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_40

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1623
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_42

    :cond_40
    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method private isOnKeyguard()Z
    .registers 2

    .line 3712
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    .line 1628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_12

    if-ne p0, v1, :cond_12

    move p0, v2

    goto :goto_13

    :cond_12
    move p0, v3

    :goto_13
    if-nez v0, :cond_27

    const/16 v4, 0x20

    .line 1634
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_25

    const/16 v4, 0x40

    .line 1635
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_25
    move v4, v2

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    if-nez v0, :cond_39

    .line 1638
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x4

    .line 1639
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_37
    move p1, v2

    goto :goto_3a

    :cond_39
    move p1, v3

    :goto_3a
    if-nez p0, :cond_42

    if-nez v4, :cond_42

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move v2, v3

    :cond_42
    :goto_42
    return v2
.end method

.method private isPanelDown()Z
    .registers 2

    .line 4694
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    goto :goto_12

    :cond_b
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isStackScrollerOverscrolled()Z
    .registers 4

    .line 4476
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOwnScrollY()I

    move-result p0

    if-eqz p0, :cond_20

    .line 4478
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStackScrollerOverscrolled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$3eG2mRDkKhbGo7rATE21NiEDXnI(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardHeadsUpShowingAmount()F

    move-result p0

    return p0
.end method

.method public static synthetic lambda$8G22_EmtDJSBkKVCqvCP10-xXeA(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardHeadsUpShowingAmount(F)V

    return-void
.end method

.method private logQsSwipeDown(F)V
    .registers 6

    .line 1412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v0

    .line 1413
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc1

    goto :goto_e

    :cond_c
    const/16 v1, 0xc2

    .line 1416
    :goto_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1417
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 1416
    invoke-virtual {v2, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    return-void
.end method

.method private maybeAnimateBottomAreaAlpha()V
    .registers 3

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1969
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1970
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_14

    :cond_10
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1972
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlpha:F

    :goto_14
    return-void
.end method

.method private mzCalculatePanelHeightShade()I
    .registers 5

    .line 4461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 4462
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 4464
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 4465
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOwnScrollY()I

    move-result v2

    .line 4466
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v3

    if-lez v2, :cond_25

    move v1, v2

    :cond_25
    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 4467
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    add-int/2addr v3, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result p0

    add-int/2addr v3, p0

    .line 4469
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_39
    return v0
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    const/4 v0, 0x0

    .line 2940
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2941
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 2942
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 2943
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private onFilterPanelHeightUpdated(F)V
    .registers 6

    .line 5271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 5272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    .line 5273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5278
    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 5281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_3c

    .line 5282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p1

    .line 5283
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 5284
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 5286
    :cond_3c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5287
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private onQsExpansionStarted()V
    .registers 2

    const/4 v0, 0x0

    .line 1843
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1280
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_10

    .line 1283
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    move v0, v1

    .line 1285
    :cond_10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1286
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c3

    const/4 v5, 0x3

    if-eq v3, v4, :cond_ac

    const/4 v6, 0x2

    if-eq v3, v6, :cond_53

    if-eq v3, v5, :cond_ac

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2c

    goto/16 :goto_fb

    .line 1307
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1308
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_fb

    .line 1310
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3f

    move v4, v1

    .line 1311
    :cond_3f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1312
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1313
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto/16 :goto_fb

    .line 1318
    :cond_53
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, v0, v3

    .line 1319
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1320
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v5, :cond_6f

    .line 1325
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1327
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    return v4

    .line 1330
    :cond_6f
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_fb

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_fb

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1331
    invoke-direct {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 1332
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1335
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1336
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1337
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1338
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    return v4

    .line 1346
    :cond_ac
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1347
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v2, :cond_c0

    .line 1349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_ba

    goto :goto_bb

    :cond_ba
    move v4, v1

    .line 1348
    :goto_bb
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1350
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1352
    :cond_c0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto :goto_fb

    .line 1290
    :cond_c3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1291
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1292
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1294
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1295
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 1296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1298
    :cond_e1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_fb

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-nez p1, :cond_fb

    .line 1299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1300
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1301
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1302
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1303
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_fb
    :goto_fb
    return v1
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .registers 9

    .line 1728
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_10

    .line 1731
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    move v0, v1

    .line 1733
    :cond_10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1734
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1735
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 1737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a1

    const/4 v0, 0x3

    if-eq v4, v5, :cond_75

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5b

    if-eq v4, v0, :cond_75

    const/4 v0, 0x6

    if-eq v4, v0, :cond_30

    goto/16 :goto_b4

    .line 1749
    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1750
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_b4

    .line 1752
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v5

    .line 1753
    :goto_44
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1754
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1755
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1756
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1757
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1758
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_b4

    .line 1763
    :cond_5b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_71

    .line 1765
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1767
    :cond_71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_b4

    .line 1772
    :cond_75
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    const/4 v3, -0x1

    .line 1773
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1774
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8c

    .line 1776
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_96

    .line 1778
    :cond_8c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_93

    move v1, v5

    .line 1777
    :cond_93
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1780
    :cond_96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b4

    .line 1781
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1782
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_b4

    .line 1739
    :cond_a1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1740
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1741
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1743
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1744
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1745
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method private panelViewHeightUpdateAnimation(F)V
    .registers 11

    .line 5090
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const v1, 0x3d3851ec  # 0.045f

    cmpl-float v0, v0, v1

    const v2, 0x409c18fa

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3e800000  # 0.25f

    if-ltz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_22

    .line 5091
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_2d

    .line 5092
    :cond_22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2c

    move v0, v3

    goto :goto_2d

    :cond_2c
    move v0, v4

    .line 5096
    :goto_2d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_48

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_48

    .line 5097
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    sub-float/2addr v6, v5

    const v7, 0x3e79c194

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    goto :goto_53

    .line 5098
    :cond_48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_52

    move v6, v3

    goto :goto_53

    :cond_52
    move v6, v4

    .line 5103
    :goto_53
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarHeight:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    .line 5104
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eqz v8, :cond_64

    cmpg-float v8, p1, v7

    if-gez v8, :cond_64

    move v0, v4

    move v6, v0

    .line 5109
    :cond_64
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5110
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setScaleX(F)V

    .line 5111
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setScaleY(F)V

    .line 5113
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 5114
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v8, v6}, Lcom/android/systemui/qs/QSPanel;->setVisibleViewScale(F)V

    .line 5116
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v8, :cond_97

    .line 5117
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5118
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setChildScale(F)V

    .line 5121
    :cond_97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v6

    if-eqz v6, :cond_9e

    return-void

    :cond_9e
    cmpg-float v6, p1, v4

    if-lez v6, :cond_d7

    .line 5123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v6

    if-eqz v6, :cond_a9

    goto :goto_d7

    .line 5125
    :cond_a9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_c2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_c2

    const/high16 v6, -0x3db80000  # -50.0f

    sub-float v0, v3, v0

    mul-float/2addr v0, v6

    .line 5126
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_da

    .line 5127
    :cond_c2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_da

    .line 5128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float v0, p1, v0

    mul-float/2addr v0, v5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_da

    .line 5124
    :cond_d7
    :goto_d7
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5131
    :cond_da
    :goto_da
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_11b

    .line 5132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const v6, 0x3d178d50  # 0.037f

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_116

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    if-le v0, v6, :cond_116

    cmpg-float v0, p1, v7

    if-gez v0, :cond_f6

    goto :goto_116

    .line 5135
    :cond_f6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    const/high16 v8, 0x40800000  # 4.0f

    mul-float/2addr v6, v8

    cmpl-float v6, v6, v3

    if-lez v6, :cond_105

    move v6, v3

    goto :goto_112

    :cond_105
    const v6, 0x40963c18

    .line 5136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v8

    mul-float/2addr v8, v6

    const v6, 0x3e31e0c0

    sub-float v6, v8, v6

    .line 5135
    :goto_112
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBlurBackgroundAlpha(F)V

    goto :goto_11b

    .line 5133
    :cond_116
    :goto_116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBlurBackgroundAlpha(F)V

    .line 5140
    :cond_11b
    :goto_11b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-nez v0, :cond_175

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_175

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    if-le v0, v6, :cond_175

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 5141
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_175

    .line 5143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_150

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_150

    .line 5144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_15b

    .line 5145
    :cond_150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_15a

    move v0, v3

    goto :goto_15b

    :cond_15a
    move v0, v4

    .line 5148
    :goto_15b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_175

    .line 5150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    sub-float v6, v4, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 5154
    :cond_175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1a9

    .line 5156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_194

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_194

    .line 5157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p1

    sub-float/2addr p1, v1

    mul-float/2addr p1, v2

    goto :goto_1a3

    .line 5158
    :cond_194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1a2

    cmpl-float p1, p1, v7

    if-lez p1, :cond_1a2

    move p1, v3

    goto :goto_1a3

    :cond_1a2
    move p1, v4

    .line 5161
    :goto_1a3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    sub-float/2addr v3, p1

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1a9
    return-void
.end method

.method private positionClockAndNotifications()V
    .registers 22

    move-object/from16 v0, p0

    .line 891
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    .line 892
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    if-eqz v4, :cond_11

    goto :goto_13

    :cond_11
    move v4, v3

    goto :goto_14

    :cond_13
    :goto_13
    move v4, v2

    .line 894
    :goto_14
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v5, v2, :cond_20

    .line 895
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getUnlockedStackScrollerPadding()I

    move-result v4

    .line 897
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto/16 :goto_fc

    .line 900
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    .line 901
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientIndicationBottomPadding:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 902
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/KeyguardStatusView;->getClockPreferredY(I)I

    move-result v12

    .line 903
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v17

    if-nez v17, :cond_44

    .line 904
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 905
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v6

    if-eqz v6, :cond_44

    move v14, v2

    goto :goto_45

    :cond_44
    move v14, v3

    .line 906
    :goto_45
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6, v14}, Lcom/android/keyguard/KeyguardStatusView;->setHasVisibleNotifications(Z)V

    .line 907
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    sub-int v8, v10, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 910
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result v9

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v11

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 913
    invoke-virtual {v5}, Landroid/widget/GridLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShelfHeight:I

    int-to-float v13, v13

    const/high16 v15, 0x40000000  # 2.0f

    div-float/2addr v13, v15

    sub-float/2addr v5, v13

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkIconSize:I

    int-to-float v13, v13

    div-float/2addr v13, v15

    sub-float/2addr v5, v13

    float-to-int v13, v5

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasCustomClock()Z

    move-result v15

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getUnlockedStackScrollerPadding()I

    move-result v18

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v20

    move/from16 v16, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v16, v2

    move/from16 v19, v3

    .line 907
    invoke-virtual/range {v5 .. v20}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIIZZFFZIFI)V

    .line 928
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 929
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOwnScrollY()I

    move-result v3

    .line 930
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v2

    int-to-float v2, v2

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 932
    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_bf

    add-float/2addr v2, v3

    goto :goto_bf

    .line 936
    :cond_b5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    if-lez v3, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 v3, 0x0

    :goto_bd
    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 938
    :cond_bf
    :goto_bf
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 940
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 944
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    sget-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDistanceBetweenClockAndFaceIcon:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 946
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    sget-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock()V

    .line 951
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 953
    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 955
    :goto_fc
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 956
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAntiBurnInOffsetX(I)V

    .line 958
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    .line 959
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    const/4 v1, 0x0

    .line 960
    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    .line 961
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method private reInflateViews()V
    .registers 1

    return-void
.end method

.method private resetHorizontalPanelPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 3665
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method private resetTranslationState()V
    .registers 4

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mResetState:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mResetState:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .registers 2

    .line 3637
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    .line 3638
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 2

    .line 3816
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private setIsFullWidth(Z)V
    .registers 2

    .line 856
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    .line 857
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .registers 5

    .line 2060
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_3a

    .line 2062
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 2063
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 2064
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 2065
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 2066
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2067
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2068
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5e

    :cond_3a
    const/4 p2, 0x1

    if-eq p1, p2, :cond_49

    const/4 p2, 0x2

    if-ne p1, p2, :cond_41

    goto :goto_49

    .line 2081
    :cond_41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5e

    .line 2073
    :cond_49
    :goto_49
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez p1, :cond_57

    .line 2074
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartWallpaper:Z

    if-nez p1, :cond_57

    .line 2075
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2079
    :cond_57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_5e
    return-void
.end method

.method private setKeyguardHeadsUpShowingAmount(F)V
    .registers 2

    .line 3571
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardHeadsUpShowingAmount:F

    .line 3572
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .registers 11

    .line 2087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2088
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_18

    .line 2089
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-ne v5, v4, :cond_18

    if-ne p1, v4, :cond_1a

    :cond_18
    if-eqz p3, :cond_5c

    .line 2091
    :cond_1a
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2092
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2093
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2094
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    .line 2095
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 2096
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 2097
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_e0

    .line 2099
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 2100
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 2101
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getShortenedFadingAwayDuration()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2102
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_e0

    .line 2104
    :cond_5c
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000  # 1.0f

    if-ne p3, v5, :cond_91

    if-ne p1, v4, :cond_91

    .line 2106
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 2107
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2108
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 2109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2110
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2111
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    .line 2112
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 2113
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 2114
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_e0

    :cond_91
    if-ne p1, v4, :cond_d4

    if-eqz p2, :cond_c9

    .line 2117
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2119
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const p3, 0x3d4ccccd  # 0.05f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 2121
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d

    .line 2122
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2123
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2124
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2125
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_e0

    .line 2127
    :cond_c9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 2128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v6}, Landroid/widget/GridLayout;->setAlpha(F)V

    goto :goto_e0

    .line 2131
    :cond_d4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 2132
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v6}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .registers 3

    .line 3770
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 3771
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3773
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setLaunchingAffordance(Z)V

    .line 3774
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_20

    .line 3775
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private setListening(Z)V
    .registers 3

    .line 2948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2949
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_a

    return-void

    .line 2950
    :cond_a
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    return-void
.end method

.method private setOverScrolling(Z)V
    .registers 2

    .line 1837
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1838
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_7

    return-void

    .line 1839
    :cond_7
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    return-void
.end method

.method private setQsExpanded(Z)V
    .registers 3

    .line 1865
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_2a

    .line 1867
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1868
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1869
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    .line 1871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setQsExpanded(Z)V

    .line 1874
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setQSExpanded(Z)V

    :cond_2a
    return-void
.end method

.method private setQsExpansion(FZ)V
    .registers 13

    .line 2159
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2160
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v3

    :goto_1c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 2161
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_45

    .line 2164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_41

    .line 2165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2167
    :cond_41
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    goto :goto_57

    .line 2168
    :cond_45
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v0, :cond_57

    .line 2169
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 2171
    :cond_57
    :goto_57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v0, 0x0

    if-eqz p2, :cond_69

    .line 2176
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p2, :cond_6c

    .line 2177
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    goto :goto_6c

    .line 2180
    :cond_69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 2184
    :cond_6c
    :goto_6c
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 2186
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_79

    if-ne p1, v2, :cond_82

    .line 2188
    :cond_79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 2189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateBigClockAlpha()V

    .line 2191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock()V

    .line 2194
    :cond_82
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-nez p1, :cond_9b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz p1, :cond_9b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez p1, :cond_9b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz p1, :cond_9b

    .line 2196
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2199
    :cond_9b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 2200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 2203
    :cond_aa
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_c8

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2204
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 2205
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    :cond_c8
    move p1, v3

    .line 2208
    :goto_c9
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_ea

    .line 2209
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eqz v1, :cond_e3

    .line 2210
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float v1, v1

    div-float v1, v2, v1

    goto :goto_e4

    :cond_e3
    move v1, v0

    .line 2209
    :goto_e4
    invoke-interface {p2, v1}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onQsExpansionChanged(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c9

    .line 2213
    :cond_ea
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez p1, :cond_10a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    if-eqz p1, :cond_10a

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_10a

    .line 2214
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 2215
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/view/SurfaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2216
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2219
    :cond_10a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpPinnedMode:Z

    if-eqz p1, :cond_122

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->getCollapseSnoozeState()Z

    move-result p1

    if-nez p1, :cond_122

    .line 2220
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getHeadsupInset()F

    move-result p2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_122
    return-void
.end method

.method private setQsExpansionMax()V
    .registers 3

    .line 5017
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    return-void
.end method

.method private setQsExpansionMin()V
    .registers 3

    .line 5021
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    return-void
.end method

.method private setQsTranslation(F)V
    .registers 4

    .line 4449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz v0, :cond_19

    .line 4450
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzGetHeaderTranslation()F

    move-result p0

    invoke-interface {v0, v1, p1, p0}, Lcom/android/systemui/plugins/qs/QS;->setQsTranslation(ZFF)V

    :cond_19
    return-void
.end method

.method private setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 3

    .line 552
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->bottom_area_view_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    .line 556
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private setupFilterPanel()V
    .registers 6

    .line 4231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    instance-of v0, v0, Lcom/flyme/systemui/qs/MzQSFragment;

    if-eqz v0, :cond_5e

    .line 4232
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3  # 0.66f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 4233
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->qs_list_anim_out_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaAnimDuration:J

    .line 4235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v0, Lcom/flyme/systemui/qs/MzQSFragment;

    .line 4236
    invoke-virtual {v0}, Lcom/flyme/systemui/qs/MzQSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 4237
    invoke-virtual {v0}, Lcom/flyme/systemui/qs/MzQSFragment;->getHeader()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    .line 4238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->setFilterPanel(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    .line 4239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getShowFilterPanelImageButton()Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 4240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setStackScrollLayout(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 4241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setNumberView(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V

    .line 4243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->addCallback(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;)V

    :cond_5e
    return-void
.end method

.method private setupQsDetail()V
    .registers 3

    .line 4727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_13

    .line 4728
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setQsDetail(Landroid/widget/RelativeLayout;)V

    .line 4729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addCallback(Lcom/flyme/systemui/qs/MzQSDetail$Callback;)V

    :cond_13
    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .registers 10

    .line 2425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isStackScrollerOverscrolled()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v0, :cond_17

    .line 2426
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2427
    :cond_17
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disable pull down quick setting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2431
    :cond_30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_3e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2432
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_4a
    return v1

    .line 2436
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInHorizontalEmptyArea(F)Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    .line 2441
    :cond_52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_13d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-nez v0, :cond_13d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2442
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_13d

    .line 2443
    :cond_66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_6e

    goto/16 :goto_13d

    .line 2446
    :cond_6e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_77

    goto :goto_7c

    :cond_77
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    goto :goto_7e

    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 2447
    :goto_7e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_b6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 2448
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_b6

    .line 2449
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_b6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_ae

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    goto :goto_b0

    :cond_ae
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    :goto_b0
    cmpg-float v2, p2, v2

    if-gtz v2, :cond_b6

    move v2, v3

    goto :goto_b7

    :cond_b6
    move v2, v1

    .line 2452
    :goto_b7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10e

    .line 2453
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_e1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_e1

    .line 2454
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_e1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_e1

    move v0, v3

    goto :goto_e2

    :cond_e1
    move v0, v1

    :goto_e2
    if-eqz v0, :cond_ef

    .line 2455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_ef

    return v3

    :cond_ef
    if-nez v2, :cond_10d

    .line 2458
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v0

    if-nez v0, :cond_fc

    cmpg-float v0, p3, v5

    if-gez v0, :cond_fc

    goto :goto_10d

    .line 2461
    :cond_fc
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v0

    if-nez v0, :cond_10e

    cmpl-float v0, p3, v5

    if-lez v0, :cond_10e

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_10d

    move v1, v3

    :cond_10d
    :goto_10d
    return v1

    .line 2465
    :cond_10e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_12c

    if-nez v2, :cond_12a

    cmpg-float v0, p3, v5

    if-gez v0, :cond_11e

    .line 2466
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result p1

    if-nez p1, :cond_12a

    :cond_11e
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz p1, :cond_12b

    cmpl-float p1, p3, v5

    if-gtz p1, :cond_12b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenTouchStarted:Z

    if-eqz p0, :cond_12b

    :cond_12a
    move v1, v3

    :cond_12b
    return v1

    :cond_12c
    if-nez v2, :cond_13c

    .line 2468
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_13d

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result p0

    if-nez p0, :cond_13d

    cmpl-float p0, p3, v5

    if-lez p0, :cond_13d

    :cond_13c
    move v1, v3

    :cond_13d
    :goto_13d
    return v1
.end method

.method private showDismissView(IZ)V
    .registers 6

    .line 5166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v0, :cond_ac

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 5167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isClosingCustomize()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 5168
    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isNotificationPanelFullyCollapsedOnKeyguardShade()Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 5169
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_ac

    .line 5172
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 5175
    :cond_37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4f

    .line 5176
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5177
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 5178
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_4f
    if-nez p2, :cond_72

    .line 5182
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 5183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 5185
    :cond_60
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5186
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 5187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 5191
    :cond_72
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    if-eqz p2, :cond_7d

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_7d

    return-void

    .line 5195
    :cond_7d
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    if-nez p2, :cond_92

    .line 5196
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$animator;->dismiss_view_in_animator:I

    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    .line 5197
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 5199
    :cond_92
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 5200
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5209
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 5210
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewInAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_ac
    :goto_ac
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .registers 3

    .line 2323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2324
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 2325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    return-void
.end method

.method private update3PartWallpaper()V
    .registers 8

    .line 4965
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_78

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4967
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_78

    .line 4968
    :cond_1e
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 4969
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    .line 4970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 4971
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 4972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_60

    .line 4973
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4974
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0, v3, v3}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->blurUnderMeRectCurrentLayer(ZZ)V

    goto :goto_60

    .line 4978
    :cond_4f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    if-eqz v0, :cond_60

    .line 4979
    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 4980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0, v4, v2}, Landroid/view/SurfaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4984
    :cond_60
    :goto_60
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    .line 4985
    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_d5

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz p0, :cond_d5

    .line 4988
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    goto :goto_d5

    .line 4990
    :cond_78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    if-nez v0, :cond_d5

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v0, v6, v5}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-nez v0, :cond_98

    .line 4991
    :cond_90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d5

    .line 4992
    :cond_98
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    .line 4993
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 4994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    if-eqz v0, :cond_ad

    .line 4995
    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 4996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0, v4, v2}, Landroid/view/SurfaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4999
    :cond_ad
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    .line 5000
    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_d5

    .line 5004
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenOnFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 5005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5006
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPlay()V

    :cond_d5
    :goto_d5
    return-void
.end method

.method private updateBigClockAlpha()V
    .registers 5

    .line 2842
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_c

    :cond_9
    const v0, 0x3f733333  # 0.95f

    .line 2843
    :goto_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    .line 2842
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2844
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2845
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updateBottomAreaViewBGClipBound(I)V
    .registers 6

    .line 4574
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    .line 4575
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4576
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateClock()V
    .registers 8

    .line 1026
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_cc

    .line 1028
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000  # 2.0f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_59

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    .line 1030
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_28

    goto :goto_29

    :cond_28
    neg-float v3, v3

    :goto_29
    sub-float v3, v0, v3

    div-float/2addr v3, v0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1031
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v3, v0}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 1032
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1033
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    invoke-virtual {v3, v0, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPositionChanged(FZFF)V

    .line 1034
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(F)V

    .line 1035
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    if-eqz v1, :cond_cc

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p0, p0, v5

    if-ltz p0, :cond_cc

    sub-float/2addr v4, v0

    .line 1036
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_cc

    .line 1039
    :cond_59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQSTranslation()F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    cmpg-float v6, v0, v5

    if-gtz v6, :cond_9f

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    sget-object v1, Lcom/android/systemui/Interpolators;->PANEL_DISMISS:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sget-object v3, Lcom/android/systemui/Interpolators;->MUSIC_VIEW_DISMISS:Landroid/view/animation/Interpolator;

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sget-object v5, Lcom/android/systemui/Interpolators;->WALLPAPER_DISMISS:Landroid/view/animation/Interpolator;

    .line 1044
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 1042
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPositionChanged(FZFF)V

    .line 1045
    sget-object v0, Lcom/android/systemui/Interpolators;->MUSIC_VIEW_DISMISS:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(F)V

    goto :goto_c7

    .line 1047
    :cond_9f
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-nez v2, :cond_c7

    .line 1048
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mzGetClockY()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v2, v6

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    .line 1049
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1050
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 1051
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v0, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPositionChanged(FZFF)V

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->UpdateClockOrMusicView(F)V

    .line 1055
    :cond_c7
    :goto_c7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method private updateDismissViewPadding()V
    .registers 4

    .line 5248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 5249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_dismiss_view_margin_bottom_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_22

    .line 5250
    :cond_18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_dismiss_view_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_22
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    int-to-float v1, v1

    const v2, 0x3f19999a  # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 5251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5252
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_3e

    .line 5253
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5254
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3e
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .registers 4

    .line 3352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 3353
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    const-wide/16 v0, 0x168

    .line 3354
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    :cond_12
    return-void
.end method

.method private updateEmptyShadeView()V
    .registers 2

    .line 3394
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    return-void
.end method

.method private updateGestureExclusionRect()V
    .registers 3

    .line 837
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 839
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_11

    .line 840
    :cond_d
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 838
    :goto_11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private updateHeader()V
    .registers 3

    .line 2716
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2717
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 2719
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .registers 6

    .line 2771
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_5

    return-void

    .line 2777
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentBottomAndHeaderAlpha()F

    move-result v0

    .line 2779
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2780
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFirstBypassAttempt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_1b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDelayShowingKeyguardStatusBar:Z

    if-eqz v1, :cond_21

    :cond_1f
    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    move v1, v2

    .line 2782
    :goto_22
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2c

    if-nez v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x4

    :goto_2d
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->update3PartWallpaper()V

    return-void
.end method

.method private updateHeadsUpVisibility()V
    .registers 3

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    if-nez v1, :cond_f

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpPinnedMode:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setHeadsUpVisible(Z)V

    return-void
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .registers 5

    .line 2804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentBottomAndHeaderAlpha()F

    move-result v0

    .line 2806
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 2807
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartWallpaper:Z

    if-nez v1, :cond_1a

    .line 2808
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2812
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2815
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 2817
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7e

    .line 2820
    :cond_3a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_7e

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2821
    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 2822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_63

    .line 2823
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 2824
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardCover:Lcom/flyme/systemui/statusbar/GLStaticBlurView;

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 2826
    :cond_63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_7e

    .line 2828
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenOnFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2829
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPlay()V

    :cond_7e
    :goto_7e
    return-void
.end method

.method private updateKeyguardStatusBarForHeadsUp()V
    .registers 5

    .line 3556
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 3557
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3558
    :goto_10
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingKeyguardHeadsUp:Z

    if-eq v2, v0, :cond_2c

    .line 3559
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingKeyguardHeadsUp:Z

    .line 3560
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    .line 3561
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    if-eqz v0, :cond_21

    const/high16 v3, 0x3f800000  # 1.0f

    .line 3562
    :cond_21
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 3561
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_2c

    .line 3565
    :cond_27
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p0, v0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->applyImmediately(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .registers 3

    .line 3084
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotificationTranslucency()V
    .registers 3

    .line 2680
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2681
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    .line 2684
    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2685
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2686
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    :cond_28
    return-void
.end method

.method private updatePanelExpanded()V
    .registers 3

    .line 2621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 2622
    :goto_e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eq v1, v0, :cond_1e

    .line 2623
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 2624
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 2625
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    :cond_1e
    return-void
.end method

.method private updateQSPulseExpansion()V
    .registers 3

    .line 2315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1e

    .line 2316
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2317
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 2316
    :goto_1b
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setShowCollapsedOnKeyguard(Z)V

    :cond_1e
    return-void
.end method

.method private updateQsState()V
    .registers 4

    .line 2138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 2139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 2142
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    .line 2143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-eqz v2, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v2, v1

    :goto_21
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 2146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 2147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_3c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v2, :cond_3c

    .line 2152
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    .line 2154
    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_41

    return-void

    .line 2155
    :cond_41
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateShowEmptyShadeView()V
    .registers 3

    .line 4056
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4058
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4059
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 4060
    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showEmptyShadeView(Z)V

    return-void
.end method

.method private updateStackScrollLayoutTranslationY()V
    .registers 4

    .line 5029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 5031
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_3d

    .line 5033
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    if-eq v0, v2, :cond_3d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->getCollapseSnoozeState()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 5034
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5036
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v2, :cond_38

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_38

    move v0, v1

    .line 5039
    :cond_38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private updateStatusBarIcons()V
    .registers 4

    .line 3700
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3701
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOpeningHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    if-eqz v0, :cond_29

    .line 3702
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    if-eqz v2, :cond_29

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_29

    move v0, v1

    .line 3705
    :cond_29
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_36

    .line 3706
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    .line 3707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_36
    return-void
.end method


# virtual methods
.method public addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3997
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVerticalTranslationListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 4005
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCloseQs(Z)V
    .registers 5

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 1143
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v2, :cond_a

    return-void

    .line 1146
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1147
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    :cond_17
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    const/4 v1, 0x2

    .line 1150
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    return-void
.end method

.method public animateToFullShade(J)V
    .registers 4

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 1063
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 1064
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 3982
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    int-to-float v1, v1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandOffset:F

    .line 3983
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    if-eqz p1, :cond_30

    const-wide/16 v1, 0xe

    const-wide/16 v3, 0x64

    .line 3985
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result p1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_20

    move p1, v0

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 3987
    :goto_21
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    if-eq p1, v1, :cond_30

    .line 3988
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    if-nez p1, :cond_30

    .line 3990
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_30
    return-void
.end method

.method public blockExpansionForCurrentTouch()V
    .registers 2

    .line 4031
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public clearNotificationEffects()V
    .registers 1

    .line 3720
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    return-void
.end method

.method public closeQs()V
    .registers 3

    .line 1131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1132
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    return-void
.end method

.method public collapse(ZF)V
    .registers 5

    .line 1119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1123
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1125
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1127
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    return-void
.end method

.method public computeMaxKeyguardNotifications(I)I
    .registers 14

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v0

    .line 978
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 980
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v3

    .line 981
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_26

    move v3, v5

    goto :goto_2c

    .line 982
    :cond_26
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 983
    :goto_2c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientIndicationBottomPadding:I

    .line 984
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 985
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getLogoutButtonHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    move v6, v0

    move v7, v4

    move v4, v6

    .line 987
    :goto_4b
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_ba

    .line 988
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 989
    instance-of v9, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v9, :cond_60

    goto :goto_9a

    .line 992
    :cond_60
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 993
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v10, :cond_73

    .line 994
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_73

    move v10, v2

    goto :goto_74

    :cond_73
    move v10, v0

    :goto_74
    if-eqz v10, :cond_77

    goto :goto_9a

    .line 998
    :cond_77
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    if-nez v10, :cond_84

    goto :goto_9a

    .line 1001
    :cond_84
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_8b

    goto :goto_9a

    .line 1004
    :cond_8b
    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v8, v7, v5

    if-ltz v8, :cond_9d

    if-ge v6, p1, :cond_9d

    add-int/lit8 v6, v6, 0x1

    :goto_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_9d
    neg-float p1, v3

    cmpl-float p1, v7, p1

    if-lez p1, :cond_ba

    add-int/2addr v4, v2

    .line 1010
    :goto_a3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v4, p1, :cond_b9

    .line 1011
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_b6

    return v6

    :cond_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_b9
    add-int/2addr v6, v2

    :cond_ba
    return v6
.end method

.method public createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .registers 1

    .line 4064
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p0

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 3455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3456
    iget v0, p0, Landroid/widget/FrameLayout;->mLeft:I

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/FrameLayout;->mTop:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/FrameLayout;->mBottom:I

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 3457
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_21

    .line 3460
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3463
    :goto_21
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_39

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3464
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_39
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 4902
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4904
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 4906
    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23

    :cond_22
    move v0, v1

    .line 4908
    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent ------ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4909
    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    if-nez v0, :cond_3f

    .line 4910
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_40

    :cond_3f
    const/4 v1, 0x1

    :cond_40
    return v1

    .line 4913
    :cond_41
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4918
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_13

    .line 4921
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 4925
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1d

    .line 4926
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenTouchStarted:Z

    .line 4929
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dozeTimeTick()V
    .registers 3

    .line 3954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    .line 3955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    .line 3956
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 3957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    :cond_14
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 4036
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    gestureExclusionRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_22

    .line 4039
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4041
    :cond_22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    if-eqz p0, :cond_29

    .line 4042
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardStatusView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public expand(Z)V
    .registers 2

    .line 2955
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    const/4 p1, 0x1

    .line 2956
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2959
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 2960
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    const/4 p1, 0x0

    .line 2961
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setFullyCollapsedOnKeyguardShade(Z)V

    :cond_15
    return-void
.end method

.method public expandWithQs()V
    .registers 4

    .line 1154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1158
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v2, "expandWithQs, expand qs directly if no notification"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V

    .line 1162
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1163
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    goto :goto_25

    :cond_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1165
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    :goto_25
    return-void
.end method

.method public expandWithoutQs()V
    .registers 3

    .line 1170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1171
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    goto :goto_f

    .line 1173
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    :goto_f
    return-void
.end method

.method public fling(FZ)V
    .registers 7

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1e

    const-string v2, "open"

    goto :goto_20

    :cond_1e
    const-string v2, "closed"

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_3b
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .registers 5

    .line 1704
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result p1

    .line 1707
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_9

    const/4 p1, 0x1

    :cond_9
    return p1
.end method

.method public flingSettings(FI)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2353
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FILjava/lang/Runnable;Z)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_b

    if-eq p2, v1, :cond_8

    move v2, v0

    goto :goto_e

    .line 2372
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_d

    .line 2369
    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_d
    int-to-float v2, v2

    .line 2378
    :goto_e
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1a

    if-eqz p3, :cond_19

    .line 2380
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void

    :cond_1a
    const/4 v3, 0x0

    if-nez p2, :cond_1f

    move p2, v1

    goto :goto_20

    :cond_1f
    move p2, v3

    :goto_20
    cmpl-float v4, p1, v0

    if-lez v4, :cond_26

    if-eqz p2, :cond_2c

    :cond_26
    cmpg-float v4, p1, v0

    if-gez v4, :cond_2f

    if-eqz p2, :cond_2f

    :cond_2c
    move p1, v0

    move v0, v1

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 2392
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v5, v4, v3

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p4, :cond_4a

    .line 2394
    sget-object p1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x170

    .line 2395
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_51

    .line 2397
    :cond_4a
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p4, v1, v3, v2, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :goto_51
    if-eqz v0, :cond_58

    const-wide/16 v2, 0x15e

    .line 2400
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2402
    :cond_58
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$GBIvrcRMfk5MdTVeindE6SW10Nw;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$GBIvrcRMfk5MdTVeindE6SW10Nw;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2405
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2415
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2416
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2417
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .registers 8

    if-nez p2, :cond_14

    .line 1190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 1191
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    return-void
.end method

.method public flingToShowWallpaper(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const/4 p4, 0x0

    if-eqz p1, :cond_6b

    if-nez p2, :cond_6

    goto :goto_6b

    .line 4674
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelDown()Z

    move-result v0

    .line 4675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 4676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x42480000  # 50.0f

    .line 4677
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v2

    mul-float/2addr v2, p2

    cmpl-float p2, v1, v2

    if-lez p2, :cond_6a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_6a

    .line 4678
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr v1, p1

    const/high16 p1, 0x40000000  # 2.0f

    cmpl-float p1, v1, p1

    if-lez p1, :cond_6a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz p1, :cond_6a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTranslating:Z

    if-nez p1, :cond_6a

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 4680
    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result p1

    if-nez p1, :cond_6a

    if-nez v0, :cond_6a

    .line 4682
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 4684
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->canFlingToBrowsePage()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 4687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingAnimation()V

    :cond_6a
    return p4

    .line 4671
    :cond_6b
    :goto_6b
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string p1, "e1 or e2 event null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method

.method public flingTopOverscroll(FZ)V
    .registers 6

    const/4 v0, 0x0

    .line 1821
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    const/4 v1, 0x0

    .line 1822
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1823
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1824
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_12

    if-eqz p2, :cond_12

    move p1, v0

    :cond_12
    if-eqz p2, :cond_1a

    .line 1825
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz p2, :cond_1a

    move p2, v1

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x1

    :goto_1b
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1824
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected fullyExpandedClearAllVisible()Z
    .registers 2

    .line 3298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3299
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .registers 1

    .line 4084
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method protected getClearAllHeight()I
    .registers 1

    .line 3309
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFooterViewHeight()I

    move-result p0

    return p0
.end method

.method public getCurrentPanelAlpha()F
    .registers 1

    .line 3469
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    int-to-float p0, p0

    return p0
.end method

.method public getEnablePullDownOnKeyguard()Z
    .registers 1

    .line 5419
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getEnablePullDownOnKeyguard()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 3

    .line 3245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3246
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    goto :goto_14

    .line 3247
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public getLeftPreview()Landroid/view/View;
    .registers 3

    .line 3259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3260
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p0

    goto :goto_14

    .line 3261
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public getMZPayIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 1

    .line 4588
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getMZPayView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method protected getMaxPanelHeight()I
    .registers 3

    .line 2490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeightBypass()I

    move-result p0

    return p0

    .line 2493
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeightNonBypass()I

    move-result p0

    return p0
.end method

.method public getMaxTranslationDistance()F
    .registers 5

    .line 3179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method protected getOpeningHeight()F
    .registers 1

    .line 1463
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method protected getOverExpansionAmount()F
    .registers 2

    .line 2704
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p0

    return p0
.end method

.method protected getOverExpansionPixels()F
    .registers 2

    .line 2709
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result p0

    return p0
.end method

.method public getQsExpansionHeight()F
    .registers 1

    .line 5291
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    return p0
.end method

.method public getQsMinExpansionHeight()I
    .registers 1

    .line 5295
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    return p0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 3

    .line 3252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3253
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    goto :goto_14

    .line 3254
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public getRightPreview()Landroid/view/View;
    .registers 3

    .line 3266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3267
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    goto :goto_14

    .line 3268
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public getStackScrollerPaddingRegular(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .registers 3

    .line 5310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-ne p1, v0, :cond_f

    .line 5311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingRegular:I

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hasCustomClock()Z
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    .line 3731
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasPulsingNotifications()Z
    .registers 1

    .line 4080
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result p0

    return p0
.end method

.method public hasVisibleNotifications()Z
    .registers 1

    .line 5263
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .registers 3

    .line 3820
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

    if-eqz v0, :cond_7

    .line 3821
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    return p0

    .line 3823
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 3824
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 3827
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-nez p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/NotificationShelf;)V
    .registers 9

    .line 4108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 4110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setNotificationPanel(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 4111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 4112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 4114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 4115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4116
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p3, p6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 4117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    .line 4119
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setNotificationPanel(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 4120
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p3, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 4121
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 4123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 4124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    return-void
.end method

.method public instantExpandNotificatipnPanelWithQsOnKeyguardShade()V
    .registers 2

    .line 5076
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 5077
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 5078
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V

    .line 5080
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpandNotificatipnPanelOnKeyguardShade()V

    return-void
.end method

.method protected isClearAllVisible()Z
    .registers 1

    .line 3304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewContentVisible()Z

    move-result p0

    return p0
.end method

.method public isDozing()Z
    .registers 1

    .line 3360
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return p0
.end method

.method public isExpanding()Z
    .registers 1

    .line 2544
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    return p0
.end method

.method public isFullWidth()Z
    .registers 1

    .line 3696
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .registers 6

    .line 1361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelBottomReservedHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_11

    return v1

    .line 1366
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    goto :goto_1a

    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    :goto_1a
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1368
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1369
    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v2, p1, v0

    .line 1371
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_3a

    cmpg-float p2, v0, p1

    if-gez p2, :cond_3a

    .line 1372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method

.method protected isInHorizontalEmptyArea(F)Z
    .registers 6

    .line 4506
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    :goto_9
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4508
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 4509
    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v3, v1, p1

    if-gez v3, :cond_21

    .line 4511
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_2a

    :cond_21
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    return v2
.end method

.method public isInSettings()Z
    .registers 1

    .line 2540
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return p0
.end method

.method protected isKeyguardNormalMode()Z
    .registers 2

    .line 4398
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-eqz p0, :cond_10

    .line 4399
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method protected isKeyguardShadeMode()Z
    .registers 2

    .line 4404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-eqz p0, :cond_10

    .line 4405
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method protected isKeyguardShowing()Z
    .registers 1

    .line 4411
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return p0
.end method

.method public isLaunchTransitionFinished()Z
    .registers 1

    .line 3335
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public isLaunchTransitionRunning()Z
    .registers 1

    .line 3339
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public isLaunchingAffordanceWithPreview()Z
    .registers 2

    .line 3783
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHasPreview:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isNotificationFilterPanelShowing()Z
    .registers 1

    .line 4317
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->isNotificationFilterPanelShowing()Z

    move-result p0

    return p0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .registers 2

    .line 3725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_12

    :cond_c
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isQsDetailShowing()Z
    .registers 1

    .line 3322
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method public isQsExpanded()Z
    .registers 1

    .line 3318
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return p0
.end method

.method public isQsTilesEditMode()Z
    .registers 1

    .line 4502
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method protected isScrolledToBottom()Z
    .registers 2

    .line 2475
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_b

    .line 2476
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result p0

    return p0

    .line 2480
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2481
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public isShowingFilterPanel()Z
    .registers 1

    .line 5025
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    return p0
.end method

.method protected isTrackingBlocked()Z
    .registers 2

    .line 3314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_c

    :cond_8
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockingExpansionForCurrentTouch:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public synthetic lambda$flingSettings$3$NotificationPanelView(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 2403
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationPanelView()V
    .registers 1

    .line 513
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_7

    .line 514
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_7
    return-void
.end method

.method public synthetic lambda$new$1$NotificationPanelView(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 526
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlpha:F

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    return-void
.end method

.method public launchCamera(ZI)V
    .registers 4

    const/4 p1, 0x1

    if-ne p2, p1, :cond_8

    const-string p2, "power_double_tap"

    .line 3736
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_1c

    :cond_8
    if-nez p2, :cond_10

    const-string/jumbo p2, "wiggle_gesture"

    .line 3738
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_1c

    :cond_10
    const/4 v0, 0x2

    if-ne p2, v0, :cond_18

    const-string p2, "lift_to_launch_ml"

    .line 3740
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_1c

    :cond_18
    const-string p2, "lockscreen_affordance"

    .line 3744
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 3750
    :goto_1c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p2

    if-nez p2, :cond_25

    .line 3751
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    .line 3755
    :cond_25
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHasPreview:Z

    return-void
.end method

.method protected loadDimens()V
    .registers 4

    .line 632
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 633
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd  # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 638
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v2}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->getQsPeekHeight(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 639
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 642
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->header_notifications_collide_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 643
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->unlock_move_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 645
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->qs_falsing_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 647
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_min_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    .line 649
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->max_notification_fadeout_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxFadeoutHeight:I

    .line 651
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    .line 653
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    .line 655
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShelfHeight:I

    .line 656
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkIconSize:I

    .line 658
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 660
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpInset:I

    return-void
.end method

.method protected mzGetHeaderTranslation()F
    .registers 2

    .line 4485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p0

    :goto_11
    const/4 v0, 0x0

    .line 4486
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public mzPositionClockAndNotifications()V
    .registers 1

    .line 4393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void
.end method

.method public mzUpdateResources()V
    .registers 3

    .line 4490
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->getQsPeekHeight(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 4493
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_header_height_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2c

    .line 4494
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4495
    :goto_2c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x0

    goto :goto_37

    :cond_34
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    :goto_37
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 4496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_42

    .line 4497
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    :cond_42
    return-void
.end method

.method public needsAntiFalsing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected notifyBarPanelExpansionChanged()V
    .registers 4

    .line 4426
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 4427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_21

    .line 4429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 4430
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    :cond_21
    return-void
.end method

.method public on3PartWallpaperShow(Z)V
    .registers 4

    .line 4933
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 4934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    if-eqz v0, :cond_15

    .line 4935
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_15
    if-eqz p1, :cond_59

    .line 4938
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz p1, :cond_35

    .line 4939
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenOnFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 4940
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4941
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onShow(Z)V

    const-string p1, "3PART ONSHOW "

    .line 4942
    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 4945
    :cond_35
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6a

    .line 4946
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_48

    .line 4947
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4949
    :cond_48
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p1, "3PART visible "

    .line 4950
    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 4951
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateColors()V

    goto :goto_6a

    .line 4954
    :cond_59
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4956
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4957
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardInjectorFrame:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_6a

    .line 4958
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .registers 2

    const/4 v0, 0x0

    .line 3762
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onAnimationToSideEnded()V
    .registers 2

    const/4 v0, 0x0

    .line 3158
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v0, 0x1

    .line 3159
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 3160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 3161
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3162
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3164
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->readyForKeyguardDone()V

    return-void
.end method

.method public onAnimationToSideStartMeizuPay()V
    .registers 2

    .line 4516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_c

    .line 4517
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchMeizuPay()V

    .line 4518
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectSlideUpMeizuPay(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .registers 12

    .line 3112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_d

    :cond_8
    if-nez p1, :cond_c

    move p1, v1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 3113
    :goto_d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v0, 0x0

    .line 3114
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 3116
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 3117
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-eqz p1, :cond_4f

    .line 3119
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbe

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 3121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    .line 3122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 3123
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_83

    .line 3131
    :cond_49
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_83

    .line 3134
    :cond_4f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    const-string v0, "lockscreen_affordance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 3136
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbd

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 3138
    :cond_60
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    .line 3139
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 3140
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_83

    .line 3149
    :cond_7c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 3152
    :goto_83
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLaunchTransitionTimeout()V

    .line 3153
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 3075
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    .line 3076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 3078
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewPadding()V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 609
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onAttachedToWindow()V

    .line 610
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    const-string v2, "QS"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 611
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 612
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 613
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onThemeChanged()V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .registers 4

    .line 4022
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    return-void
.end method

.method public onCameraStateChange(Z)V
    .registers 3

    .line 4558
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    if-eq v0, p1, :cond_38

    .line 4559
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 4561
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayShowing:Z

    .line 4562
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getInstance(Landroid/content/Context;)Lkeyguard/util/BottomAreaViewBackgroudUtil;

    move-result-object p1

    invoke-virtual {p1}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getCameraDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_22

    .line 4563
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getInstance(Landroid/content/Context;)Lkeyguard/util/BottomAreaViewBackgroudUtil;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->setBackground(Z)V

    goto :goto_38

    .line 4565
    :cond_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getInstance(Landroid/content/Context;)Lkeyguard/util/BottomAreaViewBackgroudUtil;

    move-result-object p0

    invoke-virtual {p0}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getCameraDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_38

    .line 4568
    :cond_32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 3099
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 3100
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_e

    .line 3101
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    goto :goto_1d

    .line 3103
    :cond_e
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz p1, :cond_1d

    .line 3104
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 3105
    invoke-virtual {p0, v1, v4, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected onClosingFinished()V
    .registers 2

    .line 3631
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 3632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    const/4 v0, 0x0

    .line 3633
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 3058
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3059
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3060
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 3062
    :cond_14
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    if-eq v0, v1, :cond_1d

    .line 3063
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    .line 3065
    :cond_1d
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 3067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewPadding()V

    .line 3068
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBottomStackPeekSize(Z)V

    .line 3069
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBottomStackPeekSize(Z)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 695
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 622
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 623
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    const-string v2, "QS"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 624
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 625
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 626
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .registers 3

    .line 3922
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    .line 3923
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLinearDarkAmount:F

    .line 3924
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    .line 3925
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkAmount(F)V

    .line 3926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 3494
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDynamicPrivacyChanged()V
    .registers 3

    .line 4140
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLinearDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 4143
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .registers 3

    .line 3415
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    return-void
.end method

.method protected onExpandingFinished()V
    .registers 5

    .line 2879
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 2880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 2881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    const/4 v0, 0x0

    .line 2882
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 2884
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2894
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2b

    .line 2901
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2903
    :goto_2b
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2904
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 2905
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 2906
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    const/4 v1, 0x0

    .line 2907
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2908
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    const/4 v1, 0x0

    .line 2909
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 2912
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_9c

    .line 2913
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v1

    if-nez v1, :cond_52

    .line 2914
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 2916
    :cond_52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 2917
    const-class v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 2918
    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2919
    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->capturePicture()V

    .line 2921
    :cond_69
    const-class v1, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    .line 2922
    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->isSwitching()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 2923
    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->notifyPanelCollapse()V

    .line 2925
    :cond_7a
    const-class v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 2926
    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 2927
    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->running(Z)V

    .line 2930
    :cond_8b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSwitcherViewVisibility(Z)V

    .line 2931
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v1, :cond_9c

    .line 2932
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStackScrollLayoutTranslationY()V

    .line 2933
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    :cond_9c
    return-void
.end method

.method protected onExpandingStarted()V
    .registers 4

    .line 2850
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 2851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    const/4 v0, 0x1

    .line 2852
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2853
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 2854
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_16

    .line 2855
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2859
    :cond_16
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v1, :cond_24

    .line 2860
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 2862
    :cond_24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    .line 2863
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->tickerHalt()V

    .line 2864
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseHeadsup()V

    .line 2869
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v1, :cond_34

    return-void

    .line 2870
    :cond_34
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    .line 2873
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 561
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 562
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 564
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 567
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 568
    sget v1, Lcom/android/systemui/R$id;->big_clock_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setBigClockContainer(Landroid/view/ViewGroup;)V

    .line 571
    sget v0, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 572
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$hB_2bxao9PtuBwZm92el8Nt3UKY;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$hB_2bxao9PtuBwZm92el8Nt3UKY;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 577
    sget v0, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 578
    sget v0, Lcom/android/systemui/R$id;->qs_navbar_scrim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 579
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initBottomArea()V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 584
    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 602
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initKeyguard()V

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDismissViewAndFilterPanel()V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 3591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3592
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    :cond_10
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .registers 5

    .line 3524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setInHeadsUpPinnedMode(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    .line 3526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    goto :goto_1b

    .line 3529
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAnimatingAway(Z)V

    .line 3530
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 3533
    :goto_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGestureExclusionRect()V

    .line 3534
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpPinnedMode:Z

    .line 3535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeadsUpVisibility()V

    .line 3536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarForHeadsUp()V

    .line 3539
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpPinnedMode:Z

    if-eqz p1, :cond_4d

    .line 3540
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetPanelNotificationsScale()V

    .line 3542
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getHeadsupInset()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3543
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBlurBackgroundAlpha(F)V

    .line 3544
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSwitcherViewVisibility(Z)V

    goto :goto_5c

    .line 3546
    :cond_4d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStackScrollLayoutTranslationY()V

    .line 3547
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSwitcherViewVisibility(Z)V

    .line 3548
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eqz p0, :cond_5c

    .line 3549
    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    .line 3611
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 3602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3603
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3604
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    const/4 v1, 0x0

    .line 3603
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 3605
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpIsVisible()V

    :cond_1f
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .registers 4

    if-nez p1, :cond_7

    .line 3021
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_13

    .line 3024
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInterpolatedDarkAmount:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_13

    const/4 p2, 0x1

    .line 3025
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 3027
    :cond_13
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p2

    .line 3028
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_20

    .line 3029
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    if-eqz p2, :cond_2f

    if-eq p1, p2, :cond_2b

    .line 3032
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-ne p1, p2, :cond_2f

    :cond_2b
    const/4 p1, 0x0

    .line 3033
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 3035
    :cond_2f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    return-void
.end method

.method protected onHeightUpdated(F)V
    .registers 4

    .line 2549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_8

    .line 2550
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFilterPanelHeightUpdated(F)V

    return-void

    .line 2554
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_21

    .line 2559
    :cond_18
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1e

    goto :goto_21

    .line 2562
    :cond_1e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2591
    :cond_21
    :goto_21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v0, :cond_2f

    :cond_29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2592
    :cond_2f
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 2593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    goto :goto_48

    .line 2594
    :cond_3a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_48

    .line 2595
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 2599
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2600
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 2601
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 2602
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 2603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    .line 2604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGestureExclusionRect()V

    .line 2607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock()V

    .line 2609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->getCollapseSnoozeState()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 2610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStackScrollLayoutTranslationY()V

    .line 2611
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->panelViewHeightUpdateAnimation(F)V

    :cond_6b
    return-void
.end method

.method public onHintFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 4581
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 4582
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 4583
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method public onIconClicked(ZZ)V
    .registers 10

    .line 4593
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :cond_c
    :goto_c
    if-nez p1, :cond_6b

    if-nez p2, :cond_6b

    .line 4595
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartWallpaper:Z

    if-nez p1, :cond_6a

    .line 4596
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartWallpaper:Z

    .line 4597
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 4598
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 4599
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, 0x3f000000  # 0.5f

    const v5, 0x3f4ccccd  # 0.8f

    const v6, 0x3e99999a  # 0.3f

    invoke-direct {v2, v6, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 4600
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 4601
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4608
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4609
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 4610
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 4611
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v6, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 4612
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 4613
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6a
    return-void

    .line 4618
    :cond_6b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_70

    return-void

    .line 4621
    :cond_70
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 4622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    if-eqz p2, :cond_7b

    .line 4625
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onMeizuPayStateChange(Z)V

    goto :goto_7e

    .line 4627
    :cond_7b
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onCameraStateChange(Z)V

    .line 4630
    :goto_7e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimation(ZLjava/lang/Runnable;Z)V

    if-nez p1, :cond_a1

    if-eqz p2, :cond_8d

    goto :goto_a1

    .line 4646
    :cond_8d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLeftVoiceAssist()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 4647
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onVoiceAssistHintStarted()V

    goto :goto_ae

    .line 4649
    :cond_9b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPhoneHintStarted()V

    goto :goto_ae

    :cond_a1
    :goto_a1
    if-eqz p2, :cond_a9

    .line 4641
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMeizuPayHintStarted()V

    goto :goto_ae

    .line 4643
    :cond_a9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraHintStarted()V

    :goto_ae
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v1, 0x0

    const-string v2, "PanelTouch"

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_11
    const-string p0, "intercept for detail or editmode"

    .line 1198
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1202
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInHorizontalEmptyArea(F)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    const-string p0, "intercept for horizontalEmptyArea"

    .line 1203
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1207
    :cond_28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz v0, :cond_36

    const-string v0, "intercept for filter panel"

    .line 1208
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1212
    :cond_36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-nez v0, :cond_144

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_144

    .line 1216
    :cond_44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_4e

    const-string p0, "intercept for closingWithAlphaFadeOut"

    .line 1217
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1223
    :cond_4e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v0, :cond_12e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto/16 :goto_12e

    .line 1227
    :cond_60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_71

    const-string p0, "intercept for isBouncerShowing "

    .line 1231
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1234
    :cond_71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1235
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1236
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "panel_open"

    invoke-static {p1, v0, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1237
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p1, "panel_open_peek"

    invoke-static {p0, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p0, "intercept for headsup touch "

    .line 1238
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1241
    :cond_97
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownY:F

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1242
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_ab

    return v3

    .line 1246
    :cond_ab
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string p0, "intercept for qsIntercept "

    .line 1247
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1251
    :cond_bd
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->getCollapseSnoozeState()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1252
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1253
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v3, 0xc8

    .line 1260
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1261
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string p0, "intercept for headsup snooze "

    .line 1262
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1266
    :cond_ed
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_f5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_129

    :cond_f5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz v0, :cond_129

    .line 1268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_103

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_129

    .line 1269
    :cond_103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_10f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_129

    .line 1270
    :cond_10f
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_129

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_129

    const-string p0, "intercept for affordanceHelper"

    .line 1271
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1276
    :cond_129
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1224
    :cond_12e
    :goto_12e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intercept for mBlockTouches "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    :goto_144
    return v1
.end method

.method public onKeyguardDoneCancel()V
    .registers 3

    .line 5305
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 778
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 779
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_13

    move p1, p3

    goto :goto_14

    :cond_13
    move p1, p4

    :goto_14
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setIsFullWidth(Z)V

    .line 781
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    if-eqz p1, :cond_23

    .line 782
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFilterPanelHeightUpdated(F)V

    return-void

    .line 786
    :cond_23
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setPivotX(F)V

    .line 787
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const p2, 0x3eb0c000

    .line 788
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->getClockTextSize()F

    move-result p5

    mul-float/2addr p5, p2

    .line 787
    invoke-virtual {p1, p5}, Landroid/widget/GridLayout;->setPivotY(F)V

    .line 792
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_65

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p1

    if-eqz p1, :cond_48

    move p1, p4

    goto :goto_51

    :cond_48
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr p1, p2

    :goto_51
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 794
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 795
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr p2, p5

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 798
    :cond_65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 799
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz p1, :cond_70

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez p1, :cond_76

    .line 801
    :cond_70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 803
    :cond_76
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float p2, p1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float p1, p1

    .line 804
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 805
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    goto :goto_93

    .line 814
    :cond_86
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez p1, :cond_93

    .line 815
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr p1, p2

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 817
    :cond_93
    :goto_93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 818
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 825
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGestureExclusionRect()V

    .line 830
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_af

    .line 831
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 832
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    :cond_af
    return-void
.end method

.method public onMakeStatusBar()V
    .registers 3

    .line 4867
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V

    .line 4868
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4869
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V

    :cond_1d
    return-void
.end method

.method public onMeizuPayStateChange(Z)V
    .registers 5

    const-string v0, "com.meizu.mznfcpay"

    .line 4535
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayShowing:Z

    if-eq v1, p1, :cond_3d

    .line 4536
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayShowing:Z

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    .line 4538
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    .line 4540
    :try_start_d
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "keyguard_splash"

    const-string v2, "drawable"

    .line 4541
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4542
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_29

    .line 4543
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_29} :catch_29

    .line 4547
    :catch_29
    :cond_29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d

    .line 4549
    :cond_31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    .line 4550
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMeizuPayDrawable:Landroid/graphics/drawable/Drawable;

    .line 4551
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaViewBG:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method protected onMiddleClicked()Z
    .registers 4

    .line 3420
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    return v2

    .line 3436
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_15

    .line 3437
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToKeyguard()V

    :cond_15
    return v2

    .line 3422
    :cond_16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    if-nez v0, :cond_2f

    .line 3423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3424
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    goto :goto_2f

    .line 3426
    :cond_28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbc

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    :cond_2f
    :goto_2f
    return v2

    :cond_30
    return v1
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 711
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateViews()V

    return-void
.end method

.method public onOverscrollTopChanged(FZ)V
    .registers 6

    .line 1795
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguard:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEnablePullDownOnKeyguardFromStatusBarOnly:Z

    if-eqz v0, :cond_13

    :cond_12
    return-void

    .line 1802
    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenTouchStarted:Z

    if-eqz v0, :cond_18

    return-void

    .line 1807
    :cond_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1808
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    move p1, v1

    :cond_21
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_28

    goto :goto_29

    :cond_28
    move p1, v1

    :goto_29
    cmpl-float v0, p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    if-eqz p2, :cond_33

    move p2, v2

    goto :goto_34

    :cond_33
    move p2, v1

    .line 1812
    :goto_34
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    if-eqz v0, :cond_3a

    move v1, v2

    .line 1813
    :cond_3a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1814
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1816
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    return-void
.end method

.method protected onPullNotificationPanelOnKeyguardShade()V
    .registers 3

    .line 4416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 4417
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 4418
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    :cond_11
    return-void
.end method

.method protected onQsExpansionStarted(I)V
    .registers 3

    .line 1847
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1848
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1852
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    .line 1853
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1855
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_20

    .line 1860
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestFaceAuth()V

    :cond_20
    return-void
.end method

.method public onQsHeightChanged()V
    .registers 3

    .line 3043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 3044
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_20

    .line 3045
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 3046
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 3047
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 3049
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3050
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 3052
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .registers 2

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    .line 3089
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_17

    .line 3090
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3091
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 3093
    :cond_15
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    :cond_17
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 2

    .line 4874
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    .line 4875
    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_17

    .line 4878
    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    :cond_17
    const/4 v0, 0x0

    .line 4880
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideDown:Z

    .line 4881
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasSlideUp:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 2

    .line 4885
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    .line 4886
    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_29

    .line 4890
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenOnFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPauseAndHideAfterKeyguardGone:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4892
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onShow(Z)V

    :cond_29
    return-void
.end method

.method public onScreenTurningOn()V
    .registers 1

    .line 3410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 11

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v0

    .line 1881
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    .line 1882
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_14

    move v5, v3

    goto :goto_15

    :cond_14
    move v5, v4

    .line 1886
    :goto_15
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v6, :cond_2e

    if-eqz v5, :cond_2e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldShowLockscreenNotifications()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1888
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 1889
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    const/4 v6, 0x0

    .line 1890
    invoke-direct {p0, v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    goto :goto_44

    :cond_2e
    if-eqz v5, :cond_38

    if-eqz v5, :cond_44

    .line 1891
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldShowLockscreenNotifications()Z

    move-result v6

    if-nez v6, :cond_44

    .line 1893
    :cond_38
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 1895
    :cond_44
    :goto_44
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1896
    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_5e

    .line 1898
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1899
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    goto :goto_63

    .line 1902
    :cond_5e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v1, v7}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1906
    :goto_63
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    .line 1907
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1909
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_70

    .line 1910
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-interface {v1, v6}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    :cond_70
    const/4 v1, 0x2

    if-ne v2, v3, :cond_8d

    if-nez v0, :cond_77

    if-ne p1, v1, :cond_8d

    .line 1915
    :cond_77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1916
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-ne p1, v1, :cond_81

    const-wide/16 v0, 0x0

    goto :goto_87

    .line 1917
    :cond_81
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .line 1918
    :goto_87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    goto :goto_c3

    :cond_8d
    if-ne v2, v1, :cond_a5

    if-ne p1, v3, :cond_a5

    const-wide/16 v0, 0x168

    .line 1921
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    .line 1922
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 1925
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez p1, :cond_c3

    .line 1926
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_c3

    .line 1929
    :cond_a5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1930
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v5, :cond_b2

    move v0, v4

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x4

    :goto_b3
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    if-eqz v5, :cond_c3

    .line 1931
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq v2, p1, :cond_c3

    .line 1932
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_c3

    .line 1933
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 1937
    :cond_c3
    :goto_c3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarForHeadsUp()V

    if-eqz v5, :cond_d7

    .line 1938
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result p1

    if-nez p1, :cond_d7

    .line 1939
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 1943
    :cond_d7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQSPulseExpansion()V

    .line 1944
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->maybeAnimateBottomAreaAlpha()V

    .line 1945
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetHorizontalPanelPosition()V

    .line 1946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1949
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getEnablePullDownOnKeyguard()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setEnablePullDownOnKeyguard(Z)V

    .line 1950
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewParent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_f5

    goto :goto_f6

    :cond_f5
    move v7, v4

    :goto_f6
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1951
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setKeyguardNormalMode(Z)V

    .line 1952
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBottomStackPeekSize(Z)V

    .line 1953
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBottomStackPeekSize(Z)V

    .line 1954
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p1

    if-eqz p1, :cond_114

    move p1, v4

    goto :goto_11d

    :cond_114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr p1, v0

    :goto_11d
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1955
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setKeyguardShowing(Z)V

    if-eqz v5, :cond_13c

    .line 1958
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetWallpaperStartState()V

    .line 1959
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result p1

    if-nez p1, :cond_13c

    .line 1960
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1963
    :cond_13c
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setKeyguardShowing(Z)V

    return-void
.end method

.method public onSwipingAborted()V
    .registers 2

    .line 3202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    .line 3203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->unbindCameraPrewarmService(Z)V

    return-void
.end method

.method public onSwipingStarted(Z)V
    .registers 5

    .line 3185
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 3189
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    .line 3190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    if-nez p1, :cond_1e

    move p1, v2

    goto :goto_1f

    :cond_1e
    move p1, v1

    :cond_1f
    :goto_1f
    if-eqz p1, :cond_26

    .line 3193
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->bindCameraPrewarmService()V

    .line 3195
    :cond_26
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 3196
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 3197
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    return-void
.end method

.method public onThemeChanged()V
    .registers 3

    .line 700
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    .line 701
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeResId:I

    if-ne v1, v0, :cond_d

    return-void

    .line 704
    :cond_d
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeResId:I

    .line 706
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateViews()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    const-string v1, "PanelTouch"

    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "panel disable!"

    .line 1470
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1474
    :cond_19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingDetail:Z

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    return v2

    .line 1478
    :cond_28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_2d

    return v2

    .line 1482
    :cond_2d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowingFilterPanel:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_36

    .line 1483
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    .line 1488
    :cond_36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v0, :cond_152

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_50

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInHorizontalEmptyArea(F)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_152

    .line 1496
    :cond_50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p0, "intercept for bouncerShowingScrimmed"

    .line 1497
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1502
    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_6b

    .line 1503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6d

    .line 1504
    :cond_6b
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockingExpansionForCurrentTouch:Z

    .line 1509
    :cond_6d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastEventSynthesizedDown:Z

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7a

    .line 1510
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 1512
    :cond_7a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-nez v0, :cond_95

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDownY:F

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1514
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_95

    return v3

    .line 1518
    :cond_95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 1519
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1520
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1521
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v4, "panel_open_peek"

    invoke-static {v0, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1525
    :cond_b2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->getCollapseSnoozeState()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1526
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1527
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1528
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 1535
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1536
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v2

    .line 1542
    :cond_e6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_ee

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_10e

    :cond_ee
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_10e

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz v0, :cond_10e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_10e

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 1545
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_10e

    .line 1546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_10f

    :cond_10e
    move v0, v2

    .line 1548
    :goto_10f
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-eqz v4, :cond_119

    const-string p0, "intercept for mOnlyAffordanceInThisMotion"

    .line 1549
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1552
    :cond_119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1554
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v1

    if-nez v1, :cond_12f

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12f

    return v3

    .line 1557
    :cond_12f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_142

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_142

    .line 1558
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v4, "panel_open"

    invoke-static {v1, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1562
    :cond_142
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 1563
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_151

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    if-nez p0, :cond_151

    if-eqz p1, :cond_152

    :cond_151
    move v2, v3

    :cond_152
    :goto_152
    return v2
.end method

.method protected onTrackingStarted()V
    .registers 3

    .line 2986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    .line 2987
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 2988
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 2989
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 2992
    :cond_1a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    .line 2996
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .registers 5

    .line 3001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    .line 3002
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    .line 3004
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 3007
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    if-eqz p1, :cond_34

    .line 3008
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eq p1, v0, :cond_1f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    .line 3010
    :cond_1f
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result p1

    if-nez p1, :cond_34

    .line 3011
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzReset(Z)V

    :cond_34
    return-void
.end method

.method public onTranslationChanged(FZZZ)V
    .registers 9

    .line 4329
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_7f

    if-nez p2, :cond_7f

    .line 4330
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 4331
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintIconVisible()Z

    move-result p2

    .line 4332
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getKeyguardFingerprintIconVisbile()Z

    move-result p3

    .line 4333
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43480000  # 200.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_56

    if-eqz p2, :cond_4a

    .line 4335
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setPanelview(Z)V

    .line 4336
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    :cond_4a
    if-eqz p3, :cond_7f

    .line 4340
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    goto :goto_7f

    .line 4342
    :cond_56
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41200000  # 10.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7f

    if-nez p2, :cond_74

    .line 4344
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setPanelview(Z)V

    .line 4345
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    :cond_74
    if-nez p3, :cond_7f

    .line 4348
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    .line 4355
    :cond_7f
    :goto_7f
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTranslating:Z

    .line 4356
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetTranslationState()V

    float-to-int p2, p1

    .line 4357
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateBottomAreaViewBGClipBound(I)V

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_a4

    .line 4360
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideContent:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4361
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIsKeyguardState()Z

    move-result p1

    if-eqz p1, :cond_ef

    if-eqz p4, :cond_a0

    .line 4363
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onMeizuPayStateChange(Z)V

    goto :goto_ef

    .line 4365
    :cond_a0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onCameraStateChange(Z)V

    goto :goto_ef

    :cond_a4
    cmpl-float p3, p1, p2

    if-lez p3, :cond_e5

    const/high16 p3, 0x3f800000  # 1.0f

    .line 4370
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CUSTOM_ENTRY_FADE_IN_DISTANCE:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    neg-float p1, p1

    .line 4372
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4373
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4374
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4376
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CUSTOM_ENTRY_FADE_IN_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_ef

    .line 4378
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4379
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4380
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4381
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_ef

    .line 4386
    :cond_e5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideContent:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4387
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_ef
    :goto_ef
    return-void
.end method

.method protected onUnlockHintFinished()V
    .registers 2

    .line 3233
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintFinished()V

    .line 3234
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .registers 2

    .line 3239
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    .line 3240
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public onUpdateRowStates()V
    .registers 1

    .line 4076
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUpdateRowStates()V

    return-void
.end method

.method public onZenChanged(I)V
    .registers 2

    .line 4052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    return-void
.end method

.method public openQs()V
    .registers 3

    .line 4858
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    const/4 v0, 0x1

    .line 4859
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 4860
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v1, :cond_10

    .line 4862
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(FZ)V

    :cond_10
    return-void
.end method

.method public releaseHeadsup()V
    .registers 2

    .line 5299
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_11
    return-void
.end method

.method public removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 4001
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVerticalTranslationListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 4009
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .registers 4

    .line 2306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateTopPadding(FZ)V

    .line 2307
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    :cond_18
    return-void
.end method

.method protected resetPanelNotificationsScale()V
    .registers 2

    .line 5046
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_9

    const/high16 v0, 0x3f800000  # 1.0f

    .line 5047
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setChildScale(F)V

    :cond_9
    return-void
.end method

.method public resetViews(Z)V
    .registers 11

    const/4 v0, 0x0

    .line 1075
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 1076
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 1078
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenTouchStarted:Z

    .line 1079
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1080
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V

    goto :goto_26

    .line 1082
    :cond_19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-nez v1, :cond_26

    .line 1083
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzReset(Z)V

    const-string v1, "lockscreen_affordance"

    .line 1084
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 1087
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 1091
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1092
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->closeDetailImmediately()V

    :cond_44
    const/4 v1, 0x1

    if-eqz p1, :cond_4b

    .line 1097
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs(Z)V

    goto :goto_4e

    .line 1099
    :cond_4b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 1101
    :goto_4e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    xor-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1103
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 1106
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v4, v1, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1108
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 1109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->isNotificationFilterPanelShowing()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 1111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    .line 1113
    :cond_7b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetPeekTouching()V

    return-void
.end method

.method public resetWallpaperStartState()V
    .registers 2

    const/4 v0, 0x0

    .line 4897
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartWallpaper:Z

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .registers 2

    .line 4092
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .registers 2

    .line 4088
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    if-eqz p2, :cond_15

    .line 4656
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 4658
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/GestureDetector;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_15
    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .registers 6

    .line 3902
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 3903
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 3904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3905
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    if-eqz p1, :cond_1c

    .line 3908
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3911
    :cond_1c
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_24

    const/4 v0, 0x2

    if-ne p3, v0, :cond_27

    .line 3913
    :cond_24
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    :cond_27
    if-eqz p1, :cond_2c

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    .line 3917
    :goto_2d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setDozeAmount(FZ)V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .registers 3

    const v0, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, v0

    .line 3347
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 3348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .registers 3

    .line 3580
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    .line 3581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 3582
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeadsUpVisibility()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .registers 2

    .line 4014
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .registers 4

    .line 3616
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 3617
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3618
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method protected setHorizontalPanelTranslation(F)V
    .registers 4

    .line 3669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 3670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3671
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_21

    .line 3673
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 2

    .line 772
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 773
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 2

    .line 3406
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public setLaunchAffordanceListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 3343
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnReinflationListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 4147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnReinflationListener:Ljava/lang/Runnable;

    return-void
.end method

.method protected setOverExpansion(FZ)V
    .registers 6

    .line 2968
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v0, :cond_9

    goto :goto_27

    .line 2971
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 2972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    .line 2974
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    goto :goto_22

    .line 2977
    :cond_1d
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2980
    :goto_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public setPanelAlpha(IZ)Z
    .registers 6

    .line 3473
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlpha:I

    if-eq v0, p1, :cond_17

    .line 3474
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlpha:I

    .line 3475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v1, p1

    const/16 v2, 0xff

    if-ne p1, v2, :cond_10

    .line 3476
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_12

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 3475
    :goto_12
    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .registers 2

    .line 3489
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelAlphaInternal(F)V
    .registers 4

    float-to-int p1, p1

    .line 3483
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 3484
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 3485
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .registers 2

    .line 3716
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setPulseReason(I)V
    .registers 2

    .line 4151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseReason(I)V

    return-void
.end method

.method public setPulsing(Z)V
    .registers 6

    .line 3930
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    .line 3931
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    .line 3932
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    .line 3933
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    if-eqz v0, :cond_1d

    .line 3935
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 3939
    :cond_1d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v1, :cond_27

    .line 3940
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 3942
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulsing(ZZ)V

    .line 3943
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setPulsing(Z)V

    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .registers 2

    .line 1068
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1069
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_7

    return-void

    .line 1070
    :cond_7
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .registers 3

    .line 3398
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 3399
    :goto_7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v0, :cond_e

    .line 3401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    :cond_e
    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .registers 2

    .line 3962
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .registers 4

    .line 3884
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setTouchAndAnimationDisabled(Z)V

    if-eqz p1, :cond_17

    .line 3885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_17

    .line 3886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzReset(Z)V

    .line 3888
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 3890
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 3623
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x1

    .line 3624
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    :cond_8
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .registers 2

    .line 3977
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUserSetupComplete:Z

    .line 3978
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .registers 3

    .line 1724
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldGestureWaitForTouchSlop()Z
    .registers 3

    .line 1715
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1716
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectingSynthesizedDown:Z

    return v1

    .line 1719
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_12

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz p0, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public shouldShowLockscreenNotifications()Z
    .registers 1

    .line 5012
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result p0

    return p0
.end method

.method protected shouldUseDismissingAnimation()Z
    .registers 2

    .line 3292
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3293
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTracking()Z

    move-result p0

    if-nez p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public showEmptyShadeView(Z)V
    .registers 5

    .line 3364
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    .line 3371
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    const/4 v0, 0x0

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1b

    .line 3372
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz p1, :cond_32

    :cond_1b
    const/4 p1, 0x1

    .line 3373
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 3374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2c

    .line 3375
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 3378
    :cond_2c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 3379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V

    .line 3383
    :cond_32
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez p1, :cond_43

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-nez p1, :cond_43

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_43

    .line 3385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMin()V

    .line 3389
    :cond_43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    return-void
.end method

.method public showTransientIndication(I)V
    .registers 3

    .line 4131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 4133
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .registers 2

    .line 3169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUnlockHintStarted()V

    .line 3171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUnlockHintFinished()V

    return-void

    .line 3174
    :cond_f
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    return-void
.end method

.method protected touchOnStatusBarInKeyguardShade(FF)Z
    .registers 5

    .line 4437
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 4438
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1a

    move p1, v0

    goto :goto_1b

    :cond_1a
    move p1, v1

    :goto_1b
    if-eqz p1, :cond_24

    .line 4439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0
.end method

.method public updateClearAll()V
    .registers 5

    .line 4307
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4308
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 4310
    :goto_1c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v0

    .line 4313
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFilterDismissView:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v3

    :goto_34
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateClockColor(I)V
    .registers 2

    .line 5259
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNormalClockView:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->updateColors(I)V

    return-void
.end method

.method protected updateExpandedHeight(F)V
    .registers 4

    .line 3678
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_d

    .line 3679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    .line 3681
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeightNonBypass()I

    move-result p1

    int-to-float p1, p1

    .line 3685
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 3686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 3687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateBigClockAlpha()V

    .line 3688
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarIcons()V

    return-void
.end method

.method public updateNotificationViews()V
    .registers 2

    .line 4068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSectionBoundaries()V

    .line 4069
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex()V

    .line 4070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 4071
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowEmptyShadeView()V

    .line 4072
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateIconAreaViews()V

    return-void
.end method

.method protected updateQsExpansion()V
    .registers 4

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_5

    return-void

    .line 2230
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 2231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzGetHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 2232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    .line 2235
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    return-void
.end method
