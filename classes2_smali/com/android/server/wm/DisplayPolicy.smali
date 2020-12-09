.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;,
        Lcom/android/server/wm/DisplayPolicy$SettingsObserver;,
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field private static final DEBUG:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0x1

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field private static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private static final sTmpDockedFrame:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpNavFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

.field private mAllowLockscreenWhenOn:Z

.field private volatile mAllowSeamlessRotationDespiteNavBarMoving:Z

.field private volatile mAwake:Z

.field private mBottomGestureAdditionalInset:I

.field private final mCarDockEnablesAccelerometer:Z

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserResources:Landroid/content/res/Resources;

.field private final mDeskDockEnablesAccelerometer:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private volatile mDockMode:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDreamingLockscreen:Z

.field private mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHandler"
        }
    .end annotation
.end field

.field private mDreamingSleepTokenNeeded:Z

.field mFocusedApp:Landroid/view/IApplicationToken;

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mForceClearedSystemUiFlags:I

.field private volatile mForceNavbar:I

.field private mForceShowSystemBars:Z

.field private mForceShowSystemBarsFromExternal:Z

.field private mForceStatusBar:Z

.field private mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field private mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field private volatile mKeyguardDrawComplete:Z

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private mLastDockedStackSysUiFlags:I

.field private mLastFocusNeedsMenu:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastFullscreenStackSysUiFlags:I

.field private final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLastWindowSleepTokenNeeded:Z

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarOpacityMode:I

.field private final mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field private volatile mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/wm/BarController;

.field private mNavigationBarFrameHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationInCarMode:[I

.field private volatile mNavigationBarLetsThroughTaps:Z

.field private mNavigationBarPosition:I

.field private mNavigationBarWidthForRotationDefault:[I

.field private mNavigationBarWidthForRotationInCarMode:[I

.field private final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mPendingPanicGestureUptime:J

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private final mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

.field private mResettingSystemUiFlags:I

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenOnEarly:Z

.field private volatile mScreenOnFully:Z

.field private volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/wm/DisplayPolicy$SettingsObserver;

.field private mShowingDream:Z

.field private mSideGestureInset:I

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private final mStatusBarController:Lcom/android/server/wm/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field private mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopIsFullscreen:Z

.field private volatile mWindowManagerDrawComplete:Z

.field private mWindowOutsetBottom:I

.field private mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHandler"
        }
    .end annotation
.end field

.field private mWindowSleepTokenNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 345
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 346
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 347
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDockedFrame:Landroid/graphics/Rect;

    .line 348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 349
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 16

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 260
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceNavbar:I

    .line 278
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 280
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 281
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 282
    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 284
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    .line 285
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    .line 286
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    .line 287
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    .line 290
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    .line 299
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 329
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 331
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    .line 334
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 335
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 336
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 337
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 341
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    .line 359
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 377
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 391
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 1401
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3617
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 456
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 457
    iget-boolean v2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_81

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_8b

    .line 458
    :cond_81
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_8b
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 459
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 460
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 462
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 463
    new-instance v3, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v3, v2}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 464
    new-instance v12, Lcom/android/server/wm/BarController;

    const/high16 v6, 0x8000000

    const/high16 v7, 0x20000000

    const/high16 v8, -0x80000000

    const/4 v9, 0x2

    const/high16 v10, 0x8000000

    const v11, 0x8000

    const-string v4, "NavigationBar"

    move-object v3, v12

    move v5, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIII)V

    iput-object v12, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 473
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 474
    const v4, 0x111003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 475
    const v4, 0x111004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 476
    const v4, 0x1110088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 478
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 480
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v4, 0x1

    if-nez v3, :cond_ef

    .line 481
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 482
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 483
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 486
    :cond_ef
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 487
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 488
    new-instance v5, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v8, p0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 591
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p2, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 592
    iget-object v5, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 593
    invoke-virtual {v6}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v6

    .line 592
    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 594
    new-instance v5, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v5, v6, v3, v7}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 596
    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    .line 603
    new-instance p1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$_FsvHpVUi-gbWmSpT009cJNNmgM;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$_FsvHpVUi-gbWmSpT009cJNNmgM;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    .line 612
    iget-boolean p1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_145

    .line 613
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_146

    :cond_145
    nop

    :goto_146
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 615
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_184

    .line 616
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 617
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100c1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 621
    const-string p1, "qemu.hw.mainkeys"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 622
    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_170

    .line 623
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_17a

    .line 624
    :cond_170
    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17a

    .line 625
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 629
    :cond_17a
    :goto_17a
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$SettingsObserver;

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DisplayPolicy$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSettingsObserver:Lcom/android/server/wm/DisplayPolicy$SettingsObserver;

    .line 630
    goto :goto_18e

    .line 631
    :cond_184
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 632
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 635
    :goto_18e
    new-instance p1, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 636
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 638
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;Z)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 1

    .line 189
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 2

    .line 189
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1672(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 3

    .line 189
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 1

    .line 189
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 2

    .line 189
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/DisplayPolicy;J)J
    .registers 3

    .line 189
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$2100(I)Z
    .registers 1

    .line 189
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 1

    .line 189
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return p0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 5

    .line 1863
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_5

    .line 1864
    return-void

    .line 1868
    :cond_5
    and-int/lit16 p1, p2, 0x400

    if-eqz p1, :cond_f

    .line 1869
    iget-object p1, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_14

    .line 1871
    :cond_f
    iget-object p1, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1873
    :goto_14
    return-void
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 1876
    nop

    .line 1877
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1878
    :goto_10
    nop

    .line 1879
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr p1, v3

    if-eqz p1, :cond_1e

    move p1, v1

    goto :goto_1f

    :cond_1e
    move p1, v2

    .line 1880
    :goto_1f
    xor-int/2addr p1, v0

    .line 1881
    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3279
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 3280
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    if-ne p3, v1, :cond_17

    .line 3282
    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p3

    const/high16 v1, -0x80000000

    and-int/2addr p3, v1

    if-eqz p3, :cond_17

    const/4 p3, 0x1

    goto :goto_18

    :cond_17
    const/4 p3, 0x0

    .line 3285
    :goto_18
    if-eqz p0, :cond_20

    if-ne p1, p0, :cond_20

    .line 3290
    if-eqz p3, :cond_1f

    move-object p0, p2

    :cond_1f
    return-object p0

    .line 3293
    :cond_20
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_38

    .line 3298
    :cond_29
    if-nez p3, :cond_2c

    .line 3300
    return-object p1

    .line 3305
    :cond_2c
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 3307
    return-object p2

    .line 3310
    :cond_37
    return-object p1

    .line 3295
    :cond_38
    :goto_38
    if-eqz p3, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object p2, v0

    :goto_3c
    return-object p2
.end method

.method private clearClearableFlagsLw()V
    .registers 3

    .line 3548
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    .line 3549
    if-eq v1, v0, :cond_d

    .line 3550
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 3551
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 3553
    :cond_d
    return-void
.end method

.method private configureNavBarOpacity(IZZZZZ)I
    .registers 9

    .line 3508
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 3509
    if-eqz p5, :cond_e

    if-eqz p6, :cond_e

    .line 3510
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3511
    :cond_e
    if-eqz p2, :cond_3f

    .line 3512
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3514
    :cond_15
    if-nez v0, :cond_2a

    .line 3515
    if-nez p2, :cond_25

    if-nez p3, :cond_25

    if-eqz p4, :cond_1e

    goto :goto_25

    .line 3517
    :cond_1e
    if-eqz p5, :cond_3f

    .line 3518
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3516
    :cond_25
    :goto_25
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3520
    :cond_2a
    const/4 p2, 0x1

    if-ne v0, p2, :cond_3f

    .line 3521
    if-eqz p4, :cond_34

    .line 3522
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3523
    :cond_34
    if-eqz p3, :cond_3b

    .line 3524
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3526
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 3530
    :cond_3f
    :goto_3f
    return p1
.end method

.method private disablePointerLocation()V
    .registers 3

    .line 3797
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5

    .line 3798
    return-void

    .line 3801
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3802
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3803
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3805
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2

    .line 3145
    if-eqz p1, :cond_5

    .line 3146
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 3148
    :cond_5
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .registers 8

    .line 3478
    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_8

    .line 3479
    return v0

    .line 3481
    :cond_8
    const/4 p3, 0x1

    if-nez p2, :cond_c

    .line 3482
    return p3

    .line 3485
    :cond_c
    nop

    .line 3486
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1a

    move v1, p3

    goto :goto_1b

    :cond_1a
    move v1, v0

    .line 3487
    :goto_1b
    nop

    .line 3488
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr p2, v2

    if-eqz p2, :cond_29

    move p2, p3

    goto :goto_2a

    :cond_29
    move p2, v0

    .line 3490
    :goto_2a
    if-nez p2, :cond_33

    if-eqz v1, :cond_32

    and-int/2addr p1, p4

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    move p3, v0

    :cond_33
    :goto_33
    return p3
.end method

.method private drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 3498
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/high16 v1, 0x8000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result p1

    return p1
.end method

.method private drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 3494
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result p1

    return p1
.end method

.method private enablePointerLocation()V
    .registers 4

    .line 3768
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_5

    .line 3769
    return-void

    .line 3772
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3773
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 3774
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 3777
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3778
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3782
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3783
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3784
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3785
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3788
    :cond_38
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3790
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3791
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3792
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3793
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3794
    return-void
.end method

.method private getDisplayId()I
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4

    .line 1384
    nop

    .line 1385
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v1

    .line 1388
    :goto_15
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr p0, v2

    if-nez p0, :cond_1e

    if-eqz v0, :cond_21

    .line 1390
    :cond_1e
    nop

    .line 1391
    const/16 v1, 0x600

    .line 1393
    :cond_21
    return v1
.end method

.method private getNavigationBarFrameHeight(II)I
    .registers 3

    .line 2910
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget p1, p2, p1

    return p1
.end method

.method private getNavigationBarHeight(II)I
    .registers 3

    .line 2890
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget p1, p2, p1

    return p1
.end method

.method private getNavigationBarWidth(II)I
    .registers 3

    .line 2850
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget p1, p2, p1

    return p1
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .registers 4

    .line 1058
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 245
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 246
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 248
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 249
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getSystemUiContext()Landroid/content/Context;
    .registers 3

    .line 2841
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 2842
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_f

    .line 2843
    goto :goto_19

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 2842
    :goto_19
    return-object v0
.end method

.method private hasStatusBarServicePermission(II)Z
    .registers 5

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isImmersiveMode(I)Z
    .registers 3

    .line 3557
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_14

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_14

    and-int/lit16 p1, p1, 0x1800

    if-eqz p1, :cond_14

    .line 3560
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 3557
    :goto_15
    return p1
.end method

.method private isKeyguardOccluded()Z
    .registers 2

    .line 3157
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .registers 2

    .line 3575
    const/high16 v0, 0x1600000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private isStatusBarKeyguard()Z
    .registers 2

    .line 3151
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10

    .line 3152
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3151
    :goto_11
    return v0
.end method

.method static synthetic lambda$canToastShowWhenLocked$2(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 926
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZ)Z
    .registers 22

    .line 1683
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    if-nez v4, :cond_d

    .line 1684
    return v5

    .line 1687
    :cond_d
    sget-object v13, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 1688
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v4

    .line 1692
    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1693
    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 1694
    iget v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 1695
    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1696
    invoke-virtual {p0, v8, v7, v6}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v10

    iput v10, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 1698
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1699
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1700
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1702
    iget v11, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v12, 0x4

    const/4 v14, 0x1

    if-ne v11, v12, :cond_8d

    .line 1704
    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 1705
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v11

    sub-int/2addr v7, v11

    .line 1706
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1707
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v2

    sub-int/2addr v10, v2

    .line 1708
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v13, v5, v10, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1709
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 1710
    if-eqz v4, :cond_5a

    .line 1711
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_71

    .line 1712
    :cond_5a
    if-eqz p3, :cond_6c

    .line 1713
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1714
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_71

    .line 1718
    :cond_6c
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1720
    :goto_71
    if-eqz p3, :cond_8b

    if-nez p4, :cond_8b

    if-nez p5, :cond_8b

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1721
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_8b

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1722
    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 1725
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 1727
    :cond_8b
    goto/16 :goto_133

    :cond_8d
    const/4 v8, 0x2

    if-ne v11, v8, :cond_e0

    .line 1729
    iget v8, v10, Landroid/graphics/Rect;->right:I

    .line 1730
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v8, v2

    .line 1731
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13, v8, v5, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1732
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v8, v5, Landroid/graphics/Rect;->right:I

    iput v8, v2, Landroid/graphics/Rect;->right:I

    .line 1733
    if-eqz v4, :cond_ae

    .line 1734
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_c5

    .line 1735
    :cond_ae
    if-eqz p3, :cond_c0

    .line 1736
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1737
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v8, v3, Landroid/graphics/Rect;->right:I

    iput v8, v2, Landroid/graphics/Rect;->right:I

    iput v8, v9, Landroid/graphics/Rect;->right:I

    goto :goto_c5

    .line 1741
    :cond_c0
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1743
    :goto_c5
    if-eqz p3, :cond_132

    if-nez p4, :cond_132

    if-nez p5, :cond_132

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1744
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_132

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1745
    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_132

    .line 1748
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v8, v2, Landroid/graphics/Rect;->right:I

    goto :goto_132

    .line 1750
    :cond_e0
    if-ne v11, v14, :cond_132

    .line 1752
    iget v8, v10, Landroid/graphics/Rect;->left:I

    .line 1753
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    add-int/2addr v8, v2

    .line 1754
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v2, v5, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1755
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v8, v5, Landroid/graphics/Rect;->left:I

    iput v8, v2, Landroid/graphics/Rect;->left:I

    .line 1756
    if-eqz v4, :cond_100

    .line 1757
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_117

    .line 1758
    :cond_100
    if-eqz p3, :cond_112

    .line 1759
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1760
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v8, v3, Landroid/graphics/Rect;->left:I

    iput v8, v2, Landroid/graphics/Rect;->left:I

    iput v8, v9, Landroid/graphics/Rect;->left:I

    goto :goto_117

    .line 1764
    :cond_112
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1766
    :goto_117
    if-eqz p3, :cond_133

    if-nez p4, :cond_133

    if-nez p5, :cond_133

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1767
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_133

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1768
    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_133

    .line 1771
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v8, v2, Landroid/graphics/Rect;->left:I

    goto :goto_133

    .line 1750
    :cond_132
    :goto_132
    nop

    .line 1777
    :cond_133
    :goto_133
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1778
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1779
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1781
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1782
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v6

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v12, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v14, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    move-object v7, v13

    move-object v8, v13

    move-object v9, v13

    move-object v11, v13

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1788
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1789
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1790
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 1793
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0}, Lcom/android/server/wm/BarController;->checkHiddenLw()Z

    move-result v0

    return v0
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;)V
    .registers 20

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1548
    return-void

    .line 1551
    :cond_d
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1552
    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 1553
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1554
    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 1555
    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 1557
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_22
    if-ltz v6, :cond_136

    .line 1558
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1559
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-ne v8, v2, :cond_130

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1561
    goto/16 :goto_130

    .line 1564
    :cond_3a
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v13, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v14, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    sget-object v15, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1571
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1572
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1573
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 1575
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v9, " displayHeight="

    const-string v10, " displayWidth="

    const-string v11, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v12, "WindowManager"

    if-gtz v8, :cond_bd

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_bd

    .line 1577
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v4, :cond_85

    .line 1579
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_130

    .line 1580
    :cond_85
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v5, :cond_95

    .line 1582
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_130

    .line 1584
    :cond_95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not docked on left or top of display. frame="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 1588
    :cond_bd
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v5, :cond_10a

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v4, :cond_10a

    .line 1590
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_d4

    .line 1592
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_130

    .line 1593
    :cond_d4
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_e3

    .line 1595
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_130

    .line 1597
    :cond_e3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not docked on right or bottom of display. frame="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 1603
    :cond_10a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not docked on one of the sides of the display. frame="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_130
    :goto_130
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_22

    .line 1609
    :cond_136
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1610
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1611
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1612
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1613
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1614
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1615
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;IZ)Z
    .registers 14

    .line 1620
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-nez p3, :cond_6

    .line 1621
    return v0

    .line 1624
    :cond_6
    sget-object p3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1625
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object p3

    .line 1626
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v1, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1631
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1634
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1637
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1640
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1644
    sget-object p3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1645
    sget-object p3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1646
    sget-object p3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1647
    sget-object p3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1648
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 1650
    const/high16 p3, 0x4000000

    and-int/2addr p3, p2

    const/4 v1, 0x1

    if-eqz p3, :cond_83

    move p3, v1

    goto :goto_84

    :cond_83
    move p3, v0

    .line 1651
    :goto_84
    const v2, 0x40000008  # 2.000002f

    and-int/2addr p2, v2

    if-eqz p2, :cond_8b

    move v0, v1

    .line 1655
    :cond_8b
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result p2

    if-eqz p2, :cond_c6

    if-nez p3, :cond_c6

    .line 1658
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1659
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 1660
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1661
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1662
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1668
    if-nez v0, :cond_c6

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {p2}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result p2

    if-nez p2, :cond_c6

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1669
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result p2

    if-nez p2, :cond_c6

    .line 1674
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 1677
    :cond_c6
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {p1}, Lcom/android/server/wm/StatusBarController;->checkHiddenLw()Z

    move-result p1

    return p1
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 2391
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2392
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2393
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2394
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2395
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6

    .line 2398
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2399
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2400
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2401
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2402
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2403
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    .line 2404
    iget-object p1, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2408
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 5

    .line 2411
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2412
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    .line 2413
    iget-object p1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2414
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 3122
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3125
    monitor-exit v0

    return-void

    .line 3127
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 3128
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3129
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 3130
    :goto_28
    if-nez v1, :cond_2c

    if-eqz v2, :cond_4a

    .line 3132
    :cond_2c
    if-nez v2, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_34

    .line 3134
    monitor-exit v0

    return-void

    .line 3136
    :cond_34
    if-eqz v1, :cond_3b

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {p1}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 3137
    :cond_3b
    if-eqz v2, :cond_42

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {p1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3138
    :cond_42
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 3139
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3141
    :cond_4a
    monitor-exit v0

    .line 3142
    return-void

    .line 3141
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method private selectDockedDividerAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .registers 12

    .line 1149
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    .line 1152
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 1153
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4b

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_27

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1155
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_49

    :cond_27
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_38

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1157
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_49

    :cond_38
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v4, :cond_4b

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1159
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_4b

    :cond_49
    move v2, v4

    goto :goto_4c

    :cond_4b
    move v2, v5

    .line 1160
    :goto_4c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_58

    move v6, v4

    goto :goto_59

    :cond_58
    move v6, v5

    .line 1161
    :goto_59
    if-eqz v6, :cond_6d

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    if-lez v7, :cond_6b

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 1162
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_6d

    :cond_6b
    move v7, v4

    goto :goto_6e

    :cond_6d
    move v7, v5

    .line 1163
    :goto_6e
    if-nez v6, :cond_82

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v0

    if-lez v6, :cond_80

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 1164
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p1, :cond_82

    :cond_80
    move p1, v4

    goto :goto_83

    :cond_82
    move p1, v5

    .line 1165
    :goto_83
    if-nez v7, :cond_8a

    if-eqz p1, :cond_88

    goto :goto_8a

    :cond_88
    move p1, v5

    goto :goto_8b

    :cond_8a
    :goto_8a
    move p1, v4

    .line 1166
    :goto_8b
    if-nez v2, :cond_a0

    if-eqz p1, :cond_90

    goto :goto_a0

    .line 1169
    :cond_90
    if-eq p2, v4, :cond_9d

    const/4 p1, 0x3

    if-ne p2, p1, :cond_96

    goto :goto_9d

    .line 1171
    :cond_96
    if-ne p2, v3, :cond_9c

    .line 1172
    const p1, 0x10a0001

    return p1

    .line 1174
    :cond_9c
    return v5

    .line 1170
    :cond_9d
    :goto_9d
    const/high16 p1, 0x10a0000

    return p1

    .line 1167
    :cond_a0
    :goto_a0
    return v5
.end method

.method private setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 24

    .line 1799
    move v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1807
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1808
    iget-object v4, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1809
    iget-object v3, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1810
    iget-object v2, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v8, p4

    goto/16 :goto_b2

    .line 1815
    :cond_2f
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 1816
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    .line 1817
    move-object/from16 v8, p4

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1818
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v11, 0x20000

    and-int/2addr v10, v11

    if-eqz v10, :cond_65

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-nez v10, :cond_65

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v9, v9, 0x200

    if-nez v9, :cond_65

    .line 1822
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1823
    iget-object v7, v5, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1824
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1825
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object v6, v7

    move-object v7, v9

    .line 1833
    :cond_65
    const/16 v9, 0x10

    move v10, p3

    if-eq v10, v9, :cond_79

    .line 1838
    const/high16 v5, 0x40000000  # 2.0f

    and-int/2addr v5, v0

    if-eqz v5, :cond_74

    .line 1839
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_75

    :cond_74
    move-object v5, v7

    .line 1838
    :goto_75
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9d

    .line 1846
    :cond_79
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1847
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 1848
    iget-object v5, v5, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_9d

    .line 1849
    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v9

    if-nez v9, :cond_98

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 1850
    :cond_98
    iget-object v5, v5, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1853
    :cond_9d
    :goto_9d
    if-eqz p5, :cond_a0

    goto :goto_a1

    :cond_a0
    move-object v6, v3

    :goto_a1
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1854
    if-eqz p5, :cond_a7

    goto :goto_a8

    :cond_a7
    move-object v7, v3

    :goto_a8
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1855
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1859
    :goto_b2
    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_bb

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_bc

    :cond_bb
    move-object v0, v1

    :goto_bc
    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1860
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .registers 3

    .line 3534
    const v0, 0x7fff7fff

    and-int/2addr p1, v0

    return p1
.end method

.method private setNavBarTranslucentFlag(I)I
    .registers 3

    .line 3538
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 3539
    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    return p1
.end method

.method private setNavBarTransparentFlag(I)I
    .registers 3

    .line 3543
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 3544
    const v0, 0x8000

    or-int/2addr p1, v0

    return p1
.end method

.method private static shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .registers 3

    .line 1397
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_f

    const p0, 0x2000400

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private supportsPointerLocation()Z
    .registers 2

    .line 3755
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private topAppHidesStatusBar()Z
    .registers 4

    .line 2676
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2677
    return v1

    .line 2679
    :cond_6
    const/4 v2, 0x0

    .line 2680
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2679
    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 2686
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method private updateCurrentUserResources()V
    .registers 13

    .line 2802
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 2803
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 2805
    if-nez v0, :cond_15

    .line 2808
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 2809
    return-void

    .line 2814
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 2815
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2814
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    .line 2816
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 2817
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2819
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v6

    .line 2820
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2821
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    const/4 v9, 0x0

    .line 2823
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    const/4 v11, 0x0

    .line 2816
    invoke-virtual/range {v2 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 2825
    return-void
.end method

.method private updateDreamingSleepToken(Z)V
    .registers 5

    .line 3107
    if-eqz p1, :cond_26

    .line 3108
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p1

    .line 3109
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_25

    .line 3110
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DreamOnDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 3113
    :cond_25
    goto :goto_30

    .line 3114
    :cond_26
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz p1, :cond_30

    .line 3115
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 3116
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 3119
    :cond_30
    :goto_30
    return-void
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3318
    if-eqz p4, :cond_1c

    .line 3319
    if-eq p4, p3, :cond_12

    if-ne p4, p1, :cond_7

    goto :goto_12

    .line 3324
    :cond_7
    if-ne p4, p2, :cond_1c

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3326
    and-int/lit8 p0, p0, -0x11

    goto :goto_1c

    .line 3321
    :cond_12
    :goto_12
    and-int/lit8 p0, p0, -0x11

    .line 3322
    const/4 p1, 0x0

    invoke-static {p4, p1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    .line 3329
    :cond_1c
    :goto_1c
    return p0
.end method

.method private updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 5

    .line 3257
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 3258
    :goto_f
    if-eqz v0, :cond_13

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 3259
    :cond_13
    if-eqz p3, :cond_24

    if-eq p3, p2, :cond_19

    if-eqz v0, :cond_24

    .line 3262
    :cond_19
    and-int/lit16 p1, p1, -0x2001

    .line 3263
    const/4 p2, 0x0

    invoke-static {p3, p2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p2

    and-int/lit16 p2, p2, 0x2000

    or-int/2addr p1, p2

    goto :goto_2e

    .line 3265
    :cond_24
    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 3267
    and-int/lit16 p1, p1, -0x2001

    .line 3269
    :cond_2e
    :goto_2e
    return p1
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3333
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3334
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v2

    .line 3335
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3336
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v3

    .line 3337
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v4

    .line 3342
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_2b

    if-nez v3, :cond_2b

    if-nez v4, :cond_2b

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    move v0, v10

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v0, v9

    :goto_2c
    iput-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 3344
    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_38

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v0, :cond_38

    move v0, v9

    goto :goto_39

    :cond_38
    move v0, v10

    .line 3347
    :goto_39
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-nez v1, :cond_48

    .line 3348
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_4a

    .line 3349
    :cond_48
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3350
    :goto_4a
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v6, p3

    invoke-virtual {v5, v1, v6, v8}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v5

    .line 3351
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v1, v5, v8}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    .line 3352
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6, v10, v10}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v5

    .line 3354
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v11, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v11, v5, v10}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v5

    .line 3357
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3358
    invoke-direct {v7, v1, v6}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 3359
    iget-object v11, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3360
    invoke-direct {v7, v5, v11}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v11

    .line 3361
    iget-object v12, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3362
    invoke-direct {v7, v1, v12}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v12

    .line 3363
    iget-object v13, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3364
    invoke-direct {v7, v5, v13}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v13

    .line 3367
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3368
    const/16 v14, 0x7d0

    if-ne v5, v14, :cond_8c

    move v14, v9

    goto :goto_8d

    :cond_8c
    move v14, v10

    .line 3369
    :goto_8d
    if-eqz v14, :cond_a4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v5

    if-nez v5, :cond_a4

    .line 3370
    const/16 v5, 0x3806

    .line 3375
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v15

    if-eqz v15, :cond_a0

    .line 3376
    const v5, -0x3fffc7fa

    .line 3378
    :cond_a0
    not-int v15, v5

    and-int/2addr v1, v15

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    .line 3381
    :cond_a4
    if-eqz v6, :cond_b0

    if-eqz v11, :cond_b0

    .line 3382
    or-int/lit8 v0, v1, 0x8

    .line 3383
    const v1, -0x40000001  # -1.9999999f

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_b7

    .line 3384
    :cond_b0
    if-eqz v0, :cond_b7

    .line 3385
    const v0, -0x40000009  # -1.9999989f

    and-int/2addr v0, v1

    move v1, v0

    .line 3388
    :cond_b7
    :goto_b7
    move-object/from16 v0, p0

    move v5, v12

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZZZZ)I

    move-result v0

    .line 3392
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c5

    move v1, v9

    goto :goto_c6

    :cond_c5
    move v1, v10

    .line 3394
    :goto_c6
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d5

    const/4 v3, 0x0

    .line 3396
    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_d5

    move v2, v9

    goto :goto_d6

    :cond_d5
    move v2, v10

    .line 3398
    :goto_d6
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_dc

    move v3, v9

    goto :goto_dd

    :cond_dc
    move v3, v10

    .line 3400
    :goto_dd
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_e3

    move v4, v9

    goto :goto_e4

    :cond_e3
    move v4, v10

    .line 3403
    :goto_e4
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_f6

    if-nez v14, :cond_f4

    iget-boolean v5, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v5, :cond_f6

    if-nez v2, :cond_f4

    if-eqz v3, :cond_f6

    if-eqz v1, :cond_f6

    :cond_f4
    move v2, v9

    goto :goto_f7

    :cond_f6
    move v2, v10

    .line 3407
    :goto_f7
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_105

    iget-boolean v5, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v5, :cond_105

    if-eqz v4, :cond_105

    if-eqz v1, :cond_105

    move v1, v9

    goto :goto_106

    :cond_105
    move v1, v10

    .line 3410
    :goto_106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3411
    iget-wide v11, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-eqz v15, :cond_11b

    sub-long/2addr v5, v11

    const-wide/16 v11, 0x7530

    cmp-long v5, v5, v11

    if-gtz v5, :cond_11b

    move v5, v9

    goto :goto_11c

    :cond_11b
    move v5, v10

    .line 3413
    :goto_11c
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3414
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    .line 3415
    if-eqz v5, :cond_148

    if-eqz v4, :cond_148

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v5

    if-nez v5, :cond_148

    .line 3417
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v5

    if-eqz v5, :cond_148

    .line 3420
    iput-wide v13, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 3421
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 3422
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    if-nez v5, :cond_148

    .line 3423
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3427
    :cond_148
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/wm/StatusBarController;->isTransientShowRequested()Z

    move-result v5

    if-eqz v5, :cond_156

    if-nez v2, :cond_156

    if-eqz v3, :cond_156

    move v3, v9

    goto :goto_157

    :cond_156
    move v3, v10

    .line 3429
    :goto_157
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v5

    if-eqz v5, :cond_163

    if-nez v1, :cond_163

    move v5, v9

    goto :goto_164

    :cond_163
    move v5, v10

    .line 3431
    :goto_164
    if-nez v3, :cond_16c

    if-nez v5, :cond_16c

    iget-boolean v3, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v3, :cond_171

    .line 3433
    :cond_16c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    .line 3434
    and-int/lit8 v0, v0, -0x8

    .line 3437
    :cond_171
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_177

    move v3, v9

    goto :goto_178

    :cond_177
    move v3, v10

    .line 3438
    :goto_178
    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_17e

    move v5, v9

    goto :goto_17f

    :cond_17e
    move v5, v10

    .line 3439
    :goto_17f
    if-nez v3, :cond_186

    if-eqz v5, :cond_184

    goto :goto_186

    :cond_184
    move v3, v10

    goto :goto_187

    :cond_186
    :goto_186
    move v3, v9

    .line 3441
    :goto_187
    if-eqz v4, :cond_1a4

    if-nez v3, :cond_1a4

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3442
    move-object/from16 v4, p1

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v3

    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7e6

    .line 3443
    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    if-le v3, v5, :cond_1a6

    .line 3446
    and-int/lit8 v0, v0, -0x3

    goto :goto_1a6

    .line 3441
    :cond_1a4
    move-object/from16 v4, p1

    .line 3449
    :cond_1a6
    :goto_1a6
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v2, v8, v0}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 3452
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v2

    .line 3453
    invoke-direct {v7, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v3

    .line 3454
    if-eq v2, v3, :cond_1cf

    .line 3455
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 3456
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3457
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v6

    .line 3458
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v4

    .line 3456
    invoke-virtual {v5, v2, v3, v6, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    .line 3461
    :cond_1cf
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2, v1, v8, v0}, Lcom/android/server/wm/BarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 3463
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v4, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3466
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 3470
    if-eqz v1, :cond_1f8

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_1f8

    goto :goto_1f9

    :cond_1f8
    move v9, v10

    .line 3473
    :goto_1f9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 16

    .line 3168
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    goto :goto_7

    .line 3169
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3170
    :goto_7
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3171
    return v1

    .line 3176
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3c

    .line 3181
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_26

    .line 3182
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v4

    goto :goto_27

    :cond_26
    move v0, v1

    .line 3183
    :goto_27
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_37

    .line 3184
    :cond_30
    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_37

    .line 3185
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3186
    :goto_37
    if-nez v0, :cond_3a

    .line 3187
    return v1

    .line 3186
    :cond_3a
    move-object v13, v0

    goto :goto_3d

    .line 3176
    :cond_3c
    move-object v13, v0

    .line 3190
    :goto_3d
    nop

    .line 3191
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3198
    return v1

    .line 3201
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InsetsStateController;->onBarControllingWindowChanged(Lcom/android/server/wm/WindowState;)V

    .line 3204
    const/4 v0, 0x0

    invoke-static {v13, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    .line 3207
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v2, :cond_7a

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_7a

    .line 3208
    const/4 v2, 0x7

    .line 3209
    invoke-static {v13, v2}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    .line 3212
    :cond_7a
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v8

    .line 3214
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v9

    .line 3216
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 3218
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 3220
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3221
    invoke-direct {p0, v13, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v0

    .line 3222
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3223
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int/2addr v2, v7

    .line 3224
    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenStackSysUiFlags:I

    xor-int/2addr v3, v8

    .line 3225
    iget v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackSysUiFlags:I

    xor-int/2addr v4, v9

    .line 3226
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v14

    .line 3227
    if-nez v2, :cond_de

    if-nez v3, :cond_de

    if-nez v4, :cond_de

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    if-ne v3, v14, :cond_de

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 3228
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-ne v3, v4, :cond_de

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 3229
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 3230
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 3231
    return v1

    .line 3233
    :cond_de
    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3234
    iput v8, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenStackSysUiFlags:I

    .line 3235
    iput v9, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackSysUiFlags:I

    .line 3236
    iput-boolean v14, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    .line 3237
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 3238
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3239
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3240
    new-instance v10, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3241
    new-instance v11, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3242
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 3243
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;-><init>(Lcom/android/server/wm/DisplayPolicy;IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3253
    return v2
.end method

.method private updateWindowSleepToken()V
    .registers 3

    .line 2661
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    if-nez v0, :cond_17

    .line 2662
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2663
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    .line 2664
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_2d

    .line 2665
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2666
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2668
    :cond_2d
    :goto_2d
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    .line 2669
    return-void
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(I)I
    .registers 4

    .line 1260
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 1261
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 1265
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 1268
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr p1, v0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v0, v0

    and-int/2addr p1, v0

    return p1
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V
    .registers 9

    .line 849
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 850
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 851
    if-nez v0, :cond_28

    .line 853
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 855
    :cond_1b
    if-eqz v0, :cond_28

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result p4

    if-eqz p4, :cond_28

    .line 856
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_28
    :goto_28
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p4, 0x7d0

    if-eq p1, p4, :cond_98

    const/16 v0, 0x7dd

    if-eq p1, v0, :cond_95

    const/16 v0, 0x7df

    if-eq p1, v0, :cond_86

    const/16 v0, 0x7e7

    if-eq p1, v0, :cond_95

    const/16 v0, 0x7f4

    if-eq p1, v0, :cond_7f

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_47

    const/16 p3, 0x7d6

    if-eq p1, p3, :cond_86

    goto :goto_b0

    .line 894
    :cond_47
    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v0, 0xdac

    if-ltz p1, :cond_57

    iget-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_59

    .line 896
    :cond_57
    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 901
    :cond_59
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v0, v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 904
    const p1, 0x1030004

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 906
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 907
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p3, 0x80000

    or-int/2addr p1, p3

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 910
    :cond_78
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b0

    .line 886
    :cond_7f
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 887
    goto :goto_b0

    .line 863
    :cond_86
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x18

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 865
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p3, -0x40001

    and-int/2addr p1, p3

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 866
    goto :goto_b0

    .line 871
    :cond_95
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 872
    goto :goto_b0

    .line 879
    :cond_98
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 880
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p3, -0x100001

    and-int/2addr p1, p3

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 881
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 914
    :cond_b0
    :goto_b0
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p1, p4, :cond_ba

    .line 916
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 918
    :cond_ba
    return-void
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .line 3103
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 12

    .line 2444
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 2446
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2447
    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p4

    .line 2448
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v1, v3, :cond_24

    .line 2450
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 2451
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 2453
    :cond_24
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-ne v1, v3, :cond_3a

    .line 2454
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_32

    .line 2455
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    .line 2457
    :cond_32
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_3a

    .line 2458
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    .line 2462
    :cond_3a
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    if-lt v1, v2, :cond_45

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v1, v3, :cond_45

    move v1, v2

    goto :goto_46

    :cond_45
    move v1, v4

    .line 2464
    :goto_46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v3

    .line 2465
    if-eq v3, v2, :cond_4f

    const/4 v5, 0x4

    if-ne v3, v5, :cond_50

    :cond_4f
    move v4, v2

    .line 2468
    :cond_50
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_8e

    if-eqz v0, :cond_8e

    .line 2469
    and-int/lit16 v5, p4, 0x800

    if-eqz v5, :cond_5c

    .line 2470
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 2472
    :cond_5c
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v5, v6, :cond_75

    .line 2475
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v5, :cond_72

    .line 2476
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2477
    :cond_72
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2478
    move v1, v2

    .line 2485
    :cond_75
    if-eqz v1, :cond_8e

    if-nez p3, :cond_8e

    .line 2486
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-eqz v5, :cond_8e

    if-eqz v4, :cond_8e

    .line 2488
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2489
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_89

    .line 2490
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2492
    :cond_89
    and-int/2addr p4, v2

    if-eqz p4, :cond_8e

    .line 2493
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2500
    :cond_8e
    if-eqz v0, :cond_ae

    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7ef

    if-ne p4, v2, :cond_ae

    .line 2501
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez p4, :cond_a2

    .line 2502
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2503
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez p4, :cond_a2

    .line 2504
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2507
    :cond_a2
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez p4, :cond_ae

    .line 2508
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2509
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez p4, :cond_ae

    .line 2510
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2516
    :cond_ae
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez p4, :cond_be

    if-eqz v0, :cond_be

    .line 2517
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p4

    if-eqz p4, :cond_be

    if-eqz v4, :cond_be

    .line 2518
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2524
    :cond_be
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x3

    if-nez p4, :cond_d9

    if-eqz v0, :cond_d9

    if-eqz v1, :cond_d9

    if-nez p3, :cond_d9

    .line 2525
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p2

    if-eqz p2, :cond_d9

    if-ne v3, v2, :cond_d9

    .line 2526
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2527
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_d9

    .line 2528
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2534
    :cond_d9
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_e9

    if-eqz v0, :cond_e9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_e9

    if-ne v3, v2, :cond_e9

    .line 2536
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2538
    :cond_e9
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 1276
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return p1
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 18

    .line 1476
    move-object v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1477
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 1478
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 1482
    iget v9, v7, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 1483
    and-int/lit8 v0, v9, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    .line 1484
    :goto_25
    const v3, -0x7fff8000

    and-int/2addr v3, v9

    if-eqz v3, :cond_2d

    move v3, v2

    goto :goto_2e

    :cond_2d
    move v3, v1

    .line 1486
    :goto_2e
    and-int/lit16 v4, v9, 0x800

    if-eqz v4, :cond_34

    move v4, v2

    goto :goto_35

    :cond_34
    move v4, v1

    .line 1487
    :goto_35
    and-int/lit16 v5, v9, 0x1000

    if-eqz v5, :cond_3b

    move v5, v2

    goto :goto_3c

    :cond_3b
    move v5, v1

    .line 1488
    :goto_3c
    if-nez v4, :cond_43

    if-eqz v5, :cond_41

    goto :goto_43

    :cond_41
    move v6, v1

    goto :goto_44

    :cond_43
    :goto_43
    move v6, v2

    .line 1489
    :goto_44
    xor-int/lit8 v4, v5, 0x1

    and-int/2addr v4, v3

    .line 1490
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1491
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v3

    if-nez v3, :cond_59

    move v10, v2

    goto :goto_5a

    :cond_59
    move v10, v1

    .line 1492
    :goto_5a
    if-nez v10, :cond_6d

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_6d

    .line 1493
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x800000

    and-int/2addr v3, v5

    if-eqz v3, :cond_6d

    move v11, v2

    goto :goto_6e

    :cond_6d
    move v11, v1

    .line 1499
    :goto_6e
    if-nez v0, :cond_a0

    if-eqz v6, :cond_73

    goto :goto_a0

    .line 1505
    :cond_73
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v3, :cond_b1

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_b1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 1506
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v12, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;

    invoke-direct {v12, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iget v13, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    const-string v14, "nav_input_consumer"

    invoke-virtual {v3, v5, v14, v12, v13}, Lcom/android/server/wm/WindowManagerService;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v3

    iput-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1512
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_b1

    .line 1500
    :cond_a0
    :goto_a0
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v1, :cond_b1

    .line 1501
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    .line 1502
    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1501
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1503
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1517
    :cond_b1
    :goto_b1
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    xor-int/2addr v1, v2

    or-int v3, v0, v1

    .line 1519
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v5, v6

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZ)Z

    move-result v0

    .line 1522
    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1523
    if-eqz v0, :cond_cd

    .line 1524
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 1526
    :cond_cd
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;)V

    .line 1528
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_ea

    .line 1532
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1542
    :cond_ea
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1543
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1544
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .line 2420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2421
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2422
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2423
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 2425
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    .line 2426
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    .line 2427
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 2428
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 2430
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2431
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2432
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    .line 2433
    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .registers 4

    .line 925
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;-><init>(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    return p1
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .registers 5

    .line 2988
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget p2, v1, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 2989
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 3682
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3684
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3685
    const-string v1, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3686
    const-string v1, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3687
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3688
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDockMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v1}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3689
    const-string v1, " mLidState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAwake="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3691
    const-string v1, " mScreenOnEarly="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3692
    const-string v1, " mScreenOnFully="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3693
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyguardDrawComplete="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3694
    const-string v1, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3695
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHdmiPlugged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3696
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v1, :cond_a0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v1, :cond_a0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v1, :cond_cd

    .line 3698
    :cond_a0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3699
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3700
    const-string v1, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3701
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3702
    const-string v1, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3703
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    :cond_cd
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    if-eqz v1, :cond_de

    .line 3706
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3708
    :cond_de
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mShowingDream="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3709
    const-string v1, " mDreamingLockscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3710
    const-string v1, " mDreamingSleepToken="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3711
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_11c

    .line 3712
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStatusBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3713
    const-string v1, " isStatusBarKeyguard="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3715
    :cond_11c
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_154

    .line 3716
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3717
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarOpacityMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3718
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarCanMove="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3719
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarPosition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3720
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3722
    :cond_154
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_165

    .line 3723
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFocusedWindow="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3725
    :cond_165
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v1, :cond_176

    .line 3726
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFocusedApp="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3728
    :cond_176
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_187

    .line 3729
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3730
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3732
    :cond_187
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_198

    .line 3733
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3734
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3736
    :cond_198
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v1, :cond_1b6

    .line 3737
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForcingShowNavBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3738
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3741
    :cond_1b6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopIsFullscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3742
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForceStatusBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3743
    const-string v1, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3744
    const-string v1, " mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3745
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3746
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3747
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3748
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3750
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Looper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3752
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_d

    goto :goto_14

    .line 793
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 794
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 795
    monitor-exit v0

    .line 796
    return v1

    .line 790
    :cond_14
    :goto_14
    monitor-exit v0

    return v2

    .line 795
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 8

    .line 2553
    nop

    .line 2554
    nop

    .line 2560
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    .line 2561
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 2562
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    if-eqz v0, :cond_31

    .line 2563
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    .line 2564
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_31

    .line 2567
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    if-nez v0, :cond_31

    .line 2568
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    .line 2569
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2573
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_fe

    .line 2577
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v0, :cond_43

    move v0, v2

    goto :goto_44

    :cond_43
    move v0, v1

    .line 2580
    :goto_44
    if-nez v0, :cond_4c

    .line 2581
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setShowTransparent(Z)V

    goto :goto_59

    .line 2582
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_59

    .line 2583
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/StatusBarController;->setShowTransparent(Z)V

    .line 2586
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2587
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-eqz v0, :cond_68

    move v0, v2

    goto :goto_69

    :cond_68
    move v0, v1

    .line 2589
    :goto_69
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v3

    .line 2590
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v4, :cond_c7

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v4, :cond_c7

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    if-nez v4, :cond_c7

    if-eqz v0, :cond_7c

    goto :goto_c7

    .line 2605
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c5

    .line 2606
    nop

    .line 2611
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2612
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2613
    move v1, v2

    move v2, v3

    goto/16 :goto_f6

    .line 2615
    :cond_95
    if-eqz v3, :cond_b6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x5

    .line 2616
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x3

    .line 2617
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 2619
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2620
    move v1, v2

    move v2, v3

    goto :goto_f6

    .line 2632
    :cond_b4
    move v2, v3

    goto :goto_f6

    .line 2626
    :cond_b6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2627
    goto :goto_c0

    .line 2626
    :cond_bf
    move v2, v1

    .line 2629
    :goto_c0
    move v6, v3

    move v3, v1

    move v1, v2

    move v2, v6

    goto :goto_f6

    .line 2605
    :cond_c5
    move v2, v1

    goto :goto_f6

    .line 2593
    :cond_c7
    :goto_c7
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 2594
    move v4, v2

    goto :goto_d2

    .line 2593
    :cond_d1
    move v4, v1

    .line 2597
    :goto_d2
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_df

    goto :goto_e0

    :cond_df
    move v2, v1

    .line 2600
    :goto_e0
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v5, :cond_e6

    if-eqz v0, :cond_f5

    :cond_e6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 2601
    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 2602
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    .line 2632
    :cond_f5
    move v1, v4

    :goto_f6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    move v0, v1

    move v1, v2

    goto :goto_ff

    .line 2573
    :cond_fe
    move v0, v1

    .line 2635
    :goto_ff
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_109

    .line 2636
    if-nez v1, :cond_107

    .line 2638
    or-int/lit8 v0, v0, 0x1

    .line 2640
    :cond_107
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 2643
    :cond_109
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v1

    const v2, -0x3fff7ff2

    and-int/2addr v1, v2

    if-eqz v1, :cond_115

    .line 2646
    or-int/lit8 v0, v0, 0x1

    .line 2649
    :cond_115
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v1, v2, :cond_122

    .line 2650
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 2651
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    .line 2654
    :cond_122
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateWindowSleepToken()V

    .line 2656
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 2657
    return v0
.end method

.method public finishScreenTurningOn()Z
    .registers 3

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_18

    goto :goto_20

    .line 827
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 828
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 829
    monitor-exit v0

    .line 830
    return v1

    .line 823
    :cond_20
    :goto_20
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 829
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .registers 3

    .line 801
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_11

    .line 806
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 807
    monitor-exit v0

    .line 808
    return v1

    .line 803
    :cond_11
    :goto_11
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 807
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 3

    .line 3083
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3084
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3085
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_11

    .line 3086
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3088
    :cond_11
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result p1

    const p2, -0x3fff7ff2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1d

    .line 3091
    const/4 p1, 0x1

    return p1

    .line 3093
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 9

    .line 2957
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 2958
    if-eqz p5, :cond_10

    .line 2961
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2963
    :cond_10
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 6

    .line 2942
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result p1

    return p1
.end method

.method getContext()Landroid/content/Context;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2837
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentUserResources()Landroid/content/res/Resources;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2829
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 2830
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2832
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDockMode()I
    .registers 2

    .line 699
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .registers 2

    .line 3053
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .registers 25

    .line 1302
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const/4 v7, 0x0

    invoke-static {v7, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    .line 1303
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1304
    invoke-static {v7, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 1305
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v11

    or-int/2addr v10, v11

    .line 1306
    iget v11, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1308
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v5, :cond_2b

    invoke-static {v1, v8}, Lcom/android/server/wm/DisplayPolicy;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v13

    goto :goto_2c

    :cond_2b
    move v1, v12

    .line 1309
    :goto_2c
    if-eqz v1, :cond_53

    .line 1310
    iget v1, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 1311
    if-lez v1, :cond_53

    .line 1312
    if-nez v11, :cond_3a

    .line 1313
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v1

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_53

    .line 1314
    :cond_3a
    if-ne v11, v13, :cond_42

    .line 1315
    iget v11, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v1

    iput v11, v5, Landroid/graphics/Rect;->right:I

    goto :goto_53

    .line 1316
    :cond_42
    const/4 v14, 0x2

    if-ne v11, v14, :cond_4b

    .line 1317
    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v1

    iput v11, v5, Landroid/graphics/Rect;->top:I

    goto :goto_53

    .line 1318
    :cond_4b
    const/4 v14, 0x3

    if-ne v11, v14, :cond_53

    .line 1319
    iget v11, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v1

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 1324
    :cond_53
    :goto_53
    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_59

    move v1, v13

    goto :goto_5a

    :cond_59
    move v1, v12

    .line 1325
    :goto_5a
    if-eqz v1, :cond_63

    const/high16 v5, 0x10000

    and-int/2addr v5, v8

    if-eqz v5, :cond_63

    move v5, v13

    goto :goto_64

    :cond_63
    move v5, v12

    .line 1327
    :goto_64
    const/high16 v11, 0x400000

    and-int/2addr v9, v11

    if-eqz v9, :cond_6a

    move v12, v13

    .line 1329
    :cond_6a
    if-eqz v5, :cond_c2

    if-nez v12, :cond_c2

    .line 1330
    and-int/lit16 v1, v10, 0x200

    if-eqz v1, :cond_78

    .line 1331
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7d

    .line 1333
    :cond_78
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1337
    :goto_7d
    if-eqz p4, :cond_81

    .line 1338
    move-object v1, v7

    goto :goto_83

    .line 1340
    :cond_81
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1344
    :goto_83
    if-eqz p4, :cond_86

    .line 1345
    goto :goto_a3

    .line 1346
    :cond_86
    and-int/lit16 v5, v10, 0x100

    if-eqz v5, :cond_94

    .line 1347
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_91

    .line 1348
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    goto :goto_a3

    .line 1350
    :cond_91
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    goto :goto_a3

    .line 1352
    :cond_94
    and-int/lit16 v5, v8, 0x400

    if-nez v5, :cond_a1

    const/high16 v5, 0x2000000

    and-int/2addr v5, v8

    if-eqz v5, :cond_9e

    goto :goto_a1

    .line 1355
    :cond_9e
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    goto :goto_a3

    .line 1353
    :cond_a1
    :goto_a1
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    .line 1358
    :goto_a3
    if-eqz v2, :cond_a8

    .line 1359
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1361
    :cond_a8
    move-object/from16 v5, p6

    invoke-static {v4, v7, v5}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1362
    move-object/from16 v7, p7

    invoke-static {v4, v1, v7}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1363
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1364
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 1363
    invoke-virtual {v6, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1365
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0

    .line 1329
    :cond_c2
    move-object/from16 v5, p6

    move-object/from16 v7, p7

    .line 1367
    if-eqz v1, :cond_ce

    .line 1368
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d3

    .line 1370
    :cond_ce
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1372
    :goto_d3
    if-eqz v2, :cond_d8

    .line 1373
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1376
    :cond_d8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1377
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    .line 1378
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v6, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1379
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public getLidState()I
    .registers 2

    .line 730
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .registers 2

    .line 3076
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 7

    .line 2921
    nop

    .line 2922
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2923
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result p1

    .line 2924
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 2925
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result p1

    sub-int/2addr p2, p1

    .line 2928
    :cond_13
    if-eqz p5, :cond_1f

    .line 2929
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p3

    add-int/2addr p1, p3

    sub-int/2addr p2, p1

    .line 2931
    :cond_1f
    return p2
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 7

    .line 2873
    nop

    .line 2874
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2875
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result p2

    .line 2876
    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v0, 0x2

    if-ne p2, v0, :cond_16

    .line 2877
    :cond_11
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2880
    :cond_16
    if-eqz p5, :cond_22

    .line 2881
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p2

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p3

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    .line 2883
    :cond_22
    return p1
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 7

    .line 3021
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3024
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3025
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3026
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result p2

    .line 3027
    const/4 p3, 0x4

    if-ne p2, p3, :cond_1f

    .line 3028
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_32

    .line 3029
    :cond_1f
    const/4 p3, 0x2

    if-ne p2, p3, :cond_29

    .line 3030
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_32

    .line 3031
    :cond_29
    const/4 p3, 0x1

    if-ne p2, p3, :cond_32

    .line 3032
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 3036
    :cond_32
    :goto_32
    if-eqz p4, :cond_58

    .line 3037
    iget p1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 3038
    iget p1, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->top:I

    .line 3039
    iget p1, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->right:I

    .line 3040
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    .line 3042
    :cond_58
    return-void
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .registers 2

    .line 3678
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .registers 2

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 6

    .line 3002
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3005
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3006
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3007
    return-void
.end method

.method public getTopFullscreenOpaqueWindowStatePrivateFlags()I
    .registers 2

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    .line 763
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 762
    :goto_c
    return v0
.end method

.method getWindowCornerRadius()F
    .registers 3

    .line 2973
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2974
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2973
    :goto_19
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 3

    .line 710
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceNavbar:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return v1
.end method

.method hasSideGestures()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasStatusBar()Z
    .registers 2

    .line 714
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .registers 2

    .line 738
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .registers 2

    .line 679
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .registers 2

    .line 683
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .registers 2

    .line 675
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .registers 2

    .line 691
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .line 742
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .line 746
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .registers 2

    .line 2978
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .registers 2

    .line 754
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$beginLayoutLw$8$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4

    .line 1508
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public synthetic lambda$new$0$DisplayPolicy(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_5

    .line 598
    return-void

    .line 600
    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowSleepTokenOnDisplay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 602
    return-void
.end method

.method public synthetic lambda$new$1$DisplayPolicy()V
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_5

    .line 605
    return-void

    .line 607
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 609
    return-void
.end method

.method public synthetic lambda$notifyDisplayReady$9$DisplayPolicy()V
    .registers 3

    .line 2856
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 2857
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 2858
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2859
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2860
    if-eqz v1, :cond_18

    .line 2861
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 2863
    :cond_18
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    .line 971
    const/4 p2, 0x0

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 972
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 973
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    .line 995
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 996
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    .line 999
    const/4 p2, 0x0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 1000
    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 1001
    iget p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 1002
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 1003
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5

    .line 1006
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    sub-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 1007
    const/4 p2, 0x0

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 1008
    iget p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 1009
    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 1010
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    .line 1013
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz p1, :cond_11

    .line 1015
    :cond_e
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1017
    :cond_11
    return-void
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$10$DisplayPolicy(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V
    .registers 21

    .line 3244
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v10

    .line 3245
    if-eqz v10, :cond_22

    .line 3246
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v11

    .line 3247
    const/4 v5, -0x1

    .line 3249
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3247
    move-object v0, v10

    move v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 3250
    move/from16 v0, p8

    invoke-interface {v10, v11, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZ)V

    .line 3252
    :cond_22
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 42

    .line 1899
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v13, v0, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_76f

    :cond_10
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v13, v0, :cond_76f

    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 1900
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_76f

    .line 1903
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1904
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v16

    .line 1906
    iget v11, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1907
    invoke-static {v13, v15}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 1908
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1909
    iget v1, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1910
    const/4 v2, 0x0

    invoke-static {v2, v15}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v17

    .line 1911
    invoke-static {v15}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    or-int v2, v17, v2

    .line 1913
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v9

    .line 1915
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowFrames;->setHasOutsets(Z)V

    .line 1916
    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1917
    iget-object v7, v9, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 1918
    iget-object v6, v9, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1919
    iget-object v5, v9, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    .line 1920
    iget-object v4, v9, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 1921
    iget-object v3, v9, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 1922
    iget-object v8, v9, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 1923
    move/from16 v19, v0

    iget-object v0, v9, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 1924
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 1925
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 1926
    iget-object v13, v14, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1928
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v13

    move/from16 v20, v2

    if-eqz v13, :cond_7a

    iget-object v13, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_7a

    .line 1929
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-eqz v13, :cond_7a

    const/4 v13, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v13, 0x0

    .line 1931
    :goto_7b
    and-int/lit16 v1, v1, 0xf0

    .line 1933
    and-int/lit16 v2, v10, 0x400

    if-nez v2, :cond_89

    and-int/lit8 v22, v17, 0x4

    if-eqz v22, :cond_86

    goto :goto_89

    :cond_86
    const/16 v22, 0x0

    goto :goto_8b

    :cond_89
    :goto_89
    const/16 v22, 0x1

    .line 1936
    :goto_8b
    move/from16 v23, v13

    and-int/lit16 v13, v10, 0x100

    move/from16 v24, v2

    const/16 v2, 0x100

    if-ne v13, v2, :cond_97

    const/4 v13, 0x1

    goto :goto_98

    :cond_97
    const/4 v13, 0x0

    .line 1937
    :goto_98
    const/high16 v2, 0x10000

    move/from16 v25, v13

    and-int v13, v10, v2

    if-ne v13, v2, :cond_a2

    const/4 v13, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v13, 0x0

    .line 1939
    :goto_a3
    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1941
    move/from16 v27, v13

    const/4 v13, 0x4

    const/16 v2, 0x7db

    if-ne v11, v2, :cond_157

    .line 1942
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1943
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1944
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1945
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1946
    iget-object v1, v9, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1948
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 1950
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 1951
    iget-object v1, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_111

    iget-object v2, v12, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v1, :cond_111

    invoke-direct {v12, v1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1954
    iget v1, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ff

    .line 1955
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iput v1, v4, Landroid/graphics/Rect;->right:I

    iput v1, v5, Landroid/graphics/Rect;->right:I

    iput v1, v6, Landroid/graphics/Rect;->right:I

    iput v1, v7, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x1

    goto :goto_112

    .line 1957
    :cond_ff
    const/4 v2, 0x1

    if-ne v1, v2, :cond_112

    .line 1958
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iput v1, v6, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/graphics/Rect;->left:I

    goto :goto_112

    .line 1951
    :cond_111
    const/4 v2, 0x1

    .line 1965
    :cond_112
    :goto_112
    iget v1, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v1, v13, :cond_144

    .line 1966
    iget v1, v14, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1967
    iget-object v2, v12, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v2

    .line 1968
    invoke-direct {v12, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v19

    .line 1969
    invoke-direct {v12, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v1

    sub-int v19, v19, v1

    .line 1970
    if-lez v19, :cond_144

    .line 1971
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v1, v19

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 1972
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v1, v19

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1973
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v0, v19

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1974
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v0, v19

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1979
    :cond_144
    const/16 v0, 0x50

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v33, v9

    move v13, v11

    move-object v0, v12

    move-object/from16 v29, v15

    const/16 v18, 0x0

    move-object v7, v3

    move v15, v10

    goto/16 :goto_62a

    .line 1980
    :cond_157
    const/16 v0, 0x7ef

    const/16 v2, 0x30

    const/16 v13, 0x10

    if-ne v11, v0, :cond_1a3

    .line 1981
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1982
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1983
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1984
    if-eq v1, v13, :cond_176

    .line 1985
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_17b

    .line 1987
    :cond_176
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1989
    :goto_17b
    if-eq v1, v2, :cond_191

    .line 1990
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v33, v9

    move v13, v11

    move-object v0, v12

    move-object/from16 v29, v15

    const/16 v18, 0x0

    move-object v7, v3

    move v15, v10

    goto/16 :goto_62a

    .line 1992
    :cond_191
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v33, v9

    move v13, v11

    move-object v0, v12

    move-object/from16 v29, v15

    const/16 v18, 0x0

    move-object v7, v3

    move v15, v10

    goto/16 :goto_62a

    .line 1994
    :cond_1a3
    const/16 v0, 0x7dd

    if-ne v11, v0, :cond_1ce

    .line 1995
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v8, 0x7db

    const/high16 v13, -0x80000000

    move-object v2, v7

    move-object v13, v3

    move-object v3, v6

    move-object/from16 v21, v4

    move-object v4, v5

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v5, v6

    move-object v6, v7

    move-object v2, v9

    move-object v0, v12

    move-object v7, v13

    move-object/from16 v29, v15

    move-object/from16 v4, v21

    move-object/from16 v33, v26

    const/16 v18, 0x0

    move v15, v10

    move v13, v11

    goto/16 :goto_62a

    .line 1996
    :cond_1ce
    move-object/from16 v21, v4

    move-object/from16 v26, v9

    move v0, v13

    const/high16 v4, -0x80000000

    move-object v13, v3

    move-object v9, v5

    const/16 v5, 0x7db

    iget-object v3, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    move-object/from16 v5, p1

    const/16 v18, 0x0

    if-ne v5, v3, :cond_22c

    .line 1997
    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1998
    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1999
    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2000
    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v3, v21

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2001
    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2003
    if-ne v1, v0, :cond_212

    .line 2004
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v3

    move-object v5, v6

    move-object v6, v7

    move-object v2, v9

    move-object v0, v12

    move-object v7, v13

    move-object/from16 v29, v15

    move-object/from16 v33, v26

    move v15, v10

    move v13, v11

    goto/16 :goto_62a

    .line 2006
    :cond_212
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 2007
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v13, Landroid/graphics/Rect;->bottom:I

    move-object v4, v3

    move-object v5, v6

    move-object v6, v7

    move-object v2, v9

    move-object v0, v12

    move-object v7, v13

    move-object/from16 v29, v15

    move-object/from16 v33, v26

    move v15, v10

    move v13, v11

    goto/16 :goto_62a

    .line 2010
    :cond_22c
    move-object/from16 v3, v21

    iget-object v2, v14, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2011
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_23b

    const/4 v2, 0x1

    goto :goto_23d

    :cond_23b
    move/from16 v2, v18

    .line 2013
    :goto_23d
    const/4 v4, 0x1

    if-lt v11, v4, :cond_246

    const/16 v4, 0x63

    if-gt v11, v4, :cond_246

    const/4 v4, 0x1

    goto :goto_248

    :cond_246
    move/from16 v4, v18

    .line 2015
    :goto_248
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v5, v0, :cond_254

    .line 2016
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_254

    const/4 v0, 0x1

    goto :goto_256

    :cond_254
    move/from16 v0, v18

    .line 2017
    :goto_256
    if-eqz v4, :cond_29e

    if-nez v2, :cond_29e

    if-nez v0, :cond_29e

    .line 2018
    and-int/lit8 v0, v20, 0x4

    if-nez v0, :cond_279

    if-nez v24, :cond_279

    const/high16 v0, 0x4000000

    and-int/2addr v0, v10

    if-nez v0, :cond_279

    const/high16 v0, -0x80000000

    and-int v2, v10, v0

    if-nez v2, :cond_279

    const/high16 v0, 0x20000

    and-int v0, v19, v0

    if-nez v0, :cond_279

    .line 2024
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 2026
    :cond_279
    const/high16 v0, 0x8000000

    and-int/2addr v0, v10

    if-nez v0, :cond_29b

    and-int/lit8 v0, v20, 0x2

    if-nez v0, :cond_29b

    const/high16 v4, -0x80000000

    and-int v0, v10, v4

    if-nez v0, :cond_2a0

    const/high16 v0, 0x20000

    and-int v0, v19, v0

    if-nez v0, :cond_2a0

    .line 2031
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2032
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    goto :goto_2a0

    .line 2026
    :cond_29b
    const/high16 v4, -0x80000000

    goto :goto_2a0

    .line 2017
    :cond_29e
    const/high16 v4, -0x80000000

    .line 2036
    :cond_2a0
    :goto_2a0
    const/16 v0, 0x7de

    const/16 v2, 0x7cf

    if-eqz v25, :cond_3fa

    if-eqz v27, :cond_3fa

    .line 2042
    if-eqz p2, :cond_2e2

    .line 2045
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, p1

    move/from16 v19, v2

    move v2, v10

    move-object/from16 v30, v3

    move/from16 v3, v19

    move-object/from16 v29, v15

    const/4 v15, 0x1

    move-object/from16 v4, p2

    move v5, v8

    move-object v8, v6

    move-object v6, v7

    move-object/from16 v31, v7

    move-object v7, v8

    move-object/from16 v32, v8

    move-object v8, v9

    move-object/from16 v34, v9

    move-object/from16 v33, v26

    move-object/from16 v9, v30

    move v15, v10

    move-object v10, v13

    move-object/from16 v28, v13

    move v13, v11

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object v0, v12

    move-object/from16 v7, v28

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v2, v34

    goto/16 :goto_62a

    .line 2048
    :cond_2e2
    move/from16 v19, v1

    move-object/from16 v30, v3

    move-object/from16 v32, v6

    move-object/from16 v31, v7

    move-object/from16 v34, v9

    move-object/from16 v28, v13

    move-object/from16 v29, v15

    move-object/from16 v33, v26

    move v15, v10

    move v13, v11

    if-eq v13, v0, :cond_360

    const/16 v0, 0x7e1

    if-ne v13, v0, :cond_304

    move/from16 v1, v20

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v34

    goto/16 :goto_368

    .line 2066
    :cond_304
    const/high16 v0, 0x2000000

    and-int/2addr v0, v15

    if-eqz v0, :cond_327

    const/4 v0, 0x1

    if-lt v13, v0, :cond_327

    if-gt v13, v2, :cond_327

    .line 2070
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v11, v34

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2071
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v10, v32

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2072
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v9, v31

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v1, v20

    goto/16 :goto_3a3

    .line 2066
    :cond_327
    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v34

    .line 2073
    move/from16 v1, v20

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_350

    const/4 v0, 0x1

    if-lt v13, v0, :cond_338

    if-le v13, v2, :cond_340

    :cond_338
    const/16 v0, 0x7e4

    if-eq v13, v0, :cond_340

    const/16 v0, 0x7d9

    if-ne v13, v0, :cond_350

    .line 2081
    :cond_340
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2082
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2086
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3a3

    .line 2088
    :cond_350
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2089
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2093
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3a3

    .line 2048
    :cond_360
    move/from16 v1, v20

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v34

    .line 2055
    :goto_368
    if-eqz v23, :cond_36d

    .line 2056
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_36f

    :cond_36d
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_36f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v11, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 2057
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v11, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 2058
    if-eqz v23, :cond_388

    .line 2059
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_38c

    .line 2060
    :cond_388
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_38c
    iput v0, v11, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 2061
    if-eqz v23, :cond_399

    .line 2062
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_39d

    .line 2063
    :cond_399
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_39d
    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 2096
    :goto_3a3
    if-nez v24, :cond_3d0

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_3b5

    .line 2098
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v8, v30

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v3, v19

    goto :goto_3d9

    .line 2102
    :cond_3b5
    move-object/from16 v8, v30

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_3c8

    move/from16 v3, v19

    const/16 v0, 0x10

    if-eq v3, v0, :cond_3c2

    goto :goto_3ca

    .line 2106
    :cond_3c2
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3d9

    .line 2102
    :cond_3c8
    move/from16 v3, v19

    .line 2104
    :goto_3ca
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3d9

    .line 2113
    :cond_3d0
    move/from16 v3, v19

    move-object/from16 v8, v30

    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2115
    :goto_3d9
    invoke-direct {v12, v1, v15, v8, v14}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2116
    const/16 v0, 0x30

    if-eq v3, v0, :cond_3ee

    .line 2117
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v7, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v4, v8

    move-object v6, v9

    move-object v5, v10

    move-object v2, v11

    move-object v0, v12

    goto/16 :goto_62a

    .line 2119
    :cond_3ee
    move-object/from16 v7, v28

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v4, v8

    move-object v6, v9

    move-object v5, v10

    move-object v2, v11

    move-object v0, v12

    goto/16 :goto_62a

    .line 2036
    :cond_3fa
    move-object v8, v3

    move-object/from16 v29, v15

    move-object/from16 v33, v26

    move v3, v1

    move v15, v10

    move/from16 v1, v20

    move-object v10, v6

    move-object/from16 v37, v9

    move-object v9, v7

    move-object v7, v13

    move v13, v11

    move-object/from16 v11, v37

    .line 2122
    if-nez v25, :cond_4f1

    and-int/lit16 v4, v1, 0x600

    if-eqz v4, :cond_417

    move-object v4, v8

    move-object v6, v9

    move-object v5, v10

    move-object v12, v11

    goto/16 :goto_4f5

    .line 2213
    :cond_417
    if-eqz p2, :cond_441

    .line 2218
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v4, p2

    move-object v6, v9

    move-object/from16 v28, v7

    move-object v7, v10

    move-object/from16 v30, v8

    move-object v8, v11

    move-object/from16 v35, v9

    move-object/from16 v9, v30

    move-object/from16 v36, v10

    move-object/from16 v10, v28

    move-object v12, v11

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object v2, v12

    move-object/from16 v7, v28

    move-object/from16 v4, v30

    move-object/from16 v6, v35

    move-object/from16 v5, v36

    goto/16 :goto_62a

    .line 2225
    :cond_441
    move-object/from16 v28, v7

    move-object/from16 v30, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object v12, v11

    if-ne v13, v0, :cond_46d

    .line 2229
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v4, v30

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2230
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2231
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v5, v36

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2232
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v6, v35

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v7, v28

    goto/16 :goto_62a

    .line 2233
    :cond_46d
    move-object/from16 v4, v30

    move-object/from16 v6, v35

    move-object/from16 v5, v36

    const/16 v0, 0x7d5

    if-eq v13, v0, :cond_4d6

    const/16 v0, 0x7d3

    if-ne v13, v0, :cond_47e

    move-object/from16 v7, v28

    goto :goto_4d8

    .line 2240
    :cond_47e
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_499

    .line 2242
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2243
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2244
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4bc

    .line 2245
    :cond_499
    const/16 v0, 0x10

    if-eq v3, v0, :cond_4ad

    .line 2246
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2247
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2248
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4bc

    .line 2250
    :cond_4ad
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2251
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2252
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2254
    :goto_4bc
    const/16 v0, 0x30

    if-eq v3, v0, :cond_4cc

    .line 2255
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v7, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object v2, v12

    goto/16 :goto_62a

    .line 2257
    :cond_4cc
    move-object/from16 v7, v28

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object v2, v12

    goto/16 :goto_62a

    .line 2233
    :cond_4d6
    move-object/from16 v7, v28

    .line 2235
    :goto_4d8
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2236
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2237
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2238
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object v2, v12

    goto/16 :goto_62a

    .line 2122
    :cond_4f1
    move-object v4, v8

    move-object v6, v9

    move-object v5, v10

    move-object v12, v11

    .line 2129
    :goto_4f5
    if-eq v13, v0, :cond_5dd

    const/16 v0, 0x7e1

    if-ne v13, v0, :cond_4fd

    goto/16 :goto_5dd

    .line 2141
    :cond_4fd
    const/16 v0, 0x7e3

    if-eq v13, v0, :cond_5cd

    const/16 v0, 0x7e8

    if-ne v13, v0, :cond_507

    goto/16 :goto_5cd

    .line 2147
    :cond_507
    const/16 v0, 0x7df

    if-eq v13, v0, :cond_50f

    const/16 v0, 0x7f4

    if-ne v13, v0, :cond_527

    :cond_50f
    if-eqz v24, :cond_527

    .line 2151
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2152
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2153
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2154
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_617

    .line 2155
    :cond_527
    const/16 v0, 0x7e5

    if-ne v13, v0, :cond_541

    .line 2157
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2158
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2159
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2160
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_617

    .line 2161
    :cond_541
    const/high16 v0, 0x2000000

    and-int/2addr v0, v15

    if-eqz v0, :cond_561

    const/4 v0, 0x1

    if-lt v13, v0, :cond_561

    if-gt v13, v2, :cond_561

    .line 2165
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2166
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2167
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2168
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_617

    .line 2169
    :cond_561
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_590

    const/16 v0, 0x7d0

    if-eq v13, v0, :cond_57a

    const/16 v0, 0x7d5

    if-eq v13, v0, :cond_57a

    const/16 v0, 0x7f2

    if-eq v13, v0, :cond_57a

    const/16 v0, 0x7f1

    if-eq v13, v0, :cond_57a

    const/4 v0, 0x1

    if-lt v13, v0, :cond_590

    if-gt v13, v2, :cond_590

    .line 2182
    :cond_57a
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2183
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2184
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2185
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_617

    .line 2186
    :cond_590
    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_5b8

    .line 2187
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2188
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2189
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2193
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_5b2

    const/16 v0, 0x10

    if-eq v3, v0, :cond_5ac

    goto :goto_5b2

    .line 2197
    :cond_5ac
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_617

    .line 2195
    :cond_5b2
    :goto_5b2
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_617

    .line 2200
    :cond_5b8
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2201
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2202
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2203
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_617

    .line 2143
    :cond_5cd
    :goto_5cd
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2144
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2145
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_617

    .line 2130
    :cond_5dd
    :goto_5dd
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2131
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2132
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2133
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2134
    if-eqz v23, :cond_617

    .line 2135
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iput v0, v12, Landroid/graphics/Rect;->left:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 2136
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iput v0, v12, Landroid/graphics/Rect;->right:I

    iput v0, v5, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 2137
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 2206
    :cond_617
    :goto_617
    move-object/from16 v0, p0

    move-object v2, v12

    invoke-direct {v0, v1, v15, v4, v14}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2208
    const/16 v1, 0x30

    if-eq v3, v1, :cond_627

    .line 2209
    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_62a

    .line 2211
    :cond_627
    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2263
    :goto_62a
    move-object/from16 v1, v29

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2264
    if-eqz p2, :cond_634

    if-nez v25, :cond_634

    const/4 v8, 0x1

    goto :goto_636

    :cond_634
    move/from16 v8, v18

    .line 2265
    :goto_636
    const/4 v9, 0x2

    and-int/lit8 v10, v17, 0x2

    if-eqz v10, :cond_63d

    const/4 v9, 0x1

    goto :goto_63f

    :cond_63d
    move/from16 v9, v18

    .line 2270
    :goto_63f
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v10

    if-nez v10, :cond_64c

    if-eqz v25, :cond_64c

    const/4 v10, 0x1

    if-eq v13, v10, :cond_64c

    const/16 v18, 0x1

    .line 2275
    :cond_64c
    const/4 v10, 0x1

    if-eq v3, v10, :cond_6af

    .line 2276
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 2277
    iget-object v11, v14, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2278
    if-eqz v25, :cond_663

    if-eqz v27, :cond_663

    if-nez v22, :cond_663

    if-nez v3, :cond_663

    .line 2284
    const/high16 v11, -0x80000000

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_665

    .line 2278
    :cond_663
    const/high16 v11, -0x80000000

    .line 2286
    :goto_665
    const v12, 0x7fffffff

    if-eqz v25, :cond_684

    if-eqz v27, :cond_684

    if-nez v9, :cond_684

    if-nez v3, :cond_684

    .line 2289
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v9, 0x1

    if-eq v3, v9, :cond_682

    const/4 v9, 0x2

    if-eq v3, v9, :cond_67f

    const/4 v9, 0x4

    if-eq v3, v9, :cond_67c

    goto :goto_684

    .line 2291
    :cond_67c
    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 2292
    goto :goto_684

    .line 2294
    :cond_67f
    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 2295
    goto :goto_684

    .line 2297
    :cond_682
    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 2301
    :cond_684
    :goto_684
    const/16 v3, 0x7db

    if-ne v13, v3, :cond_68f

    iget v9, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v11, 0x4

    if-ne v9, v11, :cond_68f

    .line 2303
    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 2310
    :cond_68f
    if-nez v8, :cond_6a9

    if-nez v18, :cond_6a9

    .line 2311
    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2312
    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2313
    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    move-object/from16 v9, v33

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_6ab

    .line 2310
    :cond_6a9
    move-object/from16 v9, v33

    .line 2317
    :goto_6ab
    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_6b3

    .line 2275
    :cond_6af
    move-object/from16 v9, v33

    const/16 v3, 0x7db

    .line 2321
    :goto_6b3
    iget-object v8, v14, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2325
    and-int/lit16 v8, v15, 0x200

    if-eqz v8, :cond_6f2

    const/16 v8, 0x7da

    if-eq v13, v8, :cond_6f2

    .line 2326
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_6f2

    .line 2327
    const/16 v8, -0x2710

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 2328
    const/16 v8, 0x2710

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 2329
    const/16 v5, 0x7dd

    if-eq v13, v5, :cond_6f2

    .line 2330
    const/16 v5, -0x2710

    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 2331
    const/16 v5, 0x2710

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    iput v5, v7, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 2339
    :cond_6f2
    invoke-static {v1, v15}, Lcom/android/server/wm/DisplayPolicy;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v1

    .line 2340
    if-eqz v16, :cond_733

    if-eqz v1, :cond_733

    .line 2341
    iget-object v1, v9, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    .line 2342
    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v5, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2343
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/server/wm/WindowFrames;->setHasOutsets(Z)V

    .line 2344
    iget v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 2345
    if-lez v2, :cond_733

    .line 2346
    iget v4, v14, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2347
    if-nez v4, :cond_719

    .line 2348
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_733

    .line 2349
    :cond_719
    const/4 v5, 0x1

    if-ne v4, v5, :cond_722

    .line 2350
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_733

    .line 2351
    :cond_722
    const/4 v5, 0x2

    if-ne v4, v5, :cond_72b

    .line 2352
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    goto :goto_733

    .line 2353
    :cond_72b
    const/4 v5, 0x3

    if-ne v4, v5, :cond_733

    .line 2354
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 2372
    :cond_733
    :goto_733
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73f

    .line 2373
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 2376
    :cond_73f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 2379
    if-ne v13, v3, :cond_759

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_759

    .line 2380
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v1

    if-nez v1, :cond_756

    .line 2381
    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_75b

    .line 2380
    :cond_756
    move-object/from16 v1, p1

    goto :goto_75b

    .line 2379
    :cond_759
    move-object/from16 v1, p1

    .line 2383
    :goto_75b
    const/16 v2, 0x7ef

    if-ne v13, v2, :cond_76e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_76e

    .line 2384
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_76e

    .line 2385
    invoke-direct {v0, v1, v14}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 2387
    :cond_76e
    return-void

    .line 1901
    :cond_76f
    :goto_76f
    return-void
.end method

.method public navigationBarCanMove()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .registers 5

    .line 3058
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_11

    if-le p1, p2, :cond_11

    .line 3059
    const/4 p1, 0x3

    const/4 p2, 0x1

    if-ne p3, p1, :cond_d

    .line 3060
    return p2

    .line 3061
    :cond_d
    if-ne p3, p2, :cond_11

    .line 3062
    const/4 p1, 0x2

    return p1

    .line 3065
    :cond_11
    const/4 p1, 0x4

    return p1
.end method

.method notifyDisplayReady()V
    .registers 3

    .line 2855
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$m-UPXUZKrPpeFUjrauzoJMNbYjM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$m-UPXUZKrPpeFUjrauzoJMNbYjM;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2864
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 9

    .line 2710
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 2712
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2713
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 2714
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 2715
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 2716
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v0

    .line 2717
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v5

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2720
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v7, 0x105021c

    .line 2722
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2723
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v7, 0x105021b

    .line 2725
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v0

    aput v7, v6, v4

    goto :goto_4e

    .line 2727
    :cond_43
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v7, 0x0

    aput v7, v6, v0

    aput v7, v6, v4

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2734
    :goto_4e
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v7, 0x105018b

    .line 2736
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2737
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v7, 0x105018d

    .line 2739
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v0

    aput v7, v6, v4

    .line 2742
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v7, 0x1050188

    .line 2744
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2745
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v7, 0x1050189

    .line 2747
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v0

    aput v7, v6, v4

    .line 2750
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v7, 0x1050190

    .line 2754
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v0

    aput v7, v6, v4

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2773
    const v0, 0x10e0083

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 2774
    const v0, 0x105009a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    .line 2775
    const v0, 0x11100a3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 2776
    const v0, 0x11100a0

    .line 2777
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 2780
    const v0, 0x105018a

    .line 2781
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2782
    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 2784
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2785
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 2786
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .registers 3

    .line 3658
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 3659
    return-void
.end method

.method public onOverlayChangedLw()V
    .registers 2

    .line 2701
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2702
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2703
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 2704
    return-void
.end method

.method onPowerKeyDown(Z)V
    .registers 8

    .line 3636
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 3637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3638
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 3636
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result p1

    .line 3639
    if-eqz p1, :cond_20

    .line 3640
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3642
    :cond_20
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .registers 3

    .line 3645
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 3646
    return-void
.end method

.method public prepareAddWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 8

    .line 947
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    if-eqz v0, :cond_15

    .line 948
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_15
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    const/4 v3, -0x7

    const/4 v4, 0x0

    if-eq p2, v0, :cond_8c

    const/16 v0, 0x7de

    if-eq p2, v0, :cond_86

    const/16 v0, 0x7e1

    if-eq p2, v0, :cond_86

    const/16 v0, 0x7e3

    if-eq p2, v0, :cond_33

    const/16 p1, 0x7e8

    if-eq p2, p1, :cond_86

    const/16 p1, 0x7f1

    if-eq p2, p1, :cond_86

    goto/16 :goto_c8

    .line 979
    :cond_33
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_43

    .line 983
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 984
    return v3

    .line 987
    :cond_43
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 988
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 989
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    .line 991
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 993
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x5

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$52bg3qYmo5Unt8Q07j9d6hFQG2o;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$52bg3qYmo5Unt8Q07j9d6hFQG2o;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 997
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x6

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1004
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x7

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$2VfPB7jRHi3x9grU1pG8ihi_Ga4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$2VfPB7jRHi3x9grU1pG8ihi_Ga4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1011
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v0, 0x9

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LmU9vcWscAr5f4KqPLDYJTaZBVU;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LmU9vcWscAr5f4KqPLDYJTaZBVU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1019
    goto :goto_c8

    .line 1024
    :cond_86
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 956
    :cond_8c
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_9c

    .line 960
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 961
    return v3

    .line 964
    :cond_9c
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 965
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 966
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_b0

    .line 967
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p2, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 969
    :cond_b0
    new-instance p2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$sDsfACJdM5Dc_VvZ4b6PthimRJY;

    invoke-direct {p2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$sDsfACJdM5Dc_VvZ4b6PthimRJY;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 974
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v4, p1, p2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 976
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 977
    nop

    .line 1029
    :goto_c8
    return v4
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_20

    .line 1040
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1042
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_19

    .line 1043
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1045
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_31

    .line 1046
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_31

    .line 1047
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1048
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1051
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_37

    .line 1052
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1054
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1055
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .registers 2

    .line 3161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3162
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3163
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 779
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 780
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 781
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 782
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 783
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 769
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 770
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 771
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 772
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 773
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public selectAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .registers 11

    .line 1079
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne p1, v0, :cond_44

    .line 1080
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_16

    move v0, v6

    goto :goto_17

    :cond_16
    move v0, v3

    .line 1081
    :goto_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v7, v2, :cond_29

    .line 1082
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v2, :cond_29

    move v7, v6

    goto :goto_2a

    :cond_29
    move v7, v3

    .line 1083
    :goto_2a
    if-nez v0, :cond_43

    if-eqz v7, :cond_2f

    goto :goto_43

    .line 1086
    :cond_2f
    if-eq p2, v4, :cond_3f

    if-ne p2, v5, :cond_34

    goto :goto_3f

    .line 1089
    :cond_34
    if-eq p2, v6, :cond_3b

    if-ne p2, v1, :cond_39

    goto :goto_3b

    .line 1093
    :cond_39
    goto/16 :goto_a9

    .line 1091
    :cond_3b
    :goto_3b
    const p1, 0x10a002d

    return p1

    .line 1088
    :cond_3f
    :goto_3f
    const p1, 0x10a002e

    return p1

    .line 1084
    :cond_43
    :goto_43
    return v2

    .line 1093
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_9a

    .line 1094
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_51

    .line 1095
    return v3

    .line 1098
    :cond_51
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v0, v5, :cond_74

    .line 1099
    if-eq p2, v4, :cond_62

    if-ne p2, v5, :cond_5a

    goto :goto_62

    .line 1106
    :cond_5a
    if-eq p2, v6, :cond_5e

    if-ne p2, v1, :cond_a9

    .line 1108
    :cond_5e
    const p1, 0x10a0026

    return p1

    .line 1101
    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1102
    const p1, 0x10a0028

    return p1

    .line 1104
    :cond_70
    const p1, 0x10a0027

    return p1

    .line 1110
    :cond_74
    if-ne v0, v4, :cond_87

    .line 1111
    if-eq p2, v4, :cond_83

    if-ne p2, v5, :cond_7b

    goto :goto_83

    .line 1114
    :cond_7b
    if-eq p2, v6, :cond_7f

    if-ne p2, v1, :cond_a9

    .line 1116
    :cond_7f
    const p1, 0x10a002b

    return p1

    .line 1113
    :cond_83
    :goto_83
    const p1, 0x10a002c

    return p1

    .line 1118
    :cond_87
    if-ne v0, v6, :cond_a9

    .line 1119
    if-eq p2, v4, :cond_96

    if-ne p2, v5, :cond_8e

    goto :goto_96

    .line 1122
    :cond_8e
    if-eq p2, v6, :cond_92

    if-ne p2, v1, :cond_a9

    .line 1124
    :cond_92
    const p1, 0x10a0029

    return p1

    .line 1121
    :cond_96
    :goto_96
    const p1, 0x10a002a

    return p1

    .line 1127
    :cond_9a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_a9

    .line 1128
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->selectDockedDividerAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result p1

    return p1

    .line 1131
    :cond_a9
    :goto_a9
    const/4 v0, 0x5

    if-ne p2, v0, :cond_b6

    .line 1132
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 1134
    const p1, 0x10a0013

    return p1

    .line 1136
    :cond_b6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7e7

    if-ne p1, v0, :cond_c7

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz p1, :cond_c7

    if-ne p2, v6, :cond_c7

    .line 1142
    return v2

    .line 1145
    :cond_c7
    return v3
.end method

.method public selectRotationAnimationLw([I)V
    .registers 8

    .line 1188
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v2

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v1

    .line 1194
    :goto_14
    const v3, 0x10a0084

    const v4, 0x10a0083

    if-eqz v0, :cond_21

    .line 1195
    aput v3, p1, v2

    .line 1196
    aput v4, p1, v1

    .line 1197
    return-void

    .line 1199
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_52

    .line 1200
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v0

    .line 1201
    if-gez v0, :cond_37

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v5, :cond_37

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1204
    :cond_37
    if-eq v0, v1, :cond_49

    const/4 v5, 0x2

    if-eq v0, v5, :cond_44

    const/4 v3, 0x3

    if-eq v0, v3, :cond_49

    .line 1216
    aput v2, p1, v1

    aput v2, p1, v2

    goto :goto_51

    .line 1211
    :cond_44
    aput v3, p1, v2

    .line 1212
    aput v4, p1, v1

    .line 1213
    goto :goto_51

    .line 1207
    :cond_49
    const v0, 0x10a0085

    aput v0, p1, v2

    .line 1208
    aput v4, p1, v1

    .line 1209
    nop

    .line 1219
    :goto_51
    goto :goto_56

    .line 1220
    :cond_52
    aput v2, p1, v1

    aput v2, p1, v2

    .line 1222
    :goto_56
    return-void
.end method

.method public setAwake(Z)V
    .registers 2

    .line 734
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 735
    return-void
.end method

.method public setDockMode(I)V
    .registers 2

    .line 695
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 696
    return-void
.end method

.method setForceShowSystemBars(Z)V
    .registers 2

    .line 706
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 707
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 2

    .line 3048
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 3049
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .registers 3

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 661
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .registers 4

    .line 664
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq p2, p1, :cond_26

    .line 665
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 666
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 667
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    const-string v0, "state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 672
    :cond_26
    return-void
.end method

.method public setLidState(I)V
    .registers 2

    .line 726
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 727
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 2

    .line 687
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 688
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .registers 3

    .line 3759
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3760
    return-void

    .line 3763
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 3764
    const/4 p1, 0x4

    goto :goto_e

    :cond_d
    const/4 p1, 0x5

    .line 3763
    :goto_e
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3765
    return-void
.end method

.method shouldRotateSeamlessly(Lcom/android/server/wm/DisplayRotation;II)Z
    .registers 6

    .line 3585
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_42

    .line 3586
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result p1

    if-ne p3, p1, :cond_e

    goto :goto_42

    .line 3593
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p1

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-nez p1, :cond_19

    .line 3594
    return v1

    .line 3597
    :cond_19
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3598
    if-eqz p1, :cond_41

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, p2, :cond_22

    goto :goto_41

    .line 3603
    :cond_22
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p2, :cond_2f

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result p2

    if-nez p2, :cond_2f

    .line 3604
    return v1

    .line 3611
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result p2

    if-nez p2, :cond_40

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_40

    .line 3612
    const/4 p1, 0x1

    return p1

    .line 3614
    :cond_40
    return v1

    .line 3599
    :cond_41
    :goto_41
    return v1

    .line 3587
    :cond_42
    :goto_42
    return v1
.end method

.method public switchUser()V
    .registers 1

    .line 2694
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2695
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_f

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 645
    :cond_f
    return-void
.end method

.method public takeScreenshot(I)V
    .registers 9

    .line 3669
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_2a

    .line 3670
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 3671
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1f

    .line 3672
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    .line 3670
    move v1, p1

    move v2, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 3675
    :cond_2a
    return-void
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .registers 4

    .line 2789
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2790
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_19

    const v1, 0x11100a1

    .line 2792
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 2793
    const v1, 0x1110013

    .line 2794
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 2795
    return-void
.end method

.method public updateSettings()V
    .registers 5

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 650
    const-string v1, "force_show_navbar"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceNavbar:I

    .line 653
    return-void
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .registers 7

    .line 1238
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1a

    .line 1249
    return v0

    .line 1242
    :pswitch_5  #0x10a0084, 0x10a0085
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    .line 1243
    return v1

    .line 1245
    :cond_9
    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 1246
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1247
    aget v2, p3, v1

    if-ne p1, v2, :cond_18

    aget p1, p3, v0

    if-ne p2, p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0

    :pswitch_data_1a
    .packed-switch 0x10a0084
        :pswitch_5  #010a0084
        :pswitch_5  #010a0085
    .end packed-switch
.end method
