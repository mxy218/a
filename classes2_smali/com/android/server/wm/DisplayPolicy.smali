.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;,
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

.field private static SCROLL_BOOST_SS_ENABLE:Z = false

.field private static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static isLowRAM:Z

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

.field private mForceShowSystemBars:Z

.field private mForceShowSystemBarsFromExternal:Z

.field private mForceStatusBar:Z

.field private mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field private mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field private mIsPerfBoostFlingAcquired:Z

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

.field mPerf:Landroid/util/BoostFramework;

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

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

    .line 241
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 242
    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDockedFrame:Landroid/graphics/Rect;

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 16
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 248
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 249
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 250
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    .line 253
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 274
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 296
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 297
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 298
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 299
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 300
    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 302
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    .line 303
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    .line 304
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    .line 305
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    .line 308
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    .line 317
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 347
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 349
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    .line 352
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 353
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 354
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 355
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 359
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    .line 377
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 395
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 407
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 1565
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3831
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 490
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 491
    iget-boolean v2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_8c

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_96

    .line 492
    :cond_8c
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_96
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 493
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 494
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 496
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 497
    .local v2, "displayId":I
    new-instance v3, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v3, v2}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 498
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

    .line 507
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 508
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x111003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 509
    const v4, 0x1110049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 510
    const v4, 0x1110082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 512
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 514
    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v5, 0x1

    if-nez v4, :cond_fa

    .line 515
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 516
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 517
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 520
    :cond_fa
    const-string v4, "kona"

    const-string v6, "ro.product.board"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11a

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_11a

    .line 521
    const-string v6, "vendor.perf.gestureflingboost.enable"

    const-string v7, "false"

    invoke-virtual {v4, v6, v7}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 522
    :cond_11a
    const-string v4, "ro.config.low_ram"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 524
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 525
    .local v4, "looper":Landroid/os/Looper;
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v6, p0, v4}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 526
    new-instance v6, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v9, p0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 771
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p2, v6}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 772
    iget-object v6, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 773
    invoke-virtual {v7}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v7

    .line 772
    invoke-virtual {v6, v7}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 774
    new-instance v6, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v6, v7, v4, v8}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 776
    new-instance v6, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    .line 783
    new-instance v6, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$_FsvHpVUi-gbWmSpT009cJNNmgM;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$_FsvHpVUi-gbWmSpT009cJNNmgM;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    .line 792
    iget-boolean v6, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_178

    .line 793
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_179

    :cond_178
    nop

    :goto_179
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1ae

    .line 796
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x11100bc

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 801
    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a3

    .line 803
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_1ad

    .line 804
    :cond_1a3
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 805
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 807
    .end local v0  # "navBarOverride":Ljava/lang/String;
    :cond_1ad
    :goto_1ad
    goto :goto_1b8

    .line 808
    :cond_1ae
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 809
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 812
    :goto_1b8
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 813
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    .line 819
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # Z

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .line 196
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # Z

    .line 196
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/util/BoostFramework;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # I

    .line 196
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$2072(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # I

    .line 196
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # I

    .line 196
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/wm/DisplayPolicy;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # J

    .line 196
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$2500(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 196
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # Lcom/android/server/wm/WindowState;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"  # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/gamemode/GameModeController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "sysui"  # I
    .param p2, "fl"  # I
    .param p3, "r"  # Landroid/graphics/Rect;
    .param p4, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 2030
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_5

    .line 2031
    return-void

    .line 2035
    :cond_5
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_f

    .line 2036
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_14

    .line 2038
    :cond_f
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2040
    :goto_14
    return-void
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .line 3781
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 2043
    nop

    .line 2044
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

    .line 2045
    .local v0, "notFocusable":Z
    :goto_10
    nop

    .line 2046
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 2047
    .local v3, "altFocusableIm":Z
    :goto_1f
    xor-int v4, v0, v3

    .line 2048
    .local v4, "notFocusableForIm":Z
    if-nez v4, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 7
    .param p0, "opaque"  # Lcom/android/server/wm/WindowState;
    .param p1, "opaqueOrDimming"  # Lcom/android/server/wm/WindowState;
    .param p2, "imeWindow"  # Lcom/android/server/wm/WindowState;
    .param p3, "navBarPosition"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3489
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 3490
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    if-ne p3, v1, :cond_17

    .line 3492
    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 3495
    .local v1, "imeWindowCanNavColorWindow":Z
    :goto_18
    if-eqz p0, :cond_22

    if-ne p1, p0, :cond_22

    .line 3500
    if-eqz v1, :cond_20

    move-object v0, p2

    goto :goto_21

    :cond_20
    move-object v0, p0

    :goto_21
    return-object v0

    .line 3503
    :cond_22
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_3a

    .line 3508
    :cond_2b
    if-nez v1, :cond_2e

    .line 3510
    return-object p1

    .line 3515
    :cond_2e
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3517
    return-object p2

    .line 3520
    :cond_39
    return-object p1

    .line 3505
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_3d

    move-object v0, p2

    :cond_3d
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .registers 3

    .line 3762
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    .line 3763
    .local v1, "newVal":I
    if-eq v1, v0, :cond_d

    .line 3764
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 3765
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 3767
    :cond_d
    return-void
.end method

.method private configureNavBarOpacity(IZZZZZ)I
    .registers 9
    .param p1, "visibility"  # I
    .param p2, "dockedStackVisible"  # Z
    .param p3, "freeformStackVisible"  # Z
    .param p4, "isDockedDividerResizing"  # Z
    .param p5, "fullscreenDrawsBackground"  # Z
    .param p6, "dockedDrawsNavigationBarBackground"  # Z

    .line 3722
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 3723
    if-eqz p5, :cond_e

    if-eqz p6, :cond_e

    .line 3724
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3725
    :cond_e
    if-eqz p2, :cond_3f

    .line 3726
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3728
    :cond_15
    if-nez v0, :cond_2a

    .line 3729
    if-nez p2, :cond_25

    if-nez p3, :cond_25

    if-eqz p4, :cond_1e

    goto :goto_25

    .line 3731
    :cond_1e
    if-eqz p5, :cond_3f

    .line 3732
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3730
    :cond_25
    :goto_25
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3734
    :cond_2a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    .line 3735
    if-eqz p4, :cond_34

    .line 3736
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3737
    :cond_34
    if-eqz p3, :cond_3b

    .line 3738
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_3f

    .line 3740
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 3744
    :cond_3f
    :goto_3f
    return p1
.end method

.method private disablePointerLocation()V
    .registers 3

    .line 4013
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5

    .line 4014
    return-void

    .line 4017
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4018
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4019
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4020
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4021
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2
    .param p1, "inputConsumer"  # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 3342
    if-eqz p1, :cond_5

    .line 3343
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 3345
    :cond_5
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .registers 10
    .param p1, "vis"  # I
    .param p2, "win"  # Lcom/android/server/wm/WindowState;
    .param p3, "controller"  # Lcom/android/server/wm/BarController;
    .param p4, "translucentFlag"  # I

    .line 3692
    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3693
    return v1

    .line 3695
    :cond_8
    const/4 v0, 0x1

    if-nez p2, :cond_c

    .line 3696
    return v0

    .line 3699
    :cond_c
    nop

    .line 3700
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    move v2, v0

    goto :goto_1b

    :cond_1a
    move v2, v1

    .line 3701
    .local v2, "drawsSystemBars":Z
    :goto_1b
    nop

    .line 3702
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_29

    move v3, v0

    goto :goto_2a

    :cond_29
    move v3, v1

    .line 3704
    .local v3, "forceDrawsSystemBars":Z
    :goto_2a
    if-nez v3, :cond_34

    if-eqz v2, :cond_33

    and-int v4, p1, p4

    if-nez v4, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    :cond_34
    :goto_34
    return v0
.end method

.method private drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "vis"  # I
    .param p2, "win"  # Lcom/android/server/wm/WindowState;

    .line 3712
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/high16 v1, 0x8000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "vis"  # I
    .param p2, "win"  # Lcom/android/server/wm/WindowState;

    .line 3708
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private enablePointerLocation()V
    .registers 5

    .line 3984
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_5

    .line 3985
    return-void

    .line 3988
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3989
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 3990
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 3993
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3994
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3998
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3999
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4000
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4001
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4004
    :cond_38
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4005
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

    .line 4006
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4007
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4008
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4009
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4010
    return-void
.end method

.method private getAppPackageName()Ljava/lang/String;
    .registers 5

    .line 460
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v0

    .line 461
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 462
    .local v0, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-object v0, v1

    .line 465
    .local v0, "currentPackage":Ljava/lang/String;
    goto :goto_1b

    .line 463
    .end local v0  # "currentPackage":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 466
    .local v0, "currentPackage":Ljava/lang/String;
    :goto_1b
    return-object v0
.end method

.method private getDisplayId()I
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p0, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 1548
    const/4 v0, 0x0

    .line 1549
    .local v0, "impliedFlags":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1552
    .local v1, "forceWindowDrawsBarBackgrounds":Z
    :goto_14
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1d

    if-eqz v1, :cond_21

    .line 1554
    :cond_1d
    or-int/lit16 v0, v0, 0x200

    .line 1555
    or-int/lit16 v0, v0, 0x400

    .line 1557
    :cond_21
    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .registers 4
    .param p1, "rotation"  # I
    .param p2, "uiMode"  # I

    .line 3107
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .registers 4
    .param p1, "rotation"  # I
    .param p2, "uiMode"  # I

    .line 3087
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .registers 4
    .param p1, "rotation"  # I
    .param p2, "uiMode"  # I

    .line 3051
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .registers 4
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 1222
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 264
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 265
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 267
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 268
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getSystemUiContext()Landroid/content/Context;
    .registers 3

    .line 3042
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 3043
    .local v0, "uiContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_10

    .line 3044
    move-object v1, v0

    goto :goto_1a

    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 3043
    :goto_1a
    return-object v1
.end method

.method private hasStatusBarServicePermission(II)Z
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isImmersiveMode(I)Z
    .registers 4
    .param p1, "vis"  # I

    .line 3770
    const/16 v0, 0x1800

    .line 3771
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_16

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_16

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_16

    .line 3774
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 3771
    :goto_17
    return v1
.end method

.method private isKeyguardOccluded()Z
    .registers 2

    .line 3354
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .registers 4
    .param p0, "systemUiFlags"  # I

    .line 3785
    const/high16 v0, 0x1600000

    .line 3789
    .local v0, "disableNavigationBar":I
    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isStatusBarKeyguard()Z
    .registers 2

    .line 3348
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10

    .line 3349
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3348
    :goto_11
    return v0
.end method

.method private isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .registers 9
    .param p1, "currentPackage"  # Ljava/lang/String;
    .param p2, "BoostType"  # Landroid/util/BoostFramework;

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "isGame":Z
    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 473
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 474
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_21

    .line 475
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v4, :cond_20

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_22

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :cond_20
    :goto_20
    move v0, v2

    .line 481
    .end local v1  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_21
    goto :goto_30

    .line 479
    :catch_22
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 483
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_24
    const/16 v1, 0x1601

    invoke-virtual {p2, v1, p1}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    move v0, v2

    .line 486
    :goto_30
    return v0
.end method

.method static synthetic lambda$canToastShowWhenLocked$2(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "callingPid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 1090
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZ)Z
    .registers 28
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"  # I
    .param p3, "navVisible"  # Z
    .param p4, "navTranslucent"  # Z
    .param p5, "navAllowedHidden"  # Z
    .param p6, "statusBarForcesShowingNavigation"  # Z

    .line 1850
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    if-nez v4, :cond_e

    .line 1851
    return v5

    .line 1854
    :cond_e
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 1855
    .local v4, "navigationFrame":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v15

    .line 1859
    .local v15, "transientNavBarShowing":Z
    iget v14, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1860
    .local v14, "rotation":I
    iget v13, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 1861
    .local v13, "displayHeight":I
    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 1862
    .local v12, "displayWidth":I
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1863
    .local v11, "dockFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v6

    iput v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 1865
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1866
    .local v10, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1867
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1869
    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v6, v7, :cond_8e

    .line 1871
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 1872
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1873
    .local v6, "top":I
    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 1874
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v9

    sub-int/2addr v7, v9

    .line 1875
    .local v7, "topNavBar":I
    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v7, v12, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1876
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1877
    if-eqz v15, :cond_5b

    .line 1878
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_72

    .line 1879
    :cond_5b
    if-eqz p3, :cond_6d

    .line 1880
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1881
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_72

    .line 1885
    :cond_6d
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1887
    :goto_72
    if-eqz p3, :cond_8c

    if-nez p4, :cond_8c

    if-nez p5, :cond_8c

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1888
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_8c

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1889
    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 1892
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1894
    .end local v6  # "top":I
    .end local v7  # "topNavBar":I
    :cond_8c
    goto/16 :goto_134

    :cond_8e
    const/4 v7, 0x2

    if-ne v6, v7, :cond_e1

    .line 1896
    iget v6, v10, Landroid/graphics/Rect;->right:I

    .line 1897
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1898
    .local v6, "left":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v6, v5, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1899
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1900
    if-eqz v15, :cond_af

    .line 1901
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_c6

    .line 1902
    :cond_af
    if-eqz p3, :cond_c1

    .line 1903
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1904
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v11, Landroid/graphics/Rect;->right:I

    goto :goto_c6

    .line 1908
    :cond_c1
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1910
    :goto_c6
    if-eqz p3, :cond_133

    if-nez p4, :cond_133

    if-nez p5, :cond_133

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1911
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_133

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1912
    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_133

    .line 1915
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_133

    .line 1917
    .end local v6  # "left":I
    :cond_e1
    if-ne v6, v8, :cond_133

    .line 1919
    iget v6, v10, Landroid/graphics/Rect;->left:I

    .line 1920
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v6, v7

    .line 1921
    .local v6, "right":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v7, v5, v6, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1922
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1923
    if-eqz v15, :cond_101

    .line 1924
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_118

    .line 1925
    :cond_101
    if-eqz p3, :cond_113

    .line 1926
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1927
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v11, Landroid/graphics/Rect;->left:I

    goto :goto_118

    .line 1931
    :cond_113
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1933
    :goto_118
    if-eqz p3, :cond_134

    if-nez p4, :cond_134

    if-nez p5, :cond_134

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1934
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_134

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1935
    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_134

    .line 1938
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->left:I

    goto :goto_134

    .line 1917
    .end local v6  # "right":I
    :cond_133
    :goto_133
    nop

    .line 1944
    :cond_134
    :goto_134
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1945
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1946
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1948
    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1949
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v6

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    move-object v7, v4

    move-object v8, v4

    move-object/from16 v17, v9

    move-object v9, v4

    move-object/from16 v18, v10

    .end local v10  # "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    .local v18, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    move-object v10, v5

    move-object v5, v11

    .end local v11  # "dockFrame":Landroid/graphics/Rect;
    .local v5, "dockFrame":Landroid/graphics/Rect;
    move-object v11, v4

    move/from16 v19, v12

    .end local v12  # "displayWidth":I
    .local v19, "displayWidth":I
    move-object/from16 v12, v16

    move/from16 v16, v13

    .end local v13  # "displayHeight":I
    .local v16, "displayHeight":I
    move-object v13, v4

    move/from16 v20, v14

    .end local v14  # "rotation":I
    .local v20, "rotation":I
    move-object/from16 v14, v17

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1955
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1956
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1957
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 1959
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_1a1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNavigationBar frame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_1a1
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->checkHiddenLw()Z

    move-result v6

    return v6
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;)V
    .registers 20
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1715
    return-void

    .line 1718
    :cond_d
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1719
    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 1720
    .local v2, "displayId":I
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1721
    .local v3, "dockFrame":Landroid/graphics/Rect;
    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 1722
    .local v4, "displayHeight":I
    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 1724
    .local v5, "displayWidth":I
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_22
    if-ltz v6, :cond_136

    .line 1725
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1726
    .local v7, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-ne v8, v2, :cond_130

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1728
    goto/16 :goto_130

    .line 1731
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

    .line 1738
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1739
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1740
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 1742
    .local v0, "frame":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v9, " displayHeight="

    const-string v10, " displayWidth="

    const-string v11, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v12, "WindowManager"

    if-gtz v8, :cond_bd

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_bd

    .line 1744
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v4, :cond_85

    .line 1746
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_130

    .line 1747
    :cond_85
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v5, :cond_95

    .line 1749
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_130

    .line 1751
    :cond_95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on left or top of display. frame="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 1755
    :cond_bd
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v5, :cond_10a

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v4, :cond_10a

    .line 1757
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_d4

    .line 1759
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->right:I

    goto :goto_130

    .line 1760
    :cond_d4
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_e3

    .line 1762
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_130

    .line 1764
    :cond_e3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on right or bottom of display. frame="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 1770
    :cond_10a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on one of the sides of the display. frame="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    .end local v0  # "frame":Landroid/graphics/Rect;
    .end local v7  # "w":Lcom/android/server/wm/WindowState;
    :cond_130
    :goto_130
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_22

    .line 1776
    .end local v6  # "i":I
    :cond_136
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1777
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1778
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1779
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1780
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1781
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1782
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;IZ)Z
    .registers 15
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "sysui"  # I
    .param p3, "isKeyguardShowing"  # Z

    .line 1787
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1788
    return v1

    .line 1791
    :cond_6
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1792
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    .line 1793
    .local v0, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v10, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1798
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1801
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1804
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1807
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1811
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1812
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1813
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1814
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1815
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 1817
    const/high16 v2, 0x4000000

    and-int/2addr v2, p2

    const/4 v3, 0x1

    if-eqz v2, :cond_83

    move v2, v3

    goto :goto_84

    :cond_83
    move v2, v1

    .line 1818
    .local v2, "statusBarTransient":Z
    :goto_84
    const v4, 0x40000008  # 2.000002f

    and-int/2addr v4, p2

    if-eqz v4, :cond_8c

    move v4, v3

    goto :goto_8d

    :cond_8c
    move v4, v1

    .line 1822
    .local v4, "statusBarTranslucent":Z
    :goto_8d
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_102

    if-nez v2, :cond_102

    .line 1825
    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1826
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1827
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1828
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1829
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1831
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_e8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status bar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1832
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 1833
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 1831
    const-string v1, "dock=%s content=%s cur=%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_e8
    if-nez v4, :cond_102

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v1

    if-nez v1, :cond_102

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1836
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_102

    .line 1841
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 1844
    .end local v5  # "dockFrame":Landroid/graphics/Rect;
    :cond_102
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkHiddenLw()Z

    move-result v1

    return v1
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"  # Landroid/graphics/Rect;
    .param p3, "df"  # Landroid/graphics/Rect;
    .param p4, "of"  # Landroid/graphics/Rect;
    .param p5, "cf"  # Landroid/graphics/Rect;

    .line 2581
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2582
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2583
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2584
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2585
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 2588
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2589
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2590
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2591
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2592
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 2593
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2594
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2595
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method: mDockBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mContentBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_7e
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 2601
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2602
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2603
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2604
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "swipeTarget"  # Lcom/android/server/wm/WindowState;

    .line 3319
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3320
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3322
    monitor-exit v0

    return-void

    .line 3324
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 3325
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3326
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 3327
    .local v2, "nb":Z
    :goto_28
    if-nez v1, :cond_2c

    if-eqz v2, :cond_4a

    .line 3329
    :cond_2c
    if-nez v2, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_34

    .line 3331
    monitor-exit v0

    return-void

    .line 3333
    :cond_34
    if-eqz v1, :cond_3b

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 3334
    :cond_3b
    if-eqz v2, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v3}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3335
    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 3336
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3338
    .end local v1  # "sb":Z
    .end local v2  # "nb":Z
    :cond_4a
    monitor-exit v0

    .line 3339
    return-void

    .line 3338
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private selectDockedDividerAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .registers 13
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "transit"  # I

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    .line 1316
    .local v0, "insets":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 1317
    .local v1, "frame":Landroid/graphics/Rect;
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

    .line 1319
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

    .line 1321
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

    .line 1323
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_4b

    :cond_49
    move v2, v4

    goto :goto_4c

    :cond_4b
    move v2, v5

    .line 1324
    .local v2, "behindNavBar":Z
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

    .line 1325
    .local v6, "landscape":Z
    :goto_59
    if-eqz v6, :cond_6d

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    if-lez v7, :cond_6b

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 1326
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_6d

    :cond_6b
    move v7, v4

    goto :goto_6e

    :cond_6d
    move v7, v5

    .line 1327
    .local v7, "offscreenLandscape":Z
    :goto_6e
    if-nez v6, :cond_82

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v0

    if-lez v8, :cond_80

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v0

    .line 1328
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_82

    :cond_80
    move v8, v4

    goto :goto_83

    :cond_82
    move v8, v5

    .line 1329
    .local v8, "offscreenPortrait":Z
    :goto_83
    if-nez v7, :cond_8a

    if-eqz v8, :cond_88

    goto :goto_8a

    :cond_88
    move v9, v5

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v9, v4

    .line 1330
    .local v9, "offscreen":Z
    :goto_8b
    if-nez v2, :cond_a0

    if-eqz v9, :cond_90

    goto :goto_a0

    .line 1333
    :cond_90
    if-eq p2, v4, :cond_9d

    const/4 v4, 0x3

    if-ne p2, v4, :cond_96

    goto :goto_9d

    .line 1335
    :cond_96
    if-ne p2, v3, :cond_9c

    .line 1336
    const v3, 0x10a0001

    return v3

    .line 1338
    :cond_9c
    return v5

    .line 1334
    :cond_9d
    :goto_9d
    const/high16 v3, 0x10a0000

    return v3

    .line 1331
    :cond_a0
    :goto_a0
    return v5
.end method

.method private setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 24
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "fl"  # I
    .param p3, "adjust"  # I
    .param p4, "attached"  # Lcom/android/server/wm/WindowState;
    .param p5, "insetDecors"  # Z
    .param p6, "pf"  # Landroid/graphics/Rect;
    .param p7, "df"  # Landroid/graphics/Rect;
    .param p8, "of"  # Landroid/graphics/Rect;
    .param p9, "cf"  # Landroid/graphics/Rect;
    .param p10, "vf"  # Landroid/graphics/Rect;
    .param p11, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 1966
    move v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v6

    if-nez v6, :cond_30

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1974
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1975
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1976
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1977
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v11, p3

    move-object/from16 v8, p4

    goto/16 :goto_b5

    .line 1982
    :cond_30
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 1983
    .local v6, "parentDisplayFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    .line 1984
    .local v7, "parentOverscan":Landroid/graphics/Rect;
    move-object/from16 v8, p4

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1985
    .local v9, "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v11, 0x20000

    and-int/2addr v10, v11

    if-eqz v10, :cond_66

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-nez v10, :cond_66

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_66

    .line 1989
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v10

    .line 1990
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1991
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v6, v10

    .line 1992
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2000
    :cond_66
    const/16 v10, 0x10

    move v11, p3

    if-eq v11, v10, :cond_7a

    .line 2005
    const/high16 v10, 0x40000000  # 2.0f

    and-int/2addr v10, v0

    if-eqz v10, :cond_75

    .line 2006
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_76

    :cond_75
    move-object v10, v7

    .line 2005
    :goto_76
    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9e

    .line 2013
    :cond_7a
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2014
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 2015
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_9e

    .line 2016
    :cond_8d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v10

    if-nez v10, :cond_99

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 2017
    :cond_99
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2020
    :cond_9e
    :goto_9e
    if-eqz p5, :cond_a2

    move-object v10, v6

    goto :goto_a3

    :cond_a2
    move-object v10, v3

    :goto_a3
    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2021
    if-eqz p5, :cond_aa

    move-object v10, v7

    goto :goto_ab

    :cond_aa
    move-object v10, v3

    :goto_ab
    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2022
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2026
    .end local v6  # "parentDisplayFrame":Landroid/graphics/Rect;
    .end local v7  # "parentOverscan":Landroid/graphics/Rect;
    .end local v9  # "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b5
    and-int/lit16 v6, v0, 0x100

    if-nez v6, :cond_be

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_bf

    :cond_be
    move-object v6, v1

    :goto_bf
    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2027
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .registers 3
    .param p1, "visibility"  # I

    .line 3748
    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .registers 3
    .param p1, "visibility"  # I

    .line 3752
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 3753
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTransparentFlag(I)I
    .registers 3
    .param p1, "visibility"  # I

    .line 3757
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 3758
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

.method private static shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .registers 4
    .param p0, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p1, "fl"  # I

    .line 1561
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_f

    const v0, 0x2000400

    and-int/2addr v0, p1

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private supportsPointerLocation()Z
    .registers 2

    .line 3971
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
    .registers 6

    .line 2872
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2873
    return v1

    .line 2875
    :cond_6
    const/4 v2, 0x0

    .line 2876
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2875
    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 2877
    .local v0, "fl":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_55

    .line 2878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lp.flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2879
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_55
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_61

    .line 2884
    return v1

    .line 2887
    :cond_61
    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_6b

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6c

    :cond_6b
    const/4 v1, 0x1

    :cond_6c
    return v1
.end method

.method private updateCurrentUserResources()V
    .registers 14

    .line 3003
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 3004
    .local v0, "userId":I
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 3006
    .local v1, "uiContext":Landroid/content/Context;
    if-nez v0, :cond_15

    .line 3009
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3010
    return-void

    .line 3015
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 3016
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3015
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3017
    .local v2, "pi":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 3018
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3020
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    .line 3021
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3022
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    .line 3024
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    .line 3017
    invoke-virtual/range {v3 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3026
    return-void
.end method

.method private updateDreamingSleepToken(Z)V
    .registers 6
    .param p1, "acquire"  # Z

    .line 3304
    if-eqz p1, :cond_26

    .line 3305
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3306
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v1, :cond_25

    .line 3307
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DreamOnDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 3310
    .end local v0  # "displayId":I
    :cond_25
    goto :goto_30

    .line 3311
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_30

    .line 3312
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 3313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 3316
    :cond_30
    :goto_30
    return-void
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 6
    .param p0, "vis"  # I
    .param p1, "opaque"  # Lcom/android/server/wm/WindowState;
    .param p2, "opaqueOrDimming"  # Lcom/android/server/wm/WindowState;
    .param p3, "imeWindow"  # Lcom/android/server/wm/WindowState;
    .param p4, "navColorWin"  # Lcom/android/server/wm/WindowState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3528
    if-eqz p4, :cond_1c

    .line 3529
    if-eq p4, p3, :cond_12

    if-ne p4, p1, :cond_7

    goto :goto_12

    .line 3534
    :cond_7
    if-ne p4, p2, :cond_1c

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3536
    and-int/lit8 p0, p0, -0x11

    goto :goto_1c

    .line 3531
    :cond_12
    :goto_12
    and-int/lit8 p0, p0, -0x11

    .line 3532
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    .line 3539
    :cond_1c
    :goto_1c
    return p0
.end method

.method private updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 7
    .param p1, "vis"  # I
    .param p2, "opaque"  # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"  # Lcom/android/server/wm/WindowState;

    .line 3467
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

    .line 3468
    .local v0, "onKeyguard":Z
    :goto_f
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_15

    :cond_14
    move-object v1, p3

    .line 3469
    .local v1, "statusColorWin":Lcom/android/server/wm/WindowState;
    :goto_15
    if-eqz v1, :cond_26

    if-eq v1, p2, :cond_1b

    if-eqz v0, :cond_26

    .line 3472
    :cond_1b
    and-int/lit16 p1, p1, -0x2001

    .line 3473
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    or-int/2addr p1, v2

    goto :goto_30

    .line 3475
    :cond_26
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3477
    and-int/lit16 p1, p1, -0x2001

    .line 3479
    :cond_30
    :goto_30
    return p1
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;
    .registers 37
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "oldVis"  # I
    .param p3, "vis"  # I
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

    .line 3543
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3544
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v9

    .line 3545
    .local v9, "dockedStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3546
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v10

    .line 3547
    .local v10, "freeformStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v11

    .line 3552
    .local v11, "resizing":Z
    const/4 v13, 0x0

    if-nez v9, :cond_2a

    if-nez v10, :cond_2a

    if-nez v11, :cond_2a

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    move v0, v13

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    iput-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 3554
    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_37

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    move v0, v13

    :goto_38
    move v14, v0

    .line 3557
    .local v14, "forceOpaqueStatusBar":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_48

    .line 3558
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_4a

    .line 3559
    :cond_48
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_4a
    move-object v15, v0

    .line 3560
    .local v15, "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v1, p3

    invoke-virtual {v0, v15, v1, v8}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 3561
    .end local p3  # "vis":I
    .local v0, "vis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v15, v0, v8}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 3562
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v13, v13}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    .line 3564
    .local v1, "dockedVis":I
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v1, v13}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v6

    .line 3567
    .end local v1  # "dockedVis":I
    .local v6, "dockedVis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3568
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v16

    .line 3569
    .local v16, "fullscreenDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3570
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 3571
    .local v17, "dockedDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3572
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v18

    .line 3573
    .local v18, "fullscreenDrawsNavBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3574
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v19

    .line 3577
    .local v19, "dockedDrawsNavigationBarBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3578
    .local v5, "type":I
    const/16 v1, 0x7d0

    if-ne v5, v1, :cond_8d

    const/4 v1, 0x1

    goto :goto_8e

    :cond_8d
    move v1, v13

    :goto_8e
    move/from16 v20, v1

    .line 3579
    .local v20, "statusBarHasFocus":Z
    if-eqz v20, :cond_a9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 3580
    const/16 v1, 0x3806

    .line 3585
    .local v1, "flags":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 3586
    const/high16 v2, -0x40000000  # -2.0f

    or-int/2addr v1, v2

    .line 3588
    :cond_a3
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, v8, v1

    or-int v0, v2, v3

    .line 3591
    .end local v1  # "flags":I
    :cond_a9
    if-eqz v16, :cond_b6

    if-eqz v17, :cond_b6

    .line 3592
    or-int/lit8 v0, v0, 0x8

    .line 3593
    const v1, -0x40000001  # -1.9999999f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_c1

    .line 3594
    :cond_b6
    if-eqz v14, :cond_bf

    .line 3595
    const v1, -0x40000009  # -1.9999989f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_c1

    .line 3594
    :cond_bf
    move/from16 v21, v0

    .line 3598
    .end local v0  # "vis":I
    .local v21, "vis":I
    :goto_c1
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v9

    move v3, v10

    move v4, v11

    move/from16 v22, v5

    .end local v5  # "type":I
    .local v22, "type":I
    move/from16 v5, v18

    move/from16 v23, v6

    .end local v6  # "dockedVis":I
    .local v23, "dockedVis":I
    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZZZZ)I

    move-result v0

    .line 3602
    .end local v21  # "vis":I
    .restart local v0  # "vis":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_da

    const/4 v1, 0x1

    goto :goto_db

    :cond_da
    move v1, v13

    .line 3604
    .local v1, "immersiveSticky":Z
    :goto_db
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_ea

    const/4 v3, 0x0

    .line 3606
    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_ea

    const/4 v2, 0x1

    goto :goto_eb

    :cond_ea
    move v2, v13

    .line 3608
    .local v2, "hideStatusBarWM":Z
    :goto_eb
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_f1

    const/4 v3, 0x1

    goto :goto_f2

    :cond_f1
    move v3, v13

    .line 3610
    .local v3, "hideStatusBarSysui":Z
    :goto_f2
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_f8

    const/4 v4, 0x1

    goto :goto_f9

    :cond_f8
    move v4, v13

    .line 3613
    .local v4, "hideNavBarSysui":Z
    :goto_f9
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_10b

    if-nez v20, :cond_109

    iget-boolean v5, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v5, :cond_10b

    if-nez v2, :cond_109

    if-eqz v3, :cond_10b

    if-eqz v1, :cond_10b

    :cond_109
    const/4 v5, 0x1

    goto :goto_10c

    :cond_10b
    move v5, v13

    .line 3617
    .local v5, "transientStatusBarAllowed":Z
    :goto_10c
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11a

    iget-boolean v6, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v6, :cond_11a

    if-eqz v4, :cond_11a

    if-eqz v1, :cond_11a

    const/4 v6, 0x1

    goto :goto_11b

    :cond_11a
    move v6, v13

    .line 3620
    .local v6, "transientNavBarAllowed":Z
    :goto_11b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 3621
    .local v24, "now":J
    iget-wide v12, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    move/from16 p3, v1

    move/from16 v26, v2

    .end local v1  # "immersiveSticky":Z
    .end local v2  # "hideStatusBarWM":Z
    .local v26, "hideStatusBarWM":Z
    .local p3, "immersiveSticky":Z
    const-wide/16 v1, 0x0

    cmp-long v27, v12, v1

    if-eqz v27, :cond_135

    sub-long v12, v24, v12

    const-wide/16 v27, 0x7530

    cmp-long v12, v12, v27

    if-gtz v12, :cond_135

    const/4 v12, 0x1

    goto :goto_136

    :cond_135
    const/4 v12, 0x0

    .line 3623
    .local v12, "pendingPanic":Z
    :goto_136
    iget-object v13, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3624
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    .line 3625
    .local v13, "defaultDisplayPolicy":Lcom/android/server/wm/DisplayPolicy;
    if-eqz v12, :cond_162

    if-eqz v4, :cond_162

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v27

    if-nez v27, :cond_162

    .line 3627
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v27

    if-eqz v27, :cond_162

    .line 3630
    iput-wide v1, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 3631
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 3632
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_162

    .line 3633
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3637
    :cond_162
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_170

    if-nez v5, :cond_170

    if-eqz v3, :cond_170

    const/4 v1, 0x1

    goto :goto_171

    :cond_170
    const/4 v1, 0x0

    .line 3639
    .local v1, "denyTransientStatus":Z
    :goto_171
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v2

    if-eqz v2, :cond_17d

    if-nez v6, :cond_17d

    const/4 v2, 0x1

    goto :goto_17e

    :cond_17d
    const/4 v2, 0x0

    .line 3641
    .local v2, "denyTransientNav":Z
    :goto_17e
    if-nez v1, :cond_189

    if-nez v2, :cond_189

    move/from16 v27, v1

    .end local v1  # "denyTransientStatus":Z
    .local v27, "denyTransientStatus":Z
    iget-boolean v1, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v1, :cond_190

    goto :goto_18b

    .end local v27  # "denyTransientStatus":Z
    .restart local v1  # "denyTransientStatus":Z
    :cond_189
    move/from16 v27, v1

    .line 3643
    .end local v1  # "denyTransientStatus":Z
    .restart local v27  # "denyTransientStatus":Z
    :goto_18b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    .line 3644
    and-int/lit8 v0, v0, -0x8

    .line 3647
    :cond_190
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_196

    const/4 v1, 0x1

    goto :goto_197

    :cond_196
    const/4 v1, 0x0

    .line 3648
    .local v1, "immersive":Z
    :goto_197
    move/from16 v28, v2

    .end local v2  # "denyTransientNav":Z
    .local v28, "denyTransientNav":Z
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_19f

    const/4 v2, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v2, 0x0

    .line 3649
    .end local p3  # "immersiveSticky":Z
    .local v2, "immersiveSticky":Z
    :goto_1a0
    if-nez v1, :cond_1a8

    if-eqz v2, :cond_1a5

    goto :goto_1a8

    :cond_1a5
    const/16 v29, 0x0

    goto :goto_1aa

    :cond_1a8
    :goto_1a8
    const/16 v29, 0x1

    .line 3651
    .local v29, "navAllowedHidden":Z
    :goto_1aa
    if-eqz v4, :cond_1cd

    if-nez v29, :cond_1cd

    move/from16 p3, v1

    .end local v1  # "immersive":Z
    .local p3, "immersive":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3652
    move/from16 v30, v2

    move-object/from16 v2, p1

    .end local v2  # "immersiveSticky":Z
    .local v30, "immersiveSticky":Z
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move/from16 v31, v3

    .end local v3  # "hideStatusBarSysui":Z
    .local v31, "hideStatusBarSysui":Z
    const/16 v3, 0x7e6

    .line 3653
    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-le v1, v2, :cond_1d3

    .line 3656
    and-int/lit8 v0, v0, -0x3

    goto :goto_1d3

    .line 3651
    .end local v30  # "immersiveSticky":Z
    .end local v31  # "hideStatusBarSysui":Z
    .end local p3  # "immersive":Z
    .restart local v1  # "immersive":Z
    .restart local v2  # "immersiveSticky":Z
    .restart local v3  # "hideStatusBarSysui":Z
    :cond_1cd
    move/from16 p3, v1

    move/from16 v30, v2

    move/from16 v31, v3

    .line 3659
    .end local v1  # "immersive":Z
    .end local v2  # "immersiveSticky":Z
    .end local v3  # "hideStatusBarSysui":Z
    .restart local v30  # "immersiveSticky":Z
    .restart local v31  # "hideStatusBarSysui":Z
    .restart local p3  # "immersive":Z
    :cond_1d3
    :goto_1d3
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, v5, v8, v0}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 3675
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v6, v8, v0}, Lcom/android/server/wm/BarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 3677
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move/from16 v32, v4

    .end local v4  # "hideNavBarSysui":Z
    .local v32, "hideNavBarSysui":Z
    iget v4, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3680
    .local v1, "navColorWin":Lcom/android/server/wm/WindowState;
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 3684
    if-eqz v1, :cond_206

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_206

    const/16 v21, 0x1

    goto :goto_208

    :cond_206
    const/16 v21, 0x0

    :goto_208
    move/from16 v2, v21

    .line 3687
    .local v2, "isManagedByIme":Z
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 25

    .line 3367
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isMzWindowModeOrDefer()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_11

    .line 3369
    :cond_f
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_11
    nop

    .line 3370
    .local v0, "winCandidate":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 3371
    return v1

    .line 3376
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_48

    .line 3381
    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_31

    .line 3382
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    if-eqz v2, :cond_31

    move v2, v4

    goto :goto_32

    :cond_31
    move v2, v1

    .line 3383
    .local v2, "lastFocusCanReceiveKeys":Z
    :goto_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_42

    .line 3384
    :cond_3b
    if-eqz v2, :cond_40

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_42

    .line 3385
    :cond_40
    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_42
    move-object v0, v3

    .line 3386
    if-nez v0, :cond_46

    .line 3387
    return v1

    .line 3386
    :cond_46
    move-object v11, v0

    goto :goto_49

    .line 3376
    .end local v2  # "lastFocusCanReceiveKeys":Z
    :cond_48
    move-object v11, v0

    .line 3390
    .end local v0  # "winCandidate":Lcom/android/server/wm/WindowState;
    .local v11, "winCandidate":Lcom/android/server/wm/WindowState;
    :goto_49
    move-object v12, v11

    .line 3391
    .local v12, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3398
    return v1

    .line 3401
    :cond_5b
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InsetsStateController;->onBarControllingWindowChanged(Lcom/android/server/wm/WindowState;)V

    .line 3404
    const/4 v0, 0x0

    invoke-static {v12, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iget v3, v10, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v3, v3

    and-int/2addr v2, v3

    iget v3, v10, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v3, v3

    and-int/2addr v2, v3

    .line 3407
    .local v2, "tmpVisibility":I
    iget-boolean v3, v10, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v3, :cond_86

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iget v5, v10, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v3, v5, :cond_86

    .line 3408
    const/4 v3, 0x7

    .line 3409
    invoke-static {v12, v3}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    .line 3412
    :cond_86
    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    if-eqz v3, :cond_ae

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_ae

    .line 3413
    const-class v3, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isWindowMode(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 3414
    or-int/lit16 v0, v2, 0x1404

    .line 3417
    .end local v2  # "tmpVisibility":I
    .local v0, "tmpVisibility":I
    const v2, -0x40000101  # -1.9999694f

    and-int/2addr v2, v0

    move v13, v2

    .end local v0  # "tmpVisibility":I
    .restart local v2  # "tmpVisibility":I
    goto :goto_af

    .line 3422
    :cond_ae
    move v13, v2

    .end local v2  # "tmpVisibility":I
    .local v13, "tmpVisibility":I
    :goto_af
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v10, v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v14

    .line 3424
    .local v14, "fullscreenVisibility":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v10, v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v15

    .line 3426
    .local v15, "dockedVisibility":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 3428
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x3

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 3430
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3431
    invoke-direct {v10, v12, v0, v13}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v9

    .line 3432
    .local v9, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3433
    .local v8, "visibility":I
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int v16, v8, v0

    .line 3434
    .local v16, "diff":I
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenStackSysUiFlags:I

    xor-int v17, v14, v0

    .line 3435
    .local v17, "fullscreenDiff":I
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackSysUiFlags:I

    xor-int v18, v15, v0

    .line 3436
    .local v18, "dockedDiff":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v7

    .line 3437
    .local v7, "needsMenu":Z
    if-nez v16, :cond_115

    if-nez v17, :cond_115

    if-nez v18, :cond_115

    iget-boolean v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    if-ne v0, v7, :cond_115

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 3438
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v0, v2, :cond_115

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 3439
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 3440
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 3441
    return v1

    .line 3443
    :cond_115
    iput v8, v10, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3444
    iput v14, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenStackSysUiFlags:I

    .line 3445
    iput v15, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackSysUiFlags:I

    .line 3446
    iput-boolean v7, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    .line 3447
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 3448
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3449
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3450
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3451
    .local v5, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3452
    .local v6, "dockedStackBounds":Landroid/graphics/Rect;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 3453
    .local v19, "isNavbarColorManagedByIme":Z
    iget-object v4, v10, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v8

    move-object v10, v3

    move v3, v14

    move-object/from16 v20, v11

    move-object v11, v4

    .end local v11  # "winCandidate":Lcom/android/server/wm/WindowState;
    .local v20, "winCandidate":Lcom/android/server/wm/WindowState;
    move v4, v15

    move/from16 v21, v7

    .end local v7  # "needsMenu":Z
    .local v21, "needsMenu":Z
    move/from16 v7, v19

    move/from16 v22, v8

    .end local v8  # "visibility":I
    .local v22, "visibility":I
    move-object v8, v12

    move-object/from16 v23, v9

    .end local v9  # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v23, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;-><init>(Lcom/android/server/wm/DisplayPolicy;IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V

    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3463
    return v16
.end method

.method private updateWindowSleepToken()V
    .registers 3

    .line 2857
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    if-nez v0, :cond_17

    .line 2858
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2859
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    .line 2860
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_2d

    .line 2861
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2862
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2864
    :cond_2d
    :goto_2d
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    .line 2865
    return-void
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .param p1, "visibility"  # I

    .line 1424
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 1425
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 1429
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 1432
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V
    .registers 11
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I

    .line 1013
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1014
    .local v0, "isScreenDecor":Z
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1015
    if-nez v0, :cond_28

    .line 1017
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1019
    :cond_1b
    if-eqz v0, :cond_28

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1020
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_28
    :goto_28
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_98

    const/16 v4, 0x7dd

    if-eq v2, v4, :cond_95

    const/16 v4, 0x7df

    if-eq v2, v4, :cond_86

    const/16 v4, 0x7e7

    if-eq v2, v4, :cond_95

    const/16 v1, 0x7f4

    if-eq v2, v1, :cond_7f

    const/16 v1, 0x7d5

    if-eq v2, v1, :cond_47

    const/16 v1, 0x7d6

    if-eq v2, v1, :cond_86

    goto :goto_b0

    .line 1058
    :cond_47
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const-wide/16 v4, 0xdac

    if-ltz v1, :cond_57

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_59

    .line 1060
    :cond_57
    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1065
    :cond_59
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1068
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1070
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1071
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1074
    :cond_78
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b0

    .line 1050
    :cond_7f
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1051
    goto :goto_b0

    .line 1027
    :cond_86
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1029
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1030
    goto :goto_b0

    .line 1035
    :cond_95
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1036
    goto :goto_b0

    .line 1043
    :cond_98
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 1044
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1045
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1078
    :cond_b0
    :goto_b0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_ba

    .line 1080
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1082
    :cond_ba
    return-void
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .line 3300
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 14
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"  # Lcom/android/server/wm/WindowState;
    .param p4, "imeTarget"  # Lcom/android/server/wm/WindowState;

    .line 2634
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 2635
    .local v0, "affectsSystemUi":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Win "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": affectsSystemUi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2637
    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 2638
    .local v1, "fl":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_46

    if-eqz v0, :cond_46

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_46

    .line 2640
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 2641
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 2643
    :cond_46
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_5c

    .line 2644
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_54

    .line 2645
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    .line 2647
    :cond_54
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_5c

    .line 2648
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    .line 2652
    :cond_5c
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x0

    if-lt v3, v4, :cond_67

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v3, v5, :cond_67

    move v3, v4

    goto :goto_68

    :cond_67
    move v3, v6

    .line 2654
    .local v3, "appWindow":Z
    :goto_68
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v5

    .line 2655
    .local v5, "windowingMode":I
    nop

    .line 2659
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowModeOrDefer()Z

    move-result v7

    if-nez v7, :cond_84

    .line 2660
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x805

    if-eq v7, v8, :cond_84

    if-eq v5, v4, :cond_82

    const/4 v7, 0x4

    if-ne v5, v7, :cond_84

    :cond_82
    move v6, v4

    goto :goto_85

    :cond_84
    nop

    .line 2664
    .local v6, "inFullScreenOrSplitScreenSecondaryWindowingMode":Z
    :goto_85
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v7, :cond_dc

    if-eqz v0, :cond_dc

    .line 2665
    and-int/lit16 v7, v1, 0x800

    if-eqz v7, :cond_91

    .line 2666
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 2668
    :cond_91
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v7, v8, :cond_aa

    .line 2671
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v7, :cond_a7

    .line 2672
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_aa

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 2673
    :cond_a7
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2674
    const/4 v3, 0x1

    .line 2681
    :cond_aa
    if-eqz v3, :cond_dc

    if-nez p3, :cond_dc

    .line 2682
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v7

    if-eqz v7, :cond_dc

    if-eqz v6, :cond_dc

    .line 2683
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_ce

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fullscreen window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_ce
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2685
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d6

    .line 2686
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2688
    :cond_d6
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_dc

    .line 2689
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2696
    :cond_dc
    if-eqz v0, :cond_fc

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7ef

    if-ne v2, v4, :cond_fc

    .line 2697
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f0

    .line 2698
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2699
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f0

    .line 2700
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2703
    :cond_f0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_fc

    .line 2704
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2705
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_fc

    .line 2706
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2712
    :cond_fc
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_10c

    if-eqz v0, :cond_10c

    .line 2713
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_10c

    if-eqz v6, :cond_10c

    .line 2714
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2720
    :cond_10c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x3

    if-nez v2, :cond_127

    if-eqz v0, :cond_127

    if-eqz v3, :cond_127

    if-nez p3, :cond_127

    .line 2721
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_127

    if-ne v5, v4, :cond_127

    .line 2722
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2723
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_127

    .line 2724
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2730
    :cond_127
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_137

    if-eqz v0, :cond_137

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_137

    if-ne v5, v4, :cond_137

    .line 2732
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2734
    :cond_137
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "windowState"  # Lcom/android/server/wm/WindowState;

    .line 1440
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 19
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"  # I

    .line 1640
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1641
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 1642
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 1646
    iget v9, v7, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 1647
    .local v9, "sysui":I
    and-int/lit8 v0, v9, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    move v0, v2

    .line 1648
    .local v0, "navVisible":Z
    :goto_25
    const v3, -0x7fff8000

    and-int/2addr v3, v9

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    move v3, v2

    .line 1650
    .local v3, "navTranslucent":Z
    :goto_2e
    and-int/lit16 v4, v9, 0x800

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    move v10, v4

    .line 1651
    .local v10, "immersive":Z
    and-int/lit16 v4, v9, 0x1000

    if-eqz v4, :cond_3c

    const/4 v4, 0x1

    goto :goto_3d

    :cond_3c
    move v4, v2

    :goto_3d
    move v11, v4

    .line 1652
    .local v11, "immersiveSticky":Z
    if-nez v10, :cond_45

    if-eqz v11, :cond_43

    goto :goto_45

    :cond_43
    move v4, v2

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v4, 0x1

    :goto_46
    move v12, v4

    .line 1653
    .local v12, "navAllowedHidden":Z
    if-nez v11, :cond_4b

    const/4 v4, 0x1

    goto :goto_4c

    :cond_4b
    move v4, v2

    :goto_4c
    and-int v13, v3, v4

    .line 1654
    .end local v3  # "navTranslucent":Z
    .local v13, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1655
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v3

    if-nez v3, :cond_60

    const/4 v3, 0x1

    goto :goto_61

    :cond_60
    move v3, v2

    :goto_61
    move v14, v3

    .line 1656
    .local v14, "isKeyguardShowing":Z
    if-nez v14, :cond_75

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_75

    .line 1657
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_75

    const/4 v6, 0x1

    goto :goto_76

    :cond_75
    move v6, v2

    .line 1663
    .local v6, "statusBarForcesShowingNavigation":Z
    :goto_76
    if-nez v0, :cond_a8

    if-eqz v12, :cond_7b

    goto :goto_a8

    .line 1669
    :cond_7b
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v3, :cond_b9

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_b9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 1670
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;

    invoke-direct {v5, v7}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iget v15, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    const-string v1, "nav_input_consumer"

    invoke-virtual {v3, v4, v1, v5, v15}, Lcom/android/server/wm/WindowManagerService;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1676
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_b9

    .line 1664
    :cond_a8
    :goto_a8
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v1, :cond_b9

    .line 1665
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    .line 1666
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1665
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1667
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1681
    :cond_b9
    :goto_b9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int v15, v0, v1

    .line 1683
    .end local v0  # "navVisible":Z
    .local v15, "navVisible":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v15

    move v4, v13

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZ)Z

    move-result v0

    .line 1685
    .local v0, "updateSysUiVisibility":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDock rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_ea
    invoke-direct {v7, v8, v9, v14}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1687
    if-eqz v0, :cond_f4

    .line 1688
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 1690
    :cond_f4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;)V

    .line 1692
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_111

    .line 1696
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1706
    :cond_111
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1707
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1709
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v3, p2

    invoke-virtual {v1, v2, v8, v3}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onDisplayBeginLayoutLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;I)V

    .line 1711
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .line 2610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2611
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2612
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2613
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 2615
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    .line 2616
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    .line 2617
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 2618
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 2620
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2621
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2622
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    .line 2623
    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .registers 5
    .param p1, "callingPid"  # I

    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "inOutInsets"  # Landroid/graphics/Rect;
    .param p2, "rotation"  # I

    .line 3185
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3186
    return-void
.end method

.method public disableRotationAnimation()Z
    .registers 3

    .line 4025
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 3898
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3900
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3901
    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3902
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3903
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3904
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3905
    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3906
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3907
    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3908
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3909
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3910
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3911
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3912
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v0, :cond_a0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v0, :cond_a0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_cd

    .line 3914
    :cond_a0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3915
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3916
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3917
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3918
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3921
    :cond_cd
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_de

    .line 3922
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3924
    :cond_de
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3925
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3926
    const-string v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3927
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11c

    .line 3928
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3929
    const-string v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3931
    :cond_11c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_154

    .line 3932
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3933
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3935
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3938
    :cond_154
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_165

    .line 3939
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3941
    :cond_165
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_176

    .line 3942
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3944
    :cond_176
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_187

    .line 3945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3946
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3948
    :cond_187
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_198

    .line 3949
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3950
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3952
    :cond_198
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_1b6

    .line 3953
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3954
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3955
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3957
    :cond_1b6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3958
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3959
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3960
    const-string v0, " mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3961
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3963
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3964
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3966
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3968
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .registers 4

    .line 952
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_d

    goto :goto_14

    .line 957
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 958
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 959
    monitor-exit v0

    .line 960
    return v1

    .line 954
    :cond_14
    :goto_14
    monitor-exit v0

    return v2

    .line 959
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 11

    .line 2749
    const/4 v0, 0x0

    .line 2750
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 2756
    .local v1, "topIsFullscreen":Z
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_22

    .line 2757
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 2758
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    if-eqz v2, :cond_31

    .line 2759
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    .line 2760
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_31

    .line 2763
    :cond_22
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    if-nez v2, :cond_31

    .line 2764
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    .line 2765
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2769
    :cond_31
    :goto_31
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_148

    .line 2770
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v5, "WindowManager"

    if-eqz v2, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " forcefkg="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " top="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_65
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    if-eqz v2, :cond_73

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v2, :cond_73

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v2, :cond_73

    move v2, v4

    goto :goto_74

    :cond_73
    move v2, v3

    .line 2776
    .local v2, "shouldBeTransparent":Z
    :goto_74
    if-nez v2, :cond_7c

    .line 2777
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/StatusBarController;->setShowTransparent(Z)V

    goto :goto_89

    .line 2778
    :cond_7c
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_89

    .line 2779
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/StatusBarController;->setShowTransparent(Z)V

    .line 2782
    :cond_89
    :goto_89
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2783
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_98

    move v6, v4

    goto :goto_99

    :cond_98
    move v6, v3

    .line 2785
    .local v6, "statusBarForcesShowingNavigation":Z
    :goto_99
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v7

    .line 2786
    .local v7, "topAppHidesStatusBar":Z
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v8, :cond_10c

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v8, :cond_10c

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    if-nez v8, :cond_10c

    if-eqz v6, :cond_ac

    goto :goto_10c

    .line 2801
    :cond_ac
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_143

    .line 2802
    move v1, v7

    .line 2807
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 2808
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 2809
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_143

    .line 2811
    :cond_c5
    if-eqz v1, :cond_f7

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x5

    .line 2812
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_f7

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x3

    .line 2813
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_f7

    .line 2814
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_e2

    const-string v4, "** HIDING status bar"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_e2
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 2816
    or-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 2818
    :cond_ed
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_143

    const-string v3, "Status bar already hiding"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 2821
    :cond_f7
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_100

    const-string v3, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_100
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 2823
    or-int/lit8 v0, v0, 0x1

    .line 2825
    :cond_10a
    const/4 v7, 0x0

    goto :goto_143

    .line 2788
    :cond_10c
    :goto_10c
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_115

    const-string v8, "Showing status bar: forced"

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_115
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 2790
    or-int/lit8 v0, v0, 0x1

    .line 2793
    :cond_11f
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v5, :cond_12c

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_12c

    goto :goto_12d

    :cond_12c
    move v4, v3

    :goto_12d
    move v1, v4

    .line 2796
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v4, :cond_134

    if-eqz v6, :cond_143

    :cond_134
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 2797
    invoke-virtual {v4}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v4

    if-eqz v4, :cond_143

    .line 2798
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v4, v3, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    .line 2828
    :cond_143
    :goto_143
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 2831
    .end local v2  # "shouldBeTransparent":Z
    .end local v6  # "statusBarForcesShowingNavigation":Z
    .end local v7  # "topAppHidesStatusBar":Z
    :cond_148
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_152

    .line 2832
    if-nez v1, :cond_150

    .line 2834
    or-int/lit8 v0, v0, 0x1

    .line 2836
    :cond_150
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 2839
    :cond_152
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_15e

    .line 2842
    or-int/lit8 v0, v0, 0x1

    .line 2845
    :cond_15e
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_16b

    .line 2846
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 2847
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    .line 2850
    :cond_16b
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateWindowSleepToken()V

    .line 2852
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 2853
    return v0
.end method

.method public finishScreenTurningOn()Z
    .registers 5

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-eqz v1, :cond_47

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishScreenTurningOn: mAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnFully="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyguardDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWindowManagerDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_47
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_6f

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_5c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_5c

    goto :goto_6f

    .line 990
    :cond_5c
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-eqz v1, :cond_67

    const-string v1, "WindowManager"

    const-string v2, "Finished screen turning on..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 992
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 993
    monitor-exit v0

    .line 994
    return v1

    .line 987
    :cond_6f
    :goto_6f
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 993
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .registers 3

    .line 965
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_11

    .line 970
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 971
    monitor-exit v0

    .line 972
    return v1

    .line 967
    :cond_11
    :goto_11
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 971
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "lastFocus"  # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"  # Lcom/android/server/wm/WindowState;

    .line 3280
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3281
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3282
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_11

    .line 3283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3285
    :cond_11
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 3288
    const/4 v0, 0x1

    return v0

    .line 3290
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"  # I
    .param p2, "fullHeight"  # I
    .param p3, "rotation"  # I
    .param p4, "uiMode"  # I
    .param p5, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 3154
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3155
    .local v0, "statusBarHeight":I
    if-eqz p5, :cond_11

    .line 3158
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3160
    :cond_11
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 7
    .param p1, "fullWidth"  # I
    .param p2, "fullHeight"  # I
    .param p3, "rotation"  # I
    .param p4, "uiMode"  # I
    .param p5, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 3139
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3038
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentUserResources()Landroid/content/res/Resources;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3030
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 3031
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3033
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDockMode()I
    .registers 2

    .line 872
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .registers 2

    .line 3250
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .registers 29
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "taskBounds"  # Landroid/graphics/Rect;
    .param p3, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p4, "floatingStack"  # Z
    .param p5, "outFrame"  # Landroid/graphics/Rect;
    .param p6, "outContentInsets"  # Landroid/graphics/Rect;
    .param p7, "outStableInsets"  # Landroid/graphics/Rect;
    .param p8, "outOutsets"  # Landroid/graphics/Rect;
    .param p9, "outDisplayCutout"  # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1466
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const/4 v7, 0x0

    invoke-static {v7, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    .line 1467
    .local v8, "fl":I
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1468
    .local v9, "pfl":I
    invoke-static {v7, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 1469
    .local v7, "requestedSysUiVis":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    or-int/2addr v10, v7

    .line 1470
    .local v10, "sysUiVis":I
    iget v11, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1472
    .local v11, "displayRotation":I
    const/4 v13, 0x1

    if-eqz v5, :cond_2b

    invoke-static {v1, v8}, Lcom/android/server/wm/DisplayPolicy;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v14

    if-eqz v14, :cond_2b

    move v14, v13

    goto :goto_2c

    :cond_2b
    const/4 v14, 0x0

    .line 1473
    .local v14, "useOutsets":Z
    :goto_2c
    if-eqz v14, :cond_53

    .line 1474
    iget v15, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 1475
    .local v15, "outset":I
    if-lez v15, :cond_53

    .line 1476
    if-nez v11, :cond_3a

    .line 1477
    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_53

    .line 1478
    :cond_3a
    if-ne v11, v13, :cond_42

    .line 1479
    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->right:I

    goto :goto_53

    .line 1480
    :cond_42
    const/4 v12, 0x2

    if-ne v11, v12, :cond_4b

    .line 1481
    iget v12, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->top:I

    goto :goto_53

    .line 1482
    :cond_4b
    const/4 v12, 0x3

    if-ne v11, v12, :cond_53

    .line 1483
    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->left:I

    .line 1488
    .end local v15  # "outset":I
    :cond_53
    :goto_53
    and-int/lit16 v12, v8, 0x100

    if-eqz v12, :cond_59

    move v12, v13

    goto :goto_5a

    :cond_59
    const/4 v12, 0x0

    .line 1489
    .local v12, "layoutInScreen":Z
    :goto_5a
    if-eqz v12, :cond_63

    const/high16 v15, 0x10000

    and-int/2addr v15, v8

    if-eqz v15, :cond_63

    move v15, v13

    goto :goto_64

    :cond_63
    const/4 v15, 0x0

    .line 1491
    .local v15, "layoutInScreenAndInsetDecor":Z
    :goto_64
    const/high16 v17, 0x400000

    and-int v17, v9, v17

    if-eqz v17, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v13, 0x0

    .line 1493
    .local v13, "screenDecor":Z
    :goto_6c
    if-eqz v15, :cond_ce

    if-nez v13, :cond_ce

    .line 1494
    and-int/lit16 v1, v10, 0x200

    if-eqz v1, :cond_7a

    .line 1495
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7f

    .line 1497
    :cond_7a
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1501
    :goto_7f
    if-eqz p4, :cond_83

    .line 1502
    const/4 v1, 0x0

    .local v1, "sf":Landroid/graphics/Rect;
    goto :goto_85

    .line 1504
    .end local v1  # "sf":Landroid/graphics/Rect;
    :cond_83
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1508
    .restart local v1  # "sf":Landroid/graphics/Rect;
    :goto_85
    if-eqz p4, :cond_8c

    .line 1509
    const/16 v16, 0x0

    move-object/from16 v5, v16

    .local v16, "cf":Landroid/graphics/Rect;
    goto :goto_a9

    .line 1510
    .end local v16  # "cf":Landroid/graphics/Rect;
    :cond_8c
    and-int/lit16 v5, v10, 0x100

    if-eqz v5, :cond_9a

    .line 1511
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_97

    .line 1512
    iget-object v5, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .local v5, "cf":Landroid/graphics/Rect;
    goto :goto_a9

    .line 1514
    .end local v5  # "cf":Landroid/graphics/Rect;
    :cond_97
    iget-object v5, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .restart local v5  # "cf":Landroid/graphics/Rect;
    goto :goto_a9

    .line 1516
    .end local v5  # "cf":Landroid/graphics/Rect;
    :cond_9a
    and-int/lit16 v5, v8, 0x400

    if-nez v5, :cond_a7

    const/high16 v5, 0x2000000

    and-int/2addr v5, v8

    if-eqz v5, :cond_a4

    goto :goto_a7

    .line 1519
    :cond_a4
    iget-object v5, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .restart local v5  # "cf":Landroid/graphics/Rect;
    goto :goto_a9

    .line 1517
    .end local v5  # "cf":Landroid/graphics/Rect;
    :cond_a7
    :goto_a7
    iget-object v5, v3, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    .line 1522
    .restart local v5  # "cf":Landroid/graphics/Rect;
    :goto_a9
    if-eqz v2, :cond_ae

    .line 1523
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1525
    :cond_ae
    move/from16 v16, v7

    move-object/from16 v7, p6

    .end local v7  # "requestedSysUiVis":I
    .local v16, "requestedSysUiVis":I
    invoke-static {v4, v5, v7}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1526
    move-object/from16 v17, v5

    move-object/from16 v5, p7

    .end local v5  # "cf":Landroid/graphics/Rect;
    .local v17, "cf":Landroid/graphics/Rect;
    invoke-static {v4, v1, v5}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1527
    move-object/from16 v18, v1

    .end local v1  # "sf":Landroid/graphics/Rect;
    .local v18, "sf":Landroid/graphics/Rect;
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1528
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 1527
    invoke-virtual {v6, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1529
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1

    .line 1493
    .end local v16  # "requestedSysUiVis":I
    .end local v17  # "cf":Landroid/graphics/Rect;
    .end local v18  # "sf":Landroid/graphics/Rect;
    .restart local v7  # "requestedSysUiVis":I
    :cond_ce
    move-object/from16 v5, p7

    move/from16 v16, v7

    move-object/from16 v7, p6

    .line 1531
    .end local v7  # "requestedSysUiVis":I
    .restart local v16  # "requestedSysUiVis":I
    if-eqz v12, :cond_dc

    .line 1532
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_e1

    .line 1534
    :cond_dc
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1536
    :goto_e1
    if-eqz v2, :cond_e6

    .line 1537
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1540
    :cond_e6
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1541
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    .line 1542
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v6, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1543
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1
.end method

.method public getLidState()I
    .registers 2

    .line 899
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .registers 2

    .line 3273
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"  # I
    .param p2, "fullHeight"  # I
    .param p3, "rotation"  # I
    .param p4, "uiMode"  # I
    .param p5, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 3118
    move v0, p2

    .line 3119
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3120
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3121
    .local v1, "navBarPosition":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 3122
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3125
    .end local v1  # "navBarPosition":I
    :cond_13
    if-eqz p5, :cond_1f

    .line 3126
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3128
    :cond_1f
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"  # I
    .param p2, "fullHeight"  # I
    .param p3, "rotation"  # I
    .param p4, "uiMode"  # I
    .param p5, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 3070
    move v0, p1

    .line 3071
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3072
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3073
    .local v1, "navBarPosition":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 3074
    :cond_11
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3077
    .end local v1  # "navBarPosition":I
    :cond_16
    if-eqz p5, :cond_22

    .line 3078
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3080
    :cond_22
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayRotation"  # I
    .param p2, "displayWidth"  # I
    .param p3, "displayHeight"  # I
    .param p4, "displayCutout"  # Landroid/view/DisplayCutout;
    .param p5, "outInsets"  # Landroid/graphics/Rect;

    .line 3218
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3221
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3222
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3223
    .local v0, "uiMode":I
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3224
    .local v1, "position":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 3225
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_32

    .line 3226
    :cond_1f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 3227
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_32

    .line 3228
    :cond_29
    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 3229
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 3233
    .end local v0  # "uiMode":I
    .end local v1  # "position":I
    :cond_32
    :goto_32
    if-eqz p4, :cond_58

    .line 3234
    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 3235
    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 3236
    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 3237
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 3239
    :cond_58
    return-void
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .registers 2

    .line 3894
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .registers 2

    .line 927
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayRotation"  # I
    .param p2, "displayWidth"  # I
    .param p3, "displayHeight"  # I
    .param p4, "displayCutout"  # Landroid/view/DisplayCutout;
    .param p5, "outInsets"  # Landroid/graphics/Rect;

    .line 3199
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3202
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3203
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3204
    return-void
.end method

.method getWindowCornerRadius()F
    .registers 3

    .line 3170
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 3171
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3170
    :goto_19
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 883
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method public hasStatusBar()Z
    .registers 2

    .line 887
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .registers 2

    .line 907
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .registers 2

    .line 852
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .registers 2

    .line 856
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .registers 2

    .line 848
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .registers 2

    .line 919
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .registers 2

    .line 864
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .line 911
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .line 915
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .registers 2

    .line 3175
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .registers 2

    .line 923
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$beginLayoutLw$8$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4
    .param p1, "x$0"  # Landroid/view/InputChannel;
    .param p2, "x$1"  # Landroid/os/Looper;

    .line 1672
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public synthetic lambda$new$0$DisplayPolicy(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 6
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"  # I

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_5

    .line 778
    return-void

    .line 780
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowSleepTokenOnDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 782
    return-void
.end method

.method public synthetic lambda$new$1$DisplayPolicy()V
    .registers 2

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_5

    .line 785
    return-void

    .line 787
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 789
    return-void
.end method

.method public synthetic lambda$notifyDisplayReady$9$DisplayPolicy()V
    .registers 3

    .line 3057
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3058
    .local v0, "displayId":I
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 3059
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 3060
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p3, "rect"  # Landroid/graphics/Rect;

    .line 1135
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1137
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"  # Landroid/graphics/Rect;

    .line 1159
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1160
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"  # Landroid/graphics/Rect;

    .line 1163
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1164
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1165
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1166
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1167
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"  # Landroid/graphics/Rect;

    .line 1170
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1171
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1172
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1173
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1174
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"  # Landroid/graphics/Rect;

    .line 1177
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_11

    .line 1179
    :cond_e
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1181
    :cond_11
    return-void
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$10$DisplayPolicy(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V
    .registers 21
    .param p1, "visibility"  # I
    .param p2, "fullscreenVisibility"  # I
    .param p3, "dockedVisibility"  # I
    .param p4, "fullscreenStackBounds"  # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"  # Landroid/graphics/Rect;
    .param p6, "isNavbarColorManagedByIme"  # Z
    .param p7, "win"  # Lcom/android/server/wm/WindowState;
    .param p8, "needsMenu"  # Z

    .line 3454
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v10

    .line 3455
    .local v10, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v10, :cond_23

    .line 3456
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v11

    .line 3457
    .local v11, "displayId":I
    const/4 v5, -0x1

    .line 3459
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3457
    move-object v0, v10

    move v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 3460
    move/from16 v0, p8

    invoke-interface {v10, v11, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZ)V

    goto :goto_25

    .line 3455
    .end local v11  # "displayId":I
    :cond_23
    move/from16 v0, p8

    .line 3462
    :goto_25
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 54
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "attached"  # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 2066
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v13, v0, :cond_17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    move-object/from16 v1, p3

    move-object v8, v12

    move-object v6, v13

    goto/16 :goto_aea

    :cond_17
    :goto_17
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v13, v0, :cond_ae6

    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 2067
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v1, p3

    move-object v8, v12

    move-object v6, v13

    goto/16 :goto_aea

    .line 2071
    :cond_29
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->getDisplayFrames(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v15

    .line 2073
    .end local p3  # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v15, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 2074
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v16

    .line 2076
    .local v16, "isDefaultDisplay":Z
    iget v10, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2077
    .local v10, "type":I
    invoke-static {v13, v11}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    .line 2078
    .local v9, "fl":I
    iget v8, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2079
    .local v8, "pfl":I
    iget v7, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2080
    .local v7, "sim":I
    const/4 v0, 0x0

    invoke-static {v0, v11}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v17

    .line 2081
    .local v17, "requestedSysUiFl":I
    invoke-static {v11}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v6, v17, v0

    .line 2083
    .local v6, "sysUiFl":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v5

    .line 2085
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowFrames;->setHasOutsets(Z)V

    .line 2086
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2087
    iget-object v3, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 2088
    .local v3, "pf":Landroid/graphics/Rect;
    iget-object v2, v5, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 2089
    .local v2, "df":Landroid/graphics/Rect;
    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    .line 2090
    .local v1, "of":Landroid/graphics/Rect;
    iget-object v0, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 2091
    .local v0, "cf":Landroid/graphics/Rect;
    iget-object v4, v5, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 2092
    .local v4, "vf":Landroid/graphics/Rect;
    iget-object v14, v5, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 2093
    .local v14, "dcf":Landroid/graphics/Rect;
    move/from16 v18, v8

    .end local v8  # "pfl":I
    .local v18, "pfl":I
    iget-object v8, v5, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 2094
    .local v8, "sf":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 2095
    move/from16 v19, v6

    const/4 v6, 0x0

    .end local v6  # "sysUiFl":I
    .local v19, "sysUiFl":I
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 2096
    iget-object v6, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 2098
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_8f

    iget-object v6, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_8f

    .line 2099
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_8f

    const/4 v6, 0x1

    goto :goto_90

    :cond_8f
    const/4 v6, 0x0

    :goto_90
    move/from16 v20, v6

    .line 2102
    .local v20, "hasNavBar":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eqz v6, :cond_ac

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v6

    if-nez v6, :cond_ac

    iget-object v6, v12, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isWindowMode(Landroid/os/IBinder;)Z

    move-result v6

    if-nez v6, :cond_aa

    goto :goto_ac

    :cond_aa
    const/4 v6, 0x0

    goto :goto_ad

    :cond_ac
    :goto_ac
    const/4 v6, 0x1

    :goto_ad
    move v13, v6

    .line 2103
    .local v13, "useAdjust":Z
    if-eqz v13, :cond_b3

    and-int/lit16 v6, v7, 0xf0

    goto :goto_b5

    :cond_b3
    const/16 v6, 0x30

    .line 2106
    .local v6, "adjust":I
    :goto_b5
    move/from16 v23, v7

    .end local v7  # "sim":I
    .local v23, "sim":I
    and-int/lit16 v7, v9, 0x400

    if-nez v7, :cond_c2

    and-int/lit8 v7, v17, 0x4

    if-eqz v7, :cond_c0

    goto :goto_c2

    :cond_c0
    const/4 v7, 0x0

    goto :goto_c3

    :cond_c2
    :goto_c2
    const/4 v7, 0x1

    :goto_c3
    move/from16 v24, v7

    .line 2109
    .local v24, "requestedFullscreen":Z
    and-int/lit16 v7, v9, 0x100

    move/from16 v25, v13

    .end local v13  # "useAdjust":Z
    .local v25, "useAdjust":Z
    const/16 v13, 0x100

    if-ne v7, v13, :cond_cf

    const/4 v7, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v7, 0x0

    :goto_d0
    move v13, v7

    .line 2110
    .local v13, "layoutInScreen":Z
    const/high16 v7, 0x10000

    and-int/2addr v7, v9

    move/from16 v26, v13

    .end local v13  # "layoutInScreen":Z
    .local v26, "layoutInScreen":Z
    const/high16 v13, 0x10000

    if-ne v7, v13, :cond_dc

    const/4 v7, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v7, 0x0

    :goto_dd
    move v13, v7

    .line 2112
    .local v13, "layoutInsetDecor":Z
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2114
    iget v7, v11, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    move/from16 v27, v13

    .end local v13  # "layoutInsetDecor":Z
    .local v27, "layoutInsetDecor":Z
    const/4 v13, 0x4

    and-int/2addr v7, v13

    const-string v13, "WindowManager"

    if-eqz v7, :cond_123

    .line 2115
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2116
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2117
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2118
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2119
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v35, v5

    move-object/from16 v32, v11

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    const/4 v7, 0x1

    const/16 v34, 0x0

    move-object v5, v3

    move-object/from16 v23, v8

    move-object v8, v12

    move-object v3, v1

    move-object v1, v0

    move v0, v9

    move v9, v10

    move-object/from16 v49, v4

    move-object v4, v2

    move-object v2, v13

    move-object/from16 v13, v49

    goto/16 :goto_86b

    .line 2122
    :cond_123
    const/16 v7, 0x7db

    if-ne v10, v7, :cond_1e5

    .line 2123
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2124
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2125
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2126
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2127
    iget-object v7, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v30, v5

    .end local v5  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v30, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2129
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 2131
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2132
    iget-object v5, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_18b

    iget-object v7, v12, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v7, v5, :cond_18b

    invoke-direct {v12, v5}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 2135
    iget v5, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_179

    .line 2136
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x1

    goto :goto_18c

    .line 2138
    :cond_179
    const/4 v7, 0x1

    if-ne v5, v7, :cond_18c

    .line 2139
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    goto :goto_18c

    .line 2132
    :cond_18b
    const/4 v7, 0x1

    .line 2146
    :cond_18c
    :goto_18c
    iget v5, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_1c4

    .line 2147
    iget v5, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2148
    .local v5, "rotation":I
    iget-object v7, v12, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 2149
    .local v7, "uimode":I
    invoke-direct {v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v22

    .line 2150
    invoke-direct {v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v31

    sub-int v22, v22, v31

    .line 2151
    .local v22, "navHeightOffset":I
    if-lez v22, :cond_1c2

    .line 2152
    move/from16 v31, v5

    .end local v5  # "rotation":I
    .local v31, "rotation":I
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, v22

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2153
    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, v22

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    .line 2154
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, v22

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2155
    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, v22

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    goto :goto_1c4

    .line 2151
    .end local v31  # "rotation":I
    .restart local v5  # "rotation":I
    :cond_1c2
    move/from16 v31, v5

    .line 2160
    .end local v5  # "rotation":I
    .end local v7  # "uimode":I
    .end local v22  # "navHeightOffset":I
    :cond_1c4
    :goto_1c4
    const/16 v5, 0x50

    iput v5, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object v5, v3

    move-object/from16 v32, v11

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    move-object/from16 v35, v30

    const/4 v7, 0x1

    const/16 v34, 0x0

    move-object v3, v1

    move-object/from16 v23, v8

    move-object v8, v12

    move-object v1, v0

    move v0, v9

    move v9, v10

    move-object/from16 v49, v4

    move-object v4, v2

    move-object v2, v13

    move-object/from16 v13, v49

    goto/16 :goto_86b

    .line 2161
    .end local v30  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_1e5
    move-object/from16 v30, v5

    .end local v5  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v30  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    const/16 v5, 0x7ef

    const/16 v7, 0x10

    if-ne v10, v5, :cond_24f

    .line 2162
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2163
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2164
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2165
    if-eq v6, v7, :cond_204

    .line 2166
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_209

    .line 2168
    :cond_204
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2170
    :goto_209
    const/16 v5, 0x30

    if-eq v6, v5, :cond_22f

    .line 2171
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v5, v3

    move-object/from16 v32, v11

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    move-object/from16 v35, v30

    const/4 v7, 0x1

    const/16 v34, 0x0

    move-object v3, v1

    move-object/from16 v23, v8

    move-object v8, v12

    move-object v1, v0

    move v0, v9

    move v9, v10

    move-object/from16 v49, v4

    move-object v4, v2

    move-object v2, v13

    move-object/from16 v13, v49

    goto/16 :goto_86b

    .line 2173
    :cond_22f
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v5, v3

    move-object/from16 v32, v11

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    move-object/from16 v35, v30

    const/4 v7, 0x1

    const/16 v34, 0x0

    move-object v3, v1

    move-object/from16 v23, v8

    move-object v8, v12

    move-object v1, v0

    move v0, v9

    move v9, v10

    move-object/from16 v49, v4

    move-object v4, v2

    move-object v2, v13

    move-object/from16 v13, v49

    goto/16 :goto_86b

    .line 2175
    :cond_24f
    const/16 v5, 0x7dd

    if-ne v10, v5, :cond_287

    .line 2176
    move-object v7, v0

    .end local v0  # "cf":Landroid/graphics/Rect;
    .local v7, "cf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v5, v1

    .end local v1  # "of":Landroid/graphics/Rect;
    .local v5, "of":Landroid/graphics/Rect;
    move-object v1, v15

    move-object/from16 v31, v2

    .end local v2  # "df":Landroid/graphics/Rect;
    .local v31, "df":Landroid/graphics/Rect;
    move-object v2, v3

    move-object/from16 v32, v8

    move-object v8, v3

    .end local v3  # "pf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v32, "sf":Landroid/graphics/Rect;
    move-object/from16 v3, v31

    move-object/from16 v33, v13

    const/16 v34, 0x0

    move-object v13, v4

    .end local v4  # "vf":Landroid/graphics/Rect;
    .local v13, "vf":Landroid/graphics/Rect;
    move-object v4, v5

    move/from16 p3, v9

    move-object/from16 v35, v30

    move-object v9, v5

    .end local v5  # "of":Landroid/graphics/Rect;
    .end local v30  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v9, "of":Landroid/graphics/Rect;
    .local v35, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local p3, "fl":I
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move/from16 v0, p3

    move-object v1, v7

    move-object v5, v8

    move-object v3, v9

    move v9, v10

    move-object v8, v12

    move-object/from16 v4, v31

    move-object/from16 v2, v33

    const/4 v7, 0x1

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v11

    goto/16 :goto_86b

    .line 2177
    .end local v7  # "cf":Landroid/graphics/Rect;
    .end local v13  # "vf":Landroid/graphics/Rect;
    .end local v31  # "df":Landroid/graphics/Rect;
    .end local v32  # "sf":Landroid/graphics/Rect;
    .end local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local p3  # "fl":I
    .restart local v0  # "cf":Landroid/graphics/Rect;
    .restart local v1  # "of":Landroid/graphics/Rect;
    .restart local v2  # "df":Landroid/graphics/Rect;
    .restart local v3  # "pf":Landroid/graphics/Rect;
    .restart local v4  # "vf":Landroid/graphics/Rect;
    .local v8, "sf":Landroid/graphics/Rect;
    .local v9, "fl":I
    .restart local v30  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_287
    move-object v5, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v8

    move/from16 p3, v9

    move-object/from16 v33, v13

    move-object/from16 v35, v30

    const/16 v34, 0x0

    move-object v9, v1

    move-object v8, v3

    move-object v13, v4

    .end local v0  # "cf":Landroid/graphics/Rect;
    .end local v1  # "of":Landroid/graphics/Rect;
    .end local v2  # "df":Landroid/graphics/Rect;
    .end local v3  # "pf":Landroid/graphics/Rect;
    .end local v4  # "vf":Landroid/graphics/Rect;
    .end local v30  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v5, "cf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v9, "of":Landroid/graphics/Rect;
    .restart local v13  # "vf":Landroid/graphics/Rect;
    .restart local v31  # "df":Landroid/graphics/Rect;
    .restart local v32  # "sf":Landroid/graphics/Rect;
    .restart local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local p3  # "fl":I
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    move-object/from16 v4, p1

    const/4 v3, 0x1

    if-ne v4, v0, :cond_2fb

    .line 2178
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2179
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v2, v31

    .end local v31  # "df":Landroid/graphics/Rect;
    .restart local v2  # "df":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2180
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2181
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2182
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2184
    if-ne v6, v7, :cond_2d8

    .line 2185
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p3

    move-object v4, v2

    move v7, v3

    move-object v1, v5

    move-object v5, v8

    move-object v3, v9

    move v9, v10

    move-object v8, v12

    move-object/from16 v2, v33

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v11

    goto/16 :goto_86b

    .line 2187
    :cond_2d8
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 2188
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p3

    move-object v4, v2

    move v7, v3

    move-object v1, v5

    move-object v5, v8

    move-object v3, v9

    move v9, v10

    move-object v8, v12

    move-object/from16 v2, v33

    move-object/from16 v33, v14

    move/from16 v14, v19

    move/from16 v19, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v11

    goto/16 :goto_86b

    .line 2191
    .end local v2  # "df":Landroid/graphics/Rect;
    .restart local v31  # "df":Landroid/graphics/Rect;
    :cond_2fb
    move-object/from16 v2, v31

    .end local v31  # "df":Landroid/graphics/Rect;
    .restart local v2  # "df":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2192
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_30a

    move v0, v3

    goto :goto_30c

    :cond_30a
    move/from16 v0, v34

    :goto_30c
    move/from16 v21, v0

    .line 2194
    .local v21, "inheritTranslucentDecor":Z
    if-lt v10, v3, :cond_316

    const/16 v0, 0x63

    if-gt v10, v0, :cond_316

    move v0, v3

    goto :goto_318

    :cond_316
    move/from16 v0, v34

    :goto_318
    move/from16 v30, v0

    .line 2196
    .local v30, "isAppWindow":Z
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v4, v0, :cond_326

    .line 2197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_326

    move v0, v3

    goto :goto_328

    :cond_326
    move/from16 v0, v34

    :goto_328
    move/from16 v31, v0

    .line 2198
    .local v31, "topAtRest":Z
    if-eqz v30, :cond_376

    if-nez v21, :cond_376

    if-nez v31, :cond_376

    .line 2199
    and-int/lit8 v0, v19, 0x4

    if-nez v0, :cond_352

    move/from16 v1, p3

    .end local p3  # "fl":I
    .local v1, "fl":I
    and-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_354

    const/high16 v0, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_354

    const/high16 v0, -0x80000000

    and-int v36, v1, v0

    if-nez v36, :cond_354

    const/high16 v0, 0x20000

    and-int v0, v18, v0

    if-nez v0, :cond_354

    .line 2205
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v14, Landroid/graphics/Rect;->top:I

    goto :goto_354

    .line 2199
    .end local v1  # "fl":I
    .restart local p3  # "fl":I
    :cond_352
    move/from16 v1, p3

    .line 2207
    .end local p3  # "fl":I
    .restart local v1  # "fl":I
    :cond_354
    :goto_354
    const/high16 v0, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_378

    and-int/lit8 v0, v19, 0x2

    if-nez v0, :cond_378

    const/high16 v0, -0x80000000

    and-int v36, v1, v0

    if-nez v36, :cond_378

    const/high16 v0, 0x20000

    and-int v0, v18, v0

    if-nez v0, :cond_378

    .line 2212
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    .line 2213
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v14, Landroid/graphics/Rect;->right:I

    goto :goto_378

    .line 2198
    .end local v1  # "fl":I
    .restart local p3  # "fl":I
    :cond_376
    move/from16 v1, p3

    .line 2217
    .end local p3  # "fl":I
    .restart local v1  # "fl":I
    :cond_378
    :goto_378
    const/16 v0, 0x7de

    const-string v7, "layoutWindowLw("

    if-eqz v26, :cond_552

    if-eqz v27, :cond_552

    .line 2218
    sget-boolean v37, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v37, :cond_3a2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v33

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a4

    :cond_3a2
    move-object/from16 v7, v33

    .line 2223
    :goto_3a4
    move-object/from16 v33, v14

    move-object/from16 v14, p2

    .end local v14  # "dcf":Landroid/graphics/Rect;
    .local v33, "dcf":Landroid/graphics/Rect;
    if-eqz v14, :cond_3f3

    .line 2226
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v37, v1

    .end local v1  # "fl":I
    .local v37, "fl":I
    move-object/from16 v1, p1

    move-object v3, v2

    .end local v2  # "df":Landroid/graphics/Rect;
    .local v3, "df":Landroid/graphics/Rect;
    move/from16 v2, v37

    move-object/from16 v38, v3

    .end local v3  # "df":Landroid/graphics/Rect;
    .local v38, "df":Landroid/graphics/Rect;
    move v3, v6

    move-object/from16 v4, p2

    move-object/from16 v36, v5

    .end local v5  # "cf":Landroid/graphics/Rect;
    .local v36, "cf":Landroid/graphics/Rect;
    move/from16 v5, v22

    move/from16 v40, v6

    move/from16 v39, v19

    .end local v6  # "adjust":I
    .end local v19  # "sysUiFl":I
    .local v39, "sysUiFl":I
    .local v40, "adjust":I
    move-object v6, v8

    move-object/from16 v41, v7

    move/from16 v19, v23

    .end local v23  # "sim":I
    .local v19, "sim":I
    move-object/from16 v7, v38

    move-object/from16 v42, v8

    move-object/from16 v23, v32

    .end local v8  # "pf":Landroid/graphics/Rect;
    .end local v32  # "sf":Landroid/graphics/Rect;
    .local v23, "sf":Landroid/graphics/Rect;
    .local v42, "pf":Landroid/graphics/Rect;
    move-object v8, v9

    move-object/from16 v44, v9

    move/from16 v43, v37

    .end local v9  # "of":Landroid/graphics/Rect;
    .end local v37  # "fl":I
    .local v43, "fl":I
    .local v44, "of":Landroid/graphics/Rect;
    move-object/from16 v9, v36

    move/from16 v45, v10

    .end local v10  # "type":I
    .local v45, "type":I
    move-object v10, v13

    move-object/from16 v32, v11

    .end local v11  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v32, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object v8, v12

    move-object/from16 v1, v36

    move-object/from16 v4, v38

    move/from16 v14, v39

    move/from16 v6, v40

    move-object/from16 v2, v41

    move-object/from16 v5, v42

    move/from16 v0, v43

    move-object/from16 v3, v44

    move/from16 v9, v45

    const/4 v7, 0x1

    goto/16 :goto_86b

    .line 2229
    .end local v36  # "cf":Landroid/graphics/Rect;
    .end local v38  # "df":Landroid/graphics/Rect;
    .end local v39  # "sysUiFl":I
    .end local v40  # "adjust":I
    .end local v42  # "pf":Landroid/graphics/Rect;
    .end local v43  # "fl":I
    .end local v44  # "of":Landroid/graphics/Rect;
    .end local v45  # "type":I
    .restart local v1  # "fl":I
    .restart local v2  # "df":Landroid/graphics/Rect;
    .restart local v5  # "cf":Landroid/graphics/Rect;
    .restart local v6  # "adjust":I
    .restart local v8  # "pf":Landroid/graphics/Rect;
    .restart local v9  # "of":Landroid/graphics/Rect;
    .restart local v10  # "type":I
    .restart local v11  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v19, "sysUiFl":I
    .local v23, "sim":I
    .local v32, "sf":Landroid/graphics/Rect;
    :cond_3f3
    move/from16 v43, v1

    move-object/from16 v38, v2

    move-object/from16 v36, v5

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object/from16 v44, v9

    move/from16 v45, v10

    move/from16 v39, v19

    move/from16 v19, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v11

    .end local v1  # "fl":I
    .end local v2  # "df":Landroid/graphics/Rect;
    .end local v5  # "cf":Landroid/graphics/Rect;
    .end local v6  # "adjust":I
    .end local v8  # "pf":Landroid/graphics/Rect;
    .end local v9  # "of":Landroid/graphics/Rect;
    .end local v10  # "type":I
    .end local v11  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v19, "sim":I
    .local v23, "sf":Landroid/graphics/Rect;
    .local v32, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v36  # "cf":Landroid/graphics/Rect;
    .restart local v38  # "df":Landroid/graphics/Rect;
    .restart local v39  # "sysUiFl":I
    .restart local v40  # "adjust":I
    .restart local v42  # "pf":Landroid/graphics/Rect;
    .restart local v43  # "fl":I
    .restart local v44  # "of":Landroid/graphics/Rect;
    .restart local v45  # "type":I
    move/from16 v11, v45

    .end local v45  # "type":I
    .local v11, "type":I
    if-eq v11, v0, :cond_490

    const/16 v0, 0x7e1

    if-ne v11, v0, :cond_420

    move-object/from16 v6, v38

    move/from16 v4, v39

    move-object/from16 v5, v42

    move/from16 v10, v43

    move-object/from16 v8, v44

    const/4 v9, 0x1

    goto/16 :goto_49b

    .line 2247
    :cond_420
    const/high16 v0, 0x2000000

    move/from16 v10, v43

    .end local v43  # "fl":I
    .local v10, "fl":I
    and-int/2addr v0, v10

    if-eqz v0, :cond_450

    const/4 v9, 0x1

    if-lt v11, v9, :cond_449

    const/16 v0, 0x7cf

    if-gt v11, v0, :cond_449

    .line 2251
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v8, v44

    .end local v44  # "of":Landroid/graphics/Rect;
    .local v8, "of":Landroid/graphics/Rect;
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2252
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v6, v38

    .end local v38  # "df":Landroid/graphics/Rect;
    .local v6, "df":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2253
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v5, v42

    .end local v42  # "pf":Landroid/graphics/Rect;
    .local v5, "pf":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v4, v39

    move-object/from16 v3, v41

    goto/16 :goto_4f3

    .line 2247
    .end local v5  # "pf":Landroid/graphics/Rect;
    .end local v6  # "df":Landroid/graphics/Rect;
    .end local v8  # "of":Landroid/graphics/Rect;
    .restart local v38  # "df":Landroid/graphics/Rect;
    .restart local v42  # "pf":Landroid/graphics/Rect;
    .restart local v44  # "of":Landroid/graphics/Rect;
    :cond_449
    move-object/from16 v6, v38

    move-object/from16 v5, v42

    move-object/from16 v8, v44

    goto :goto_457

    :cond_450
    move-object/from16 v6, v38

    move-object/from16 v5, v42

    move-object/from16 v8, v44

    const/4 v9, 0x1

    .line 2254
    .end local v38  # "df":Landroid/graphics/Rect;
    .end local v42  # "pf":Landroid/graphics/Rect;
    .end local v44  # "of":Landroid/graphics/Rect;
    .restart local v5  # "pf":Landroid/graphics/Rect;
    .restart local v6  # "df":Landroid/graphics/Rect;
    .restart local v8  # "of":Landroid/graphics/Rect;
    :goto_457
    move/from16 v4, v39

    .end local v39  # "sysUiFl":I
    .local v4, "sysUiFl":I
    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_47e

    if-lt v11, v9, :cond_463

    const/16 v0, 0x7cf

    if-le v11, v0, :cond_46b

    :cond_463
    const/16 v0, 0x7e4

    if-eq v11, v0, :cond_46b

    const/16 v0, 0x7d9

    if-ne v11, v0, :cond_47e

    .line 2262
    :cond_46b
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2263
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2267
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v3, v41

    goto/16 :goto_4f3

    .line 2269
    :cond_47e
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2270
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2274
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v3, v41

    goto :goto_4f3

    .line 2229
    .end local v4  # "sysUiFl":I
    .end local v5  # "pf":Landroid/graphics/Rect;
    .end local v6  # "df":Landroid/graphics/Rect;
    .end local v8  # "of":Landroid/graphics/Rect;
    .end local v10  # "fl":I
    .restart local v38  # "df":Landroid/graphics/Rect;
    .restart local v39  # "sysUiFl":I
    .restart local v42  # "pf":Landroid/graphics/Rect;
    .restart local v43  # "fl":I
    .restart local v44  # "of":Landroid/graphics/Rect;
    :cond_490
    move-object/from16 v6, v38

    move/from16 v4, v39

    move-object/from16 v5, v42

    move/from16 v10, v43

    move-object/from16 v8, v44

    const/4 v9, 0x1

    .line 2236
    .end local v38  # "df":Landroid/graphics/Rect;
    .end local v39  # "sysUiFl":I
    .end local v42  # "pf":Landroid/graphics/Rect;
    .end local v43  # "fl":I
    .end local v44  # "of":Landroid/graphics/Rect;
    .restart local v4  # "sysUiFl":I
    .restart local v5  # "pf":Landroid/graphics/Rect;
    .restart local v6  # "df":Landroid/graphics/Rect;
    .restart local v8  # "of":Landroid/graphics/Rect;
    .restart local v10  # "fl":I
    :goto_49b
    if-eqz v20, :cond_4a0

    .line 2237
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_4a2

    :cond_4a0
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_4a2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 2238
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 2239
    if-eqz v20, :cond_4bb

    .line 2240
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_4bf

    .line 2241
    :cond_4bb
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_4bf
    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 2242
    if-eqz v20, :cond_4cc

    .line 2243
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4d0

    .line 2244
    :cond_4cc
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_4d0
    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 2246
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_4f1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Laying out status bar window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v41

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f3

    :cond_4f1
    move-object/from16 v3, v41

    .line 2277
    :goto_4f3
    and-int/lit16 v0, v10, 0x400

    if-nez v0, :cond_522

    .line 2278
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_507

    .line 2279
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v2, v36

    .end local v36  # "cf":Landroid/graphics/Rect;
    .local v2, "cf":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v1, v40

    goto :goto_52b

    .line 2283
    .end local v2  # "cf":Landroid/graphics/Rect;
    .restart local v36  # "cf":Landroid/graphics/Rect;
    :cond_507
    move-object/from16 v2, v36

    .end local v36  # "cf":Landroid/graphics/Rect;
    .restart local v2  # "cf":Landroid/graphics/Rect;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_51a

    move/from16 v1, v40

    const/16 v0, 0x10

    .end local v40  # "adjust":I
    .local v1, "adjust":I
    if-eq v1, v0, :cond_514

    goto :goto_51c

    .line 2287
    :cond_514
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_52b

    .line 2283
    .end local v1  # "adjust":I
    .restart local v40  # "adjust":I
    :cond_51a
    move/from16 v1, v40

    .line 2285
    .end local v40  # "adjust":I
    .restart local v1  # "adjust":I
    :goto_51c
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_52b

    .line 2294
    .end local v1  # "adjust":I
    .end local v2  # "cf":Landroid/graphics/Rect;
    .restart local v36  # "cf":Landroid/graphics/Rect;
    .restart local v40  # "adjust":I
    :cond_522
    move-object/from16 v2, v36

    move/from16 v1, v40

    .end local v36  # "cf":Landroid/graphics/Rect;
    .end local v40  # "adjust":I
    .restart local v1  # "adjust":I
    .restart local v2  # "cf":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2296
    :goto_52b
    invoke-direct {v12, v4, v10, v2, v15}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2297
    const/16 v0, 0x30

    if-eq v1, v0, :cond_543

    .line 2298
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v14, v4

    move-object v4, v6

    move v7, v9

    move v0, v10

    move v9, v11

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move-object v8, v12

    goto/16 :goto_86b

    .line 2300
    :cond_543
    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v14, v4

    move-object v4, v6

    move v7, v9

    move v0, v10

    move v9, v11

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move-object v8, v12

    goto/16 :goto_86b

    .line 2217
    .end local v4  # "sysUiFl":I
    .end local v33  # "dcf":Landroid/graphics/Rect;
    .local v1, "fl":I
    .local v2, "df":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    .local v6, "adjust":I
    .local v8, "pf":Landroid/graphics/Rect;
    .restart local v9  # "of":Landroid/graphics/Rect;
    .local v10, "type":I
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v14  # "dcf":Landroid/graphics/Rect;
    .local v19, "sysUiFl":I
    .local v23, "sim":I
    .local v32, "sf":Landroid/graphics/Rect;
    :cond_552
    move/from16 v4, v19

    move/from16 v19, v23

    move-object/from16 v23, v32

    move-object/from16 v3, v33

    move-object/from16 v32, v11

    move-object/from16 v33, v14

    move-object/from16 v14, p2

    move v11, v10

    move v10, v1

    move v1, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v8

    move-object v8, v9

    const/4 v9, 0x1

    .line 2303
    .end local v9  # "of":Landroid/graphics/Rect;
    .end local v14  # "dcf":Landroid/graphics/Rect;
    .local v1, "adjust":I
    .local v2, "cf":Landroid/graphics/Rect;
    .restart local v4  # "sysUiFl":I
    .local v5, "pf":Landroid/graphics/Rect;
    .local v6, "df":Landroid/graphics/Rect;
    .local v8, "of":Landroid/graphics/Rect;
    .local v10, "fl":I
    .local v11, "type":I
    .local v19, "sim":I
    .local v23, "sf":Landroid/graphics/Rect;
    .local v32, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v33  # "dcf":Landroid/graphics/Rect;
    if-nez v26, :cond_6c1

    and-int/lit16 v9, v4, 0x600

    if-eqz v9, :cond_579

    move v14, v4

    move-object v4, v6

    move/from16 v48, v10

    move v12, v11

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_6ca

    .line 2394
    :cond_579
    if-eqz v14, :cond_5d6

    .line 2395
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_59d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "): attached to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_59d
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v9, v1

    .end local v1  # "adjust":I
    .local v9, "adjust":I
    move-object/from16 v1, p1

    move-object/from16 v36, v2

    .end local v2  # "cf":Landroid/graphics/Rect;
    .restart local v36  # "cf":Landroid/graphics/Rect;
    move v2, v10

    move-object/from16 v46, v3

    move v3, v9

    move v14, v4

    .end local v4  # "sysUiFl":I
    .local v14, "sysUiFl":I
    move-object/from16 v4, p2

    move-object/from16 v42, v5

    .end local v5  # "pf":Landroid/graphics/Rect;
    .restart local v42  # "pf":Landroid/graphics/Rect;
    move v5, v7

    move-object v7, v6

    .end local v6  # "df":Landroid/graphics/Rect;
    .local v7, "df":Landroid/graphics/Rect;
    move-object/from16 v6, v42

    move-object/from16 v38, v7

    .end local v7  # "df":Landroid/graphics/Rect;
    .restart local v38  # "df":Landroid/graphics/Rect;
    move-object/from16 v44, v8

    .end local v8  # "of":Landroid/graphics/Rect;
    .restart local v44  # "of":Landroid/graphics/Rect;
    move/from16 v47, v9

    .end local v9  # "adjust":I
    .local v47, "adjust":I
    move-object/from16 v9, v36

    move/from16 v48, v10

    .end local v10  # "fl":I
    .local v48, "fl":I
    move-object v10, v13

    move v12, v11

    .end local v11  # "type":I
    .local v12, "type":I
    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v8, p0

    move v9, v12

    move-object/from16 v1, v36

    move-object/from16 v4, v38

    move-object/from16 v5, v42

    move-object/from16 v3, v44

    move-object/from16 v2, v46

    move/from16 v6, v47

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_86b

    .line 2402
    .end local v12  # "type":I
    .end local v14  # "sysUiFl":I
    .end local v36  # "cf":Landroid/graphics/Rect;
    .end local v38  # "df":Landroid/graphics/Rect;
    .end local v42  # "pf":Landroid/graphics/Rect;
    .end local v44  # "of":Landroid/graphics/Rect;
    .end local v47  # "adjust":I
    .end local v48  # "fl":I
    .restart local v1  # "adjust":I
    .restart local v2  # "cf":Landroid/graphics/Rect;
    .restart local v4  # "sysUiFl":I
    .restart local v5  # "pf":Landroid/graphics/Rect;
    .restart local v6  # "df":Landroid/graphics/Rect;
    .restart local v8  # "of":Landroid/graphics/Rect;
    .restart local v10  # "fl":I
    .restart local v11  # "type":I
    :cond_5d6
    move/from16 v47, v1

    move-object/from16 v36, v2

    move-object/from16 v46, v3

    move v14, v4

    move-object/from16 v42, v5

    move-object/from16 v38, v6

    move-object/from16 v44, v8

    move/from16 v48, v10

    move v12, v11

    .end local v1  # "adjust":I
    .end local v2  # "cf":Landroid/graphics/Rect;
    .end local v4  # "sysUiFl":I
    .end local v5  # "pf":Landroid/graphics/Rect;
    .end local v6  # "df":Landroid/graphics/Rect;
    .end local v8  # "of":Landroid/graphics/Rect;
    .end local v10  # "fl":I
    .end local v11  # "type":I
    .restart local v12  # "type":I
    .restart local v14  # "sysUiFl":I
    .restart local v36  # "cf":Landroid/graphics/Rect;
    .restart local v38  # "df":Landroid/graphics/Rect;
    .restart local v42  # "pf":Landroid/graphics/Rect;
    .restart local v44  # "of":Landroid/graphics/Rect;
    .restart local v47  # "adjust":I
    .restart local v48  # "fl":I
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_608

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): normal window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v46

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60a

    :cond_608
    move-object/from16 v2, v46

    .line 2406
    :goto_60a
    if-ne v12, v0, :cond_632

    .line 2410
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v1, v36

    .end local v36  # "cf":Landroid/graphics/Rect;
    .local v1, "cf":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2411
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v3, v44

    .end local v44  # "of":Landroid/graphics/Rect;
    .local v3, "of":Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2412
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v4, v38

    .end local v38  # "df":Landroid/graphics/Rect;
    .local v4, "df":Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2413
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v5, v42

    .end local v42  # "pf":Landroid/graphics/Rect;
    .restart local v5  # "pf":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v8, p0

    move v9, v12

    move/from16 v6, v47

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_86b

    .line 2414
    .end local v1  # "cf":Landroid/graphics/Rect;
    .end local v3  # "of":Landroid/graphics/Rect;
    .end local v4  # "df":Landroid/graphics/Rect;
    .end local v5  # "pf":Landroid/graphics/Rect;
    .restart local v36  # "cf":Landroid/graphics/Rect;
    .restart local v38  # "df":Landroid/graphics/Rect;
    .restart local v42  # "pf":Landroid/graphics/Rect;
    .restart local v44  # "of":Landroid/graphics/Rect;
    :cond_632
    move-object/from16 v1, v36

    move-object/from16 v4, v38

    move-object/from16 v5, v42

    move-object/from16 v3, v44

    .end local v36  # "cf":Landroid/graphics/Rect;
    .end local v38  # "df":Landroid/graphics/Rect;
    .end local v42  # "pf":Landroid/graphics/Rect;
    .end local v44  # "of":Landroid/graphics/Rect;
    .restart local v1  # "cf":Landroid/graphics/Rect;
    .restart local v3  # "of":Landroid/graphics/Rect;
    .restart local v4  # "df":Landroid/graphics/Rect;
    .restart local v5  # "pf":Landroid/graphics/Rect;
    const/16 v0, 0x7d5

    if-eq v12, v0, :cond_6a3

    const/16 v0, 0x7d3

    if-ne v12, v0, :cond_645

    move/from16 v6, v47

    goto :goto_6a5

    .line 2421
    :cond_645
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2422
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_662

    .line 2423
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2424
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2425
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v6, v47

    goto :goto_687

    .line 2426
    :cond_662
    move/from16 v6, v47

    const/16 v0, 0x10

    .end local v47  # "adjust":I
    .local v6, "adjust":I
    if-eq v6, v0, :cond_678

    .line 2427
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2428
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2429
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_687

    .line 2431
    :cond_678
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2432
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2433
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2435
    :goto_687
    const/16 v0, 0x30

    if-eq v6, v0, :cond_698

    .line 2436
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v8, p0

    move v9, v12

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_86b

    .line 2438
    :cond_698
    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v8, p0

    move v9, v12

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_86b

    .line 2414
    .end local v6  # "adjust":I
    .restart local v47  # "adjust":I
    :cond_6a3
    move/from16 v6, v47

    .line 2416
    .end local v47  # "adjust":I
    .restart local v6  # "adjust":I
    :goto_6a5
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2417
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2418
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2419
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v8, p0

    move v9, v12

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_86b

    .line 2303
    .end local v3  # "of":Landroid/graphics/Rect;
    .end local v12  # "type":I
    .end local v14  # "sysUiFl":I
    .end local v48  # "fl":I
    .local v1, "adjust":I
    .restart local v2  # "cf":Landroid/graphics/Rect;
    .local v4, "sysUiFl":I
    .local v6, "df":Landroid/graphics/Rect;
    .restart local v8  # "of":Landroid/graphics/Rect;
    .restart local v10  # "fl":I
    .restart local v11  # "type":I
    :cond_6c1
    move v14, v4

    move-object v4, v6

    move/from16 v48, v10

    move v12, v11

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    .line 2306
    .end local v2  # "cf":Landroid/graphics/Rect;
    .end local v8  # "of":Landroid/graphics/Rect;
    .end local v10  # "fl":I
    .end local v11  # "type":I
    .local v1, "cf":Landroid/graphics/Rect;
    .restart local v3  # "of":Landroid/graphics/Rect;
    .local v4, "df":Landroid/graphics/Rect;
    .local v6, "adjust":I
    .restart local v12  # "type":I
    .restart local v14  # "sysUiFl":I
    .restart local v48  # "fl":I
    :goto_6ca
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_6e9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "): IN_SCREEN"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_6e9
    if-eq v12, v0, :cond_803

    const/16 v0, 0x7e1

    if-ne v12, v0, :cond_6f4

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_806

    .line 2322
    :cond_6f4
    const/16 v0, 0x7e3

    if-eq v12, v0, :cond_7d8

    const/16 v0, 0x7e8

    if-ne v12, v0, :cond_701

    move/from16 v0, v48

    const/4 v7, 0x1

    goto/16 :goto_7db

    .line 2328
    :cond_701
    const/16 v0, 0x7df

    if-eq v12, v0, :cond_70d

    const/16 v0, 0x7f4

    if-ne v12, v0, :cond_70a

    goto :goto_70d

    :cond_70a
    move/from16 v0, v48

    goto :goto_72a

    :cond_70d
    :goto_70d
    move/from16 v0, v48

    .end local v48  # "fl":I
    .local v0, "fl":I
    and-int/lit16 v7, v0, 0x400

    if-eqz v7, :cond_72a

    .line 2332
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2333
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2334
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2335
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    goto/16 :goto_858

    .line 2336
    :cond_72a
    :goto_72a
    const/16 v7, 0x7e5

    if-ne v12, v7, :cond_745

    .line 2338
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2339
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2340
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2341
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    goto/16 :goto_858

    .line 2342
    :cond_745
    const/high16 v7, 0x2000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_767

    const/4 v7, 0x1

    if-lt v12, v7, :cond_768

    const/16 v8, 0x7cf

    if-gt v12, v8, :cond_768

    .line 2346
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2347
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2348
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2349
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_858

    .line 2342
    :cond_767
    const/4 v7, 0x1

    .line 2350
    :cond_768
    and-int/lit16 v8, v14, 0x200

    if-eqz v8, :cond_798

    const/16 v8, 0x7d0

    if-eq v12, v8, :cond_782

    const/16 v8, 0x7d5

    if-eq v12, v8, :cond_782

    const/16 v8, 0x7f2

    if-eq v12, v8, :cond_782

    const/16 v8, 0x7f1

    if-eq v12, v8, :cond_782

    if-lt v12, v7, :cond_798

    const/16 v8, 0x7cf

    if-gt v12, v8, :cond_798

    .line 2363
    :cond_782
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2364
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2365
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2366
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_858

    .line 2367
    :cond_798
    and-int/lit16 v8, v14, 0x400

    if-eqz v8, :cond_7c2

    .line 2368
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2369
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2370
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2374
    sget v8, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v8, :cond_7bb

    const/16 v8, 0x10

    if-eq v6, v8, :cond_7b4

    goto :goto_7bb

    .line 2378
    :cond_7b4
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_858

    .line 2376
    :cond_7bb
    :goto_7bb
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_858

    .line 2381
    :cond_7c2
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2382
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2383
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2384
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_858

    .line 2322
    .end local v0  # "fl":I
    .restart local v48  # "fl":I
    :cond_7d8
    move/from16 v0, v48

    const/4 v7, 0x1

    .line 2324
    .end local v48  # "fl":I
    .restart local v0  # "fl":I
    :goto_7db
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2325
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2326
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2327
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_858

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Laying out navigation bar window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_858

    .line 2310
    .end local v0  # "fl":I
    .restart local v48  # "fl":I
    :cond_803
    move/from16 v0, v48

    const/4 v7, 0x1

    .line 2311
    .end local v48  # "fl":I
    .restart local v0  # "fl":I
    :goto_806
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2312
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2313
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2314
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2315
    if-eqz v20, :cond_840

    .line 2316
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v1, Landroid/graphics/Rect;->left:I

    iput v8, v3, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 2317
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v1, Landroid/graphics/Rect;->right:I

    iput v8, v3, Landroid/graphics/Rect;->right:I

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 2318
    iget-object v8, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 2321
    :cond_840
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_858

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Laying out IN_SCREEN status bar window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_858
    :goto_858
    move-object/from16 v8, p0

    move v9, v12

    .end local v12  # "type":I
    .local v9, "type":I
    invoke-direct {v8, v14, v0, v1, v15}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2389
    const/16 v10, 0x30

    if-eq v6, v10, :cond_868

    .line 2390
    iget-object v10, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v13, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_86b

    .line 2392
    :cond_868
    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2445
    .end local v21  # "inheritTranslucentDecor":Z
    .end local v30  # "isAppWindow":Z
    .end local v31  # "topAtRest":Z
    :goto_86b
    if-eqz v24, :cond_881

    move-object/from16 v10, p1

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_883

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isForceFull()Z

    move-result v11

    if-eqz v11, :cond_883

    move v11, v7

    goto :goto_885

    :cond_881
    move-object/from16 v10, p1

    :cond_883
    move/from16 v11, v34

    .line 2446
    .local v11, "isForceFull":Z
    :goto_885
    if-eqz v11, :cond_88f

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v12

    if-nez v12, :cond_88f

    move v12, v7

    goto :goto_891

    :cond_88f
    move/from16 v12, v34

    :goto_891
    move v11, v12

    .line 2447
    if-eqz v11, :cond_8a3

    move/from16 v40, v6

    move-object/from16 v12, v32

    .end local v6  # "adjust":I
    .end local v32  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v40  # "adjust":I
    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v6, v7, :cond_8a7

    .line 2448
    iput v7, v12, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2449
    iget-object v6, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_8a7

    .line 2447
    .end local v12  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v40  # "adjust":I
    .restart local v6  # "adjust":I
    .restart local v32  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_8a3
    move/from16 v40, v6

    move-object/from16 v12, v32

    .line 2453
    .end local v6  # "adjust":I
    .end local v32  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v12  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v40  # "adjust":I
    :cond_8a7
    :goto_8a7
    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2454
    .local v6, "cutoutMode":I
    move/from16 v21, v14

    move-object/from16 v14, p2

    .end local v14  # "sysUiFl":I
    .local v21, "sysUiFl":I
    if-eqz v14, :cond_8b4

    if-nez v26, :cond_8b4

    move/from16 v22, v7

    goto :goto_8b6

    :cond_8b4
    move/from16 v22, v34

    .line 2455
    .local v22, "attachedInParent":Z
    :goto_8b6
    and-int/lit8 v30, v17, 0x2

    if-eqz v30, :cond_8bd

    move/from16 v30, v7

    goto :goto_8bf

    :cond_8bd
    move/from16 v30, v34

    .line 2460
    .local v30, "requestedHideNavigation":Z
    :goto_8bf
    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v31

    if-nez v31, :cond_8cc

    if-eqz v26, :cond_8cc

    if-eq v9, v7, :cond_8cc

    move/from16 v31, v7

    goto :goto_8ce

    :cond_8cc
    move/from16 v31, v34

    .line 2465
    .local v31, "floatingInScreenWindow":Z
    :goto_8ce
    if-eq v6, v7, :cond_93c

    .line 2466
    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 2467
    .local v7, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    move/from16 p3, v11

    .end local v11  # "isForceFull":Z
    .local p3, "isForceFull":Z
    iget-object v11, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v7, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2468
    if-eqz v26, :cond_8e5

    if-eqz v27, :cond_8e5

    if-nez v24, :cond_8e5

    if-nez v6, :cond_8e5

    .line 2474
    const/high16 v11, -0x80000000

    iput v11, v7, Landroid/graphics/Rect;->top:I

    .line 2476
    :cond_8e5
    if-eqz v26, :cond_90c

    if-eqz v27, :cond_90c

    if-nez v30, :cond_90c

    if-nez v6, :cond_90c

    .line 2479
    iget v11, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    move/from16 v36, v6

    const/4 v6, 0x1

    .end local v6  # "cutoutMode":I
    .local v36, "cutoutMode":I
    if-eq v11, v6, :cond_907

    const/4 v6, 0x2

    if-eq v11, v6, :cond_901

    const/4 v6, 0x4

    if-eq v11, v6, :cond_8fb

    goto :goto_90e

    .line 2481
    :cond_8fb
    const v6, 0x7fffffff

    iput v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 2482
    goto :goto_90e

    .line 2484
    :cond_901
    const v6, 0x7fffffff

    iput v6, v7, Landroid/graphics/Rect;->right:I

    .line 2485
    goto :goto_90e

    .line 2487
    :cond_907
    const/high16 v6, -0x80000000

    iput v6, v7, Landroid/graphics/Rect;->left:I

    goto :goto_90e

    .line 2476
    .end local v36  # "cutoutMode":I
    .restart local v6  # "cutoutMode":I
    :cond_90c
    move/from16 v36, v6

    .line 2491
    .end local v6  # "cutoutMode":I
    .restart local v36  # "cutoutMode":I
    :goto_90e
    const/16 v6, 0x7db

    if-ne v9, v6, :cond_91c

    iget v6, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v11, 0x4

    if-ne v6, v11, :cond_91c

    .line 2493
    const v6, 0x7fffffff

    iput v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 2500
    :cond_91c
    if-nez v22, :cond_936

    if-nez v31, :cond_936

    .line 2501
    sget-object v6, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2502
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2503
    sget-object v6, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v11, 0x1

    xor-int/2addr v6, v11

    move-object/from16 v11, v35

    .end local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v11, "windowFrames":Lcom/android/server/wm/WindowFrames;
    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_938

    .line 2500
    .end local v11  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_936
    move-object/from16 v11, v35

    .line 2507
    .end local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v11  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_938
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_942

    .line 2465
    .end local v7  # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .end local v36  # "cutoutMode":I
    .end local p3  # "isForceFull":Z
    .restart local v6  # "cutoutMode":I
    .local v11, "isForceFull":Z
    .restart local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_93c
    move/from16 v36, v6

    move/from16 p3, v11

    move-object/from16 v11, v35

    .line 2511
    .end local v6  # "cutoutMode":I
    .end local v35  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v11, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v36  # "cutoutMode":I
    .restart local p3  # "isForceFull":Z
    :goto_942
    iget-object v6, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2515
    and-int/lit16 v6, v0, 0x200

    if-eqz v6, :cond_981

    const/16 v6, 0x7da

    if-eq v9, v6, :cond_981

    .line 2516
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_981

    .line 2517
    const/16 v6, -0x2710

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2518
    const/16 v6, 0x2710

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2519
    const/16 v6, 0x7dd

    if-eq v9, v6, :cond_981

    .line 2520
    const/16 v6, -0x2710

    iput v6, v13, Landroid/graphics/Rect;->top:I

    iput v6, v13, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 2521
    const/16 v6, 0x2710

    iput v6, v13, Landroid/graphics/Rect;->bottom:I

    iput v6, v13, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2529
    :cond_981
    invoke-static {v12, v0}, Lcom/android/server/wm/DisplayPolicy;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v6

    .line 2530
    .local v6, "useOutsets":Z
    if-eqz v16, :cond_9f1

    if-eqz v6, :cond_9f1

    .line 2531
    iget-object v7, v11, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    .line 2532
    .local v7, "osf":Landroid/graphics/Rect;
    move/from16 v28, v6

    .end local v6  # "useOutsets":Z
    .local v28, "useOutsets":Z
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v29, v13

    .end local v13  # "vf":Landroid/graphics/Rect;
    .local v29, "vf":Landroid/graphics/Rect;
    iget v13, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v44, v3

    .end local v3  # "of":Landroid/graphics/Rect;
    .restart local v44  # "of":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v6, v10, v13, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2533
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/wm/WindowFrames;->setHasOutsets(Z)V

    .line 2534
    iget v3, v8, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 2535
    .local v3, "outset":I
    if-lez v3, :cond_9f7

    .line 2536
    iget v6, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2537
    .local v6, "rotation":I
    if-nez v6, :cond_9ae

    .line 2538
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_9c8

    .line 2539
    :cond_9ae
    const/4 v10, 0x1

    if-ne v6, v10, :cond_9b7

    .line 2540
    iget v10, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v3

    iput v10, v7, Landroid/graphics/Rect;->right:I

    goto :goto_9c8

    .line 2541
    :cond_9b7
    const/4 v10, 0x2

    if-ne v6, v10, :cond_9c0

    .line 2542
    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v3

    iput v10, v7, Landroid/graphics/Rect;->top:I

    goto :goto_9c8

    .line 2543
    :cond_9c0
    const/4 v10, 0x3

    if-ne v6, v10, :cond_9c8

    .line 2544
    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 2546
    :cond_9c8
    :goto_9c8
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_9f7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applying bottom outset of "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " with rotation "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", result: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f7

    .line 2530
    .end local v7  # "osf":Landroid/graphics/Rect;
    .end local v28  # "useOutsets":Z
    .end local v29  # "vf":Landroid/graphics/Rect;
    .end local v44  # "of":Landroid/graphics/Rect;
    .local v3, "of":Landroid/graphics/Rect;
    .local v6, "useOutsets":Z
    .restart local v13  # "vf":Landroid/graphics/Rect;
    :cond_9f1
    move-object/from16 v44, v3

    move/from16 v28, v6

    move-object/from16 v29, v13

    .line 2551
    .end local v3  # "of":Landroid/graphics/Rect;
    .end local v6  # "useOutsets":Z
    .end local v13  # "vf":Landroid/graphics/Rect;
    .restart local v28  # "useOutsets":Z
    .restart local v29  # "vf":Landroid/graphics/Rect;
    .restart local v44  # "of":Landroid/graphics/Rect;
    :cond_9f7
    :goto_9f7
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_aae

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compute frame "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": sim=#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " attach="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 2554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v34

    const-string v6, " flags=0x%08x"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pf="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " df="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " of="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cf="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vf="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dcf="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sf="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " osf="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    .line 2560
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2551
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab0

    :cond_aae
    move-object/from16 v6, p1

    .line 2562
    :goto_ab0
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_abc

    .line 2563
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 2566
    :cond_abc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 2569
    const/16 v2, 0x7db

    if-ne v9, v2, :cond_ad2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_ad2

    .line 2570
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_ad2

    .line 2571
    invoke-direct {v8, v6, v15}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 2573
    :cond_ad2
    const/16 v2, 0x7ef

    if-ne v9, v2, :cond_ae5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_ae5

    .line 2574
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_ae5

    .line 2575
    invoke-direct {v8, v6, v15}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 2577
    :cond_ae5
    return-void

    .line 2066
    .end local v0  # "fl":I
    .end local v1  # "cf":Landroid/graphics/Rect;
    .end local v4  # "df":Landroid/graphics/Rect;
    .end local v5  # "pf":Landroid/graphics/Rect;
    .end local v9  # "type":I
    .end local v11  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v12  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v15  # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v16  # "isDefaultDisplay":Z
    .end local v17  # "requestedSysUiFl":I
    .end local v18  # "pfl":I
    .end local v19  # "sim":I
    .end local v20  # "hasNavBar":Z
    .end local v21  # "sysUiFl":I
    .end local v22  # "attachedInParent":Z
    .end local v23  # "sf":Landroid/graphics/Rect;
    .end local v24  # "requestedFullscreen":Z
    .end local v25  # "useAdjust":Z
    .end local v26  # "layoutInScreen":Z
    .end local v27  # "layoutInsetDecor":Z
    .end local v28  # "useOutsets":Z
    .end local v29  # "vf":Landroid/graphics/Rect;
    .end local v30  # "requestedHideNavigation":Z
    .end local v31  # "floatingInScreenWindow":Z
    .end local v33  # "dcf":Landroid/graphics/Rect;
    .end local v36  # "cutoutMode":I
    .end local v40  # "adjust":I
    .end local v44  # "of":Landroid/graphics/Rect;
    .local p3, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_ae6
    move-object/from16 v1, p3

    move-object v8, v12

    move-object v6, v13

    .line 2068
    :goto_aea
    return-void
.end method

.method public navigationBarCanMove()Z
    .registers 2

    .line 891
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .registers 6
    .param p1, "displayWidth"  # I
    .param p2, "displayHeight"  # I
    .param p3, "displayRotation"  # I

    .line 3255
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_11

    if-le p1, p2, :cond_11

    .line 3256
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_d

    .line 3257
    return v1

    .line 3258
    :cond_d
    if-ne p3, v1, :cond_11

    .line 3259
    const/4 v0, 0x2

    return v0

    .line 3262
    :cond_11
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .registers 3

    .line 3056
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$m-UPXUZKrPpeFUjrauzoJMNbYjM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$m-UPXUZKrPpeFUjrauzoJMNbYjM;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3061
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 10

    .line 2911
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 2913
    .local v0, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2914
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 2915
    .local v2, "portraitRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 2916
    .local v3, "upsideDownRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 2917
    .local v4, "landscapeRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    .line 2918
    .local v5, "seascapeRotation":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    .line 2920
    .local v6, "uiMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 2921
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050211

    .line 2923
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 2924
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050210

    .line 2926
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    goto :goto_4e

    .line 2928
    :cond_43
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 2935
    :goto_4e
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x1050188

    .line 2937
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 2938
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x105018a

    .line 2940
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 2943
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x1050185

    .line 2945
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 2946
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x1050186

    .line 2948
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 2951
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x105018d

    .line 2955
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 2974
    const v7, 0x10e0081

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 2975
    const v7, 0x1050099

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    .line 2976
    const v7, 0x111009d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 2977
    const v7, 0x111009a

    .line 2978
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 2981
    const v7, 0x1050187

    .line 2982
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2983
    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2986
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 2987
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .registers 3
    .param p1, "lockTaskState"  # I

    .line 3875
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 3876
    return-void
.end method

.method public onOverlayChangedLw()V
    .registers 2

    .line 2902
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2903
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2904
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 2905
    return-void
.end method

.method onPowerKeyDown(Z)V
    .registers 8
    .param p1, "isScreenOn"  # Z

    .line 3850
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 3851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3852
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 3850
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 3853
    .local v0, "panic":Z
    if-eqz v0, :cond_20

    .line 3854
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3857
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onPowerKeyDown(IZ)V

    .line 3859
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 3862
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 3863
    return-void
.end method

.method public prepareAddWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 9
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 1111
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    if-eqz v0, :cond_15

    .line 1112
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_15
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    const/4 v4, -0x7

    const/4 v5, 0x0

    if-eq v0, v3, :cond_a8

    const/16 v3, 0x7de

    if-eq v0, v3, :cond_a2

    const/16 v3, 0x7e1

    if-eq v0, v3, :cond_a2

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_33

    const/16 v3, 0x7e8

    if-eq v0, v3, :cond_a2

    const/16 v3, 0x7f1

    if-eq v0, v3, :cond_a2

    goto/16 :goto_e4

    .line 1143
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_43

    .line 1147
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1148
    return v4

    .line 1151
    :cond_43
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    .line 1155
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$52bg3qYmo5Unt8Q07j9d6hFQG2o;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$52bg3qYmo5Unt8Q07j9d6hFQG2o;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1168
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x7

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$2VfPB7jRHi3x9grU1pG8ihi_Ga4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$2VfPB7jRHi3x9grU1pG8ihi_Ga4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x9

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LmU9vcWscAr5f4KqPLDYJTaZBVU;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LmU9vcWscAr5f4KqPLDYJTaZBVU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1182
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_e4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATION BAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 1188
    :cond_a2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 1120
    :cond_a8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b8

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1125
    return v4

    .line 1128
    :cond_b8
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1129
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1130
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_cc

    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1133
    :cond_cc
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$sDsfACJdM5Dc_VvZ4b6PthimRJY;

    .local v0, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$sDsfACJdM5Dc_VvZ4b6PthimRJY;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1138
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v5, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1140
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1141
    nop

    .line 1193
    .end local v0  # "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    :cond_e4
    :goto_e4
    return v5
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 1203
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_20

    .line 1204
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_19

    .line 1207
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1209
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_31

    .line 1210
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_31

    .line 1211
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1215
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_37

    .line 1216
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1218
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1219
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .registers 2

    .line 3358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3359
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3360
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 943
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 944
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 945
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 946
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 947
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 933
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 934
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 935
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 936
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 937
    monitor-exit v0

    .line 938
    return-void

    .line 937
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public selectAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .registers 12
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "transit"  # I

    .line 1241
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAnimation in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": transit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne p1, v0, :cond_66

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_38

    move v0, v7

    goto :goto_39

    :cond_38
    move v0, v4

    .line 1245
    .local v0, "isKeyguard":Z
    :goto_39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v8, v3, :cond_4b

    .line 1246
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v8, v3, :cond_4b

    move v8, v7

    goto :goto_4c

    :cond_4b
    move v8, v4

    .line 1247
    .local v8, "expanded":Z
    :goto_4c
    if-nez v0, :cond_65

    if-eqz v8, :cond_51

    goto :goto_65

    .line 1250
    :cond_51
    if-eq p2, v5, :cond_61

    if-ne p2, v6, :cond_56

    goto :goto_61

    .line 1253
    :cond_56
    if-eq p2, v7, :cond_5d

    if-ne p2, v2, :cond_5b

    goto :goto_5d

    .line 1257
    .end local v0  # "isKeyguard":Z
    .end local v8  # "expanded":Z
    :cond_5b
    goto/16 :goto_cb

    .line 1255
    .restart local v0  # "isKeyguard":Z
    .restart local v8  # "expanded":Z
    :cond_5d
    :goto_5d
    const v1, 0x10a00b4

    return v1

    .line 1252
    :cond_61
    :goto_61
    const v1, 0x10a00b5

    return v1

    .line 1248
    :cond_65
    :goto_65
    return v3

    .line 1257
    .end local v0  # "isKeyguard":Z
    .end local v8  # "expanded":Z
    :cond_66
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_bc

    .line 1258
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_73

    .line 1259
    return v4

    .line 1262
    :cond_73
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v0, v6, :cond_96

    .line 1263
    if-eq p2, v5, :cond_84

    if-ne p2, v6, :cond_7c

    goto :goto_84

    .line 1270
    :cond_7c
    if-eq p2, v7, :cond_80

    if-ne p2, v2, :cond_cb

    .line 1272
    :cond_80
    const v0, 0x10a00ad

    return v0

    .line 1265
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1266
    const v0, 0x10a00af

    return v0

    .line 1268
    :cond_92
    const v0, 0x10a00ae

    return v0

    .line 1274
    :cond_96
    if-ne v0, v5, :cond_a9

    .line 1275
    if-eq p2, v5, :cond_a5

    if-ne p2, v6, :cond_9d

    goto :goto_a5

    .line 1278
    :cond_9d
    if-eq p2, v7, :cond_a1

    if-ne p2, v2, :cond_cb

    .line 1280
    :cond_a1
    const v0, 0x10a00b2

    return v0

    .line 1277
    :cond_a5
    :goto_a5
    const v0, 0x10a00b3

    return v0

    .line 1282
    :cond_a9
    if-ne v0, v7, :cond_cb

    .line 1283
    if-eq p2, v5, :cond_b8

    if-ne p2, v6, :cond_b0

    goto :goto_b8

    .line 1286
    :cond_b0
    if-eq p2, v7, :cond_b4

    if-ne p2, v2, :cond_cb

    .line 1288
    :cond_b4
    const v0, 0x10a00b0

    return v0

    .line 1285
    :cond_b8
    :goto_b8
    const v0, 0x10a00b1

    return v0

    .line 1291
    :cond_bc
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v0, v2, :cond_cb

    .line 1292
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->selectDockedDividerAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    .line 1295
    :cond_cb
    :goto_cb
    const/4 v0, 0x5

    if-ne p2, v0, :cond_e1

    .line 1296
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 1297
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_dd

    const-string v0, "**** STARTING EXIT"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_dd
    const v0, 0x10a009a

    return v0

    .line 1300
    :cond_e1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_f2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v0, :cond_f2

    if-ne p2, v7, :cond_f2

    .line 1306
    return v3

    .line 1309
    :cond_f2
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .registers 9
    .param p1, "anim"  # [I

    .line 1352
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

    .line 1353
    .local v0, "forceJumpcut":Z
    :goto_14
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectRotationAnimation mTopFullscreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " rotationAnimation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_33

    .line 1356
    const-string v4, "0"

    goto :goto_3d

    :cond_33
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " forceJumpcut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1353
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_51
    const v3, 0x10a0113

    const v4, 0x10a0112

    if-eqz v0, :cond_5e

    .line 1359
    aput v3, p1, v2

    .line 1360
    aput v4, p1, v1

    .line 1361
    return-void

    .line 1363
    :cond_5e
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_8f

    .line 1364
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v5

    .line 1365
    .local v5, "animationHint":I
    if-gez v5, :cond_74

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v6, :cond_74

    .line 1366
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1368
    :cond_74
    if-eq v5, v1, :cond_86

    const/4 v6, 0x2

    if-eq v5, v6, :cond_81

    const/4 v3, 0x3

    if-eq v5, v3, :cond_86

    .line 1380
    aput v2, p1, v1

    aput v2, p1, v2

    goto :goto_8e

    .line 1375
    :cond_81
    aput v3, p1, v2

    .line 1376
    aput v4, p1, v1

    .line 1377
    goto :goto_8e

    .line 1371
    :cond_86
    const v3, 0x10a0114

    aput v3, p1, v2

    .line 1372
    aput v4, p1, v1

    .line 1373
    nop

    .line 1383
    .end local v5  # "animationHint":I
    :goto_8e
    goto :goto_93

    .line 1384
    :cond_8f
    aput v2, p1, v1

    aput v2, p1, v2

    .line 1386
    :goto_93
    return-void
.end method

.method public setAwake(Z)V
    .registers 2
    .param p1, "awake"  # Z

    .line 903
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 904
    return-void
.end method

.method public setDockMode(I)V
    .registers 2
    .param p1, "dockMode"  # I

    .line 868
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 869
    return-void
.end method

.method setForceShowSystemBars(Z)V
    .registers 2
    .param p1, "forceShowSystemBars"  # Z

    .line 879
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 880
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 2
    .param p1, "forwardedInsets"  # Landroid/graphics/Insets;

    .line 3245
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 3246
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .registers 3
    .param p1, "plugged"  # Z

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 834
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .registers 6
    .param p1, "plugged"  # Z
    .param p2, "force"  # Z

    .line 837
    if-nez p2, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_26

    .line 838
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 843
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 845
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method public setLidState(I)V
    .registers 2
    .param p1, "lidState"  # I

    .line 895
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 896
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 2
    .param p1, "persistentVrModeEnabled"  # Z

    .line 860
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 861
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .registers 4
    .param p1, "pointerLocationEnabled"  # Z

    .line 3975
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3976
    return-void

    .line 3979
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 3980
    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x5

    .line 3979
    :goto_e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3981
    return-void
.end method

.method shouldRotateSeamlessly(Lcom/android/server/wm/DisplayRotation;II)Z
    .registers 8
    .param p1, "displayRotation"  # Lcom/android/server/wm/DisplayRotation;
    .param p2, "oldRotation"  # I
    .param p3, "newRotation"  # I

    .line 3799
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_42

    .line 3800
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v0

    if-ne p3, v0, :cond_e

    goto :goto_42

    .line 3807
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-nez v0, :cond_19

    .line 3808
    return v1

    .line 3811
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3812
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_41

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v2, :cond_22

    goto :goto_41

    .line 3817
    :cond_22
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 3818
    return v1

    .line 3825
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_40

    .line 3826
    const/4 v1, 0x1

    return v1

    .line 3828
    :cond_40
    return v1

    .line 3813
    :cond_41
    :goto_41
    return v1

    .line 3801
    .end local v0  # "w":Lcom/android/server/wm/WindowState;
    :cond_42
    :goto_42
    return v1
.end method

.method public switchUser()V
    .registers 1

    .line 2895
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2896
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 823
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_f

    .line 824
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 826
    :cond_f
    return-void
.end method

.method public takeScreenshot(I)V
    .registers 7
    .param p1, "screenshotType"  # I

    .line 3886
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_24

    .line 3887
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 3888
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1e

    .line 3889
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 3887
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;)V

    .line 3891
    :cond_24
    return-void
.end method

.method public takeScreenshot(II)V
    .registers 9
    .param p1, "screenshotType"  # I
    .param p2, "triggeredGestureType"  # I

    .line 4031
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_29

    .line 4032
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 4033
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

    .line 4034
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 4032
    move v1, p1

    move v2, v4

    move-object v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;I)V

    .line 4036
    :cond_29
    return-void
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .registers 4

    .line 2990
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2991
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_19

    const v1, 0x111009b

    .line 2993
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 2994
    const v1, 0x1110012

    .line 2995
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 2996
    return-void
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .registers 8
    .param p1, "exitAnimId"  # I
    .param p2, "enterAnimId"  # I
    .param p3, "forceDefault"  # Z

    .line 1402
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1a

    .line 1413
    return v0

    .line 1406
    :pswitch_5  #0x10a0113, 0x10a0114
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    .line 1407
    return v1

    .line 1409
    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1410
    .local v2, "anim":[I
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1411
    aget v3, v2, v1

    if-ne p1, v3, :cond_18

    aget v3, v2, v0

    if-ne p2, v3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0

    :pswitch_data_1a
    .packed-switch 0x10a0113
        :pswitch_5  #010a0113
        :pswitch_5  #010a0114
    .end packed-switch
.end method
