.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$LocalService;,
        Lcom/android/server/wm/WindowManagerService$MousePositionTracker;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$AppFreezeListener;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;,
        Lcom/android/server/wm/WindowManagerService$SettingsObserver;,
        Lcom/android/server/wm/WindowManagerService$RotationWatcher;,
        Lcom/android/server/wm/WindowManagerService$UpdateAnimationScaleMode;
    }
.end annotation


# static fields
.field private static final ALWAYS_KEEP_CURRENT:Z = true

.field private static final ANIMATION_COMPLETED_TIMEOUT_MS:I = 0x1388

.field private static final ANIMATION_DURATION_SCALE:I = 0x2

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field private static final DENSITY_OVERRIDE:Ljava/lang/String; = "ro.config.density_override"

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field private static final MIN_GESTURE_EXCLUSION_LIMIT_DP:I = 0xc8

.field static final PROFILE_ORIENTATION:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field static final SEAMLESS_ROTATION_TIMEOUT_DURATION:I = 0x7d0

.field private static final SIZE_OVERRIDE:Ljava/lang/String; = "ro.config.size_override"

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_REMOVING_FOCUS:I = 0x4

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WINDOWS_FREEZING_SCREENS_ACTIVE:I = 0x1

.field static final WINDOWS_FREEZING_SCREENS_NONE:I = 0x0

.field static final WINDOWS_FREEZING_SCREENS_TIMEOUT:I = 0x2

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field static final WINDOW_FREEZE_TIMEOUT_DURATION:I = 0x7d0

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final WINDOW_REPLACEMENT_TIMEOUT_DURATION:I = 0x7d0

.field static final localLOGV:Z

.field static mFocusingWindow:Lcom/android/server/wm/WindowState;

.field private static sInstance:Lcom/android/server/wm/WindowManagerService;

.field static sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;


# instance fields
.field mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field final mActivityManager:Landroid/app/IActivityManager;

.field final mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field final mAllowAnimationsInLowPowerMode:Z

.field final mAllowBootMessages:Z

.field mAllowTheaterModeWakeFromLayout:Z

.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAnimationHandler:Landroid/os/Handler;

.field final mAnimationTransferMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/SurfaceAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsDisabled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field private mAnimatorDurationScaleSetting:F

.field final mAppFreezeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$AppFreezeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAppsFreezingScreen:I

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mBootAnimationStopped:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

.field mClientFreezingScreen:Z

.field final mContext:Landroid/content/Context;

.field mCurrentProfileIds:[I

.field mCurrentUserId:I

.field final mDestroyPreservedSurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisableTransitionAnimation:Z

.field mDisplayEnabled:Z

.field mDisplayFreezeTime:J

.field mDisplayFrozen:Z

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mDisplayReady:Z

.field final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field mDockedStackCreateBounds:Landroid/graphics/Rect;

.field mDockedStackCreateMode:I

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field final mDrawLockTimeoutMillis:J

.field mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

.field private mEnterAnimId:I

.field private mEventDispatchingEnabled:Z

.field private mExitAnimId:I

.field mFocusMayChange:Z

.field mFocusingActivity:Ljava/lang/String;

.field mForceDesktopModeOnExternalDisplays:Z

.field mForceDisplayEnabled:Z

.field final mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForceResizableTasks:Z

.field private mFrozenDisplayId:I

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

.field private mHasHdrSupport:Z

.field final mHasPermanentDpad:Z

.field private mHasWideColorGamutSupport:Z

.field private mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

.field private mHoldingScreenOn:Lcom/android/server/wm/Session;

.field private mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field mInTouchMode:Z

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field final mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

.field mIsPc:Z

.field mIsTouchDevice:Z

.field private final mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

.field mKeyguardGoingAway:Z

.field mKeyguardOrAodShowingOnDefaultDisplay:Z

.field mLastANRState:Ljava/lang/String;

.field mLastDisplayFreezeDuration:I

.field mLastFinishedFreezeSource:Ljava/lang/Object;

.field mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field final mLimitedAlphaCompositing:Z

.field final mLowRamTaskSnapshotsAndRecents:Z

.field final mMaxUiWidth:I

.field mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

.field final mOnlyCore:Z

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field mPerDisplayFocusEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPerf:Landroid/util/BoostFramework;

.field final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field mPointerLocationEnabled:Z

.field mPolicy:Lcom/android/server/policy/WindowManagerPolicy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field final mProcessConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Lcom/android/server/wm/RootWindowContainer;

.field private mRotatingSeamlessly:Z

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$RotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field private final mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field private mSeamlessRotationCount:I

.field final mSessions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

.field mShowAlertWindowNotifications:Z

.field mShowingBootMessages:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSupportsFreeformWindowManagement:Z

.field mSupportsPictureInPicture:Z

.field final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

.field mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

.field mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

.field mSwitchingUser:Z

.field mSystemBooted:Z

.field mSystemGestureExcludedByPreQStickyImmersive:Z

.field mSystemGestureExclusionLimitDp:I

.field mSystemReady:Z

.field final mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field private mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

.field final mTmpFloats:[F

.field final mTmpRect:Landroid/graphics/Rect;

.field final mTmpRect2:Landroid/graphics/Rect;

.field final mTmpRect3:Landroid/graphics/Rect;

.field final mTmpRectF:Landroid/graphics/RectF;

.field final mTmpTransform:Landroid/graphics/Matrix;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

.field mTransactionSequence:I

.field private mTransitionAnimationScaleSetting:F

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mVr2dDisplayId:I

.field mVrModeEnabled:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForDrawnCallback:Ljava/lang/Runnable;

.field final mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

.field mWatermark:Lcom/android/server/wm/Watermark;

.field private mWindowAnimationScaleSetting:F

.field final mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;

.field final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

.field final mWindowReplacementTimeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowTracing:Lcom/android/server/wm/WindowTracing;

.field mWindowsChanged:Z

.field mWindowsFreezingScreen:I

.field final mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 304
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    .line 880
    new-instance v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V
    .registers 34
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "inputManager"  # Lcom/android/server/input/InputManagerService;
    .param p3, "showBootMsgs"  # Z
    .param p4, "onlyCore"  # Z
    .param p5, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;
    .param p6, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p7, "transactionFactory"  # Lcom/android/server/wm/TransactionFactory;

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 403
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    .line 411
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    .line 412
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 414
    new-instance v1, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 425
    new-instance v1, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v1, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 467
    new-array v1, v9, [I

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 504
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 509
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 512
    new-instance v1, Lcom/android/server/wm/WindowHashMap;

    invoke-direct {v1}, Lcom/android/server/wm/WindowHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 538
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/server/wm/WindowState;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 542
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mProcessConfigurations:Landroid/util/SparseArray;

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 582
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 583
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 584
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    .line 585
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    .line 586
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    .line 588
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    .line 592
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 593
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 594
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 595
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 596
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 597
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    .line 600
    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 601
    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 610
    iput v9, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 646
    new-instance v1, Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-direct {v1}, Lcom/android/server/wm/WallpaperVisibilityListeners;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 649
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 650
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 651
    iput v9, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 652
    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 653
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 658
    iput v9, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 660
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 661
    iput v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 678
    new-instance v1, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 685
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 697
    iput v9, v0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 702
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 805
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 806
    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 807
    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 808
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 809
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 847
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 861
    iput-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 871
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 873
    invoke-static {}, Lcom/android/server/wm/HighRefreshRateBlacklist;->create()Lcom/android/server/wm/HighRefreshRateBlacklist;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 883
    sget-object v1, Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    .line 884
    sget-object v1, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 885
    sget-object v1, Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

    .line 924
    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    .line 4439
    new-instance v1, Lcom/android/server/wm/InputManagerCallback;

    invoke-direct {v1, v0}, Lcom/android/server/wm/InputManagerCallback;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    .line 6832
    new-instance v1, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-direct {v1, v8}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>(Lcom/android/server/wm/WindowManagerService$1;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 1019
    const-string v1, "window"

    invoke-static {v1}, Lcom/android/server/utils/DebugOptions;->getInstance(Ljava/lang/String;)Lcom/android/server/utils/DebugOptions;

    move-result-object v11

    .line 1020
    .local v11, "debugOptions":Lcom/android/server/utils/DebugOptions;
    const-class v1, Lcom/android/server/wm/WindowManagerDebugConfig;

    const-string v2, "(DEBUG|SHOW_).*"

    invoke-virtual {v11, v1, v2}, Lcom/android/server/utils/DebugOptions;->addClass(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1021
    const-class v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11, v1}, Lcom/android/server/utils/DebugOptions;->addClass(Ljava/lang/Class;)V

    .line 1022
    invoke-virtual {v11}, Lcom/android/server/utils/DebugOptions;->init()V

    .line 1024
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1025
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1026
    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1027
    iput-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1028
    move/from16 v13, p3

    iput-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 1029
    move/from16 v14, p4

    iput-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 1044
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mLowRamTaskSnapshotsAndRecents:Z

    .line 1048
    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1049
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1050
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 1052
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 1053
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v1}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1054
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1055
    new-instance v1, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1056
    new-instance v1, Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1058
    new-instance v1, Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1059
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1061
    nop

    .line 1062
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 1061
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowTracing;->createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 1064
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1066
    const-string v1, "display"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1068
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;->create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 1070
    const-string v1, "power"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1071
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1073
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_27c

    .line 1074
    new-instance v2, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v2, v0}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1094
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x3

    .line 1095
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 1097
    :cond_27c
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "SCREEN_FROZEN"

    invoke-virtual {v1, v10, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 1099
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1101
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1102
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 1103
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1104
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1105
    const-string v1, "appops"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1106
    new-instance v1, Lcom/android/server/wm/WindowManagerService$7;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v4, v1

    .line 1112
    .local v4, "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v8, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1113
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, v8, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1115
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1116
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v1

    .line 1117
    .local v3, "suspendPackagesFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    new-instance v2, Lcom/android/server/wm/WindowManagerService$8;

    invoke-direct {v2, v0}, Lcom/android/server/wm/WindowManagerService$8;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object/from16 v19, v3

    .end local v3  # "suspendPackagesFilter":Landroid/content/IntentFilter;
    .local v19, "suspendPackagesFilter":Landroid/content/IntentFilter;
    move-object/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4  # "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    .local v16, "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    move-object/from16 v4, v19

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1133
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const-string v3, "window_animation_scale"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 1135
    nop

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 1135
    const-string v3, "transition_animation_scale"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 1140
    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const-string v3, "animator_duration_scale"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    .line 1143
    const-string v2, "force_desktop_mode_on_external_displays"

    invoke-static {v1, v2, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_335

    goto :goto_336

    :cond_335
    move v10, v9

    :goto_336
    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 1146
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1148
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1149
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v2

    invoke-virtual/range {v20 .. v25}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1151
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 1153
    new-instance v3, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-direct {v3, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    .line 1155
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v4, 0x2000000a

    const-string v5, "WindowManager"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1157
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1159
    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-direct {v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/os/PowerManagerInternal;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    .line 1164
    new-instance v3, Lcom/android/server/wm/TaskPositioningController;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1165
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/server/wm/TaskPositioningController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Landroid/app/IActivityTaskManager;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 1166
    new-instance v3, Lcom/android/server/wm/DragDropController;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/server/wm/DragDropController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 1168
    const/16 v3, 0xc8

    .line 1169
    const-string v4, "android:window_manager"

    const-string v5, "system_gesture_exclusion_limit_dp"

    invoke-static {v4, v5, v9}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1168
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    .line 1171
    nop

    .line 1172
    const-string v3, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-static {v4, v3, v9}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 1174
    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v5, Lcom/android/server/wm/-$$Lambda$WindowManagerService$vZ2iP62NKu_V2W-h0-abrxnOgoI;

    invoke-direct {v5, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$vZ2iP62NKu_V2W-h0-abrxnOgoI;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v4, v3, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1191
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$LocalService;

    invoke-direct {v4, v0, v8}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    invoke-static {v3, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1193
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/FlymeWindowManagerService;->main(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/FlymeWindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/FlymeWindowManagerService;->mLocalService:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 1197
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WmsInjector;->initialize(Lcom/android/server/wm/WindowManagerService;)V

    .line 1199
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;
    .param p2, "x2"  # Ljava/io/PrintWriter;
    .param p3, "x3"  # [Ljava/lang/String;
    .param p4, "x4"  # Z

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->onPointerDownOutsideFocusLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateAppOpsState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;Landroid/util/ArraySet;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # Landroid/util/ArraySet;
    .param p2, "x2"  # Z

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # F

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # F

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"  # F

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1
.end method

.method private animationScalesCheck(I)F
    .registers 4
    .param p1, "which"  # I

    .line 3094
    const/high16 v0, -0x40800000  # -1.0f

    .line 3095
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-nez v1, :cond_1e

    .line 3096
    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1f

    .line 3097
    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    goto :goto_1d

    .line 3100
    :cond_15
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_1d

    .line 3099
    :cond_18
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_1d

    .line 3098
    :cond_1b
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3100
    :goto_1d
    goto :goto_1f

    .line 3104
    :cond_1e
    const/4 v0, 0x0

    .line 3106
    :cond_1f
    :goto_1f
    return v0
.end method

.method private applyForcedPropertiesForDefaultDisplay()Z
    .registers 11

    .line 5139
    const/4 v0, 0x0

    .line 5140
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5142
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_size_forced"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5144
    .local v2, "sizeStr":Ljava/lang/String;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_20

    .line 5145
    :cond_19
    const/4 v3, 0x0

    const-string v4, "ro.config.size_override"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5147
    :cond_20
    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_77

    .line 5148
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5149
    .local v6, "pos":I
    if-lez v6, :cond_77

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_77

    .line 5152
    :try_start_39
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5153
    .local v5, "width":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5154
    .local v7, "height":I
    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v8, v5, :cond_53

    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v8, v7, :cond_75

    .line 5156
    :cond_53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FORCED DISPLAY SIZE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v1, v5, v7, v8}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_74} :catch_76

    .line 5159
    const/4 v0, 0x1

    .line 5162
    :cond_75
    goto :goto_77

    .line 5161
    .end local v5  # "width":I
    .end local v7  # "height":I
    :catch_76
    move-exception v5

    .line 5167
    .end local v6  # "pos":I
    :cond_77
    :goto_77
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v5

    .line 5168
    .local v5, "density":I
    if-eqz v5, :cond_86

    iget v6, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_86

    .line 5169
    iput v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5170
    const/4 v0, 0x1

    .line 5174
    :cond_86
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "display_scaling_force"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 5176
    .local v6, "mode":I
    iget-boolean v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_98

    move v4, v8

    :cond_98
    if-eq v7, v4, :cond_a2

    .line 5177
    const-string v4, "FORCED DISPLAY SCALING DISABLED"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
    iput-boolean v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 5179
    const/4 v0, 0x1

    .line 5181
    :cond_a2
    return v0
.end method

.method static boostPriorityForLockedSection()V
    .registers 1

    .line 890
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->boost()V

    .line 891
    return-void
.end method

.method private checkBootAnimationCompleteLocked()Z
    .registers 6

    .line 3423
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_23

    .line 3424
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3425
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3427
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_21

    const-string v0, "checkBootAnimationComplete: Waiting for anim complete"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 3430
    :cond_23
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_2c

    const-string v0, "checkBootAnimationComplete: Animation complete!"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method private checkCallerOwnsDisplay(I)V
    .registers 7
    .param p1, "displayId"  # I

    .line 6919
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 6920
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1b

    .line 6925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6926
    .local v1, "callingUid":I
    invoke-virtual {v0}, Landroid/view/Display;->getOwnerUid()I

    move-result v2

    .line 6927
    .local v2, "displayOwnerUid":I
    if-ne v1, v2, :cond_13

    .line 6930
    return-void

    .line 6928
    :cond_13
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "The caller doesn\'t own the display."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6921
    .end local v1  # "callingUid":I
    .end local v2  # "displayOwnerUid":I
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display for non-existent displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "displayId"  # I

    .line 4414
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_6

    .line 4415
    const/4 v0, 0x0

    return-object v0

    .line 4417
    :cond_6
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4418
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4419
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 4420
    return-object v0
.end method

.method private createSurfaceControl(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 9
    .param p1, "outSurfaceControl"  # Landroid/view/SurfaceControl;
    .param p2, "result"  # I
    .param p3, "win"  # Lcom/android/server/wm/WindowState;
    .param p4, "winAnimator"  # Lcom/android/server/wm/WindowStateAnimator;

    .line 2425
    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_6

    .line 2426
    or-int/lit8 p2, p2, 0x4

    .line 2431
    :cond_6
    const-wide/16 v0, 0x20

    :try_start_8
    const-string v2, "createSurfaceControl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2432
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p4, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_58

    .line 2434
    .local v2, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2435
    nop

    .line 2436
    const-string v0, "WindowManager"

    if-eqz v2, :cond_40

    .line 2437
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowSurfaceController;->getSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2438
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  OUT SURFACE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": copied"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2442
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create surface control for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 2446
    :cond_57
    :goto_57
    return p2

    .line 2434
    .end local v2  # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :catchall_58
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "dip"  # I
    .param p1, "displayMetrics"  # Landroid/util/DisplayMetrics;

    .line 6752
    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 15
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "useProto"  # Z

    .line 6399
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WindowManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6400
    :cond_b
    const/4 v0, 0x0

    .line 6402
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    .line 6403
    .local v1, "opti":I
    :goto_d
    array-length v2, p3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_ba

    .line 6404
    aget-object v2, p3, v1

    .line 6405
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_ba

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ba

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_25

    .line 6406
    goto/16 :goto_ba

    .line 6408
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 6409
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 6410
    const/4 v0, 0x1

    goto/16 :goto_b8

    .line 6411
    :cond_32
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 6412
    const-string v3, "Window manager dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6413
    const-string v3, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6414
    const-string v3, "  cmd may be one of:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6415
    const-string v3, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6416
    const-string v3, "    p[policy]: policy state"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6417
    const-string v3, "    a[animator]: animator state"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6418
    const-string v3, "    s[essions]: active sessions"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6419
    const-string v3, "    surfaces: active surfaces (debugging enabled only)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6420
    const-string v3, "    d[isplays]: active display contents"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6421
    const-string v3, "    t[okens]: token list"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6422
    const-string v3, "    w[indows]: window list"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6423
    const-string v3, "    trace: print trace status and write Winscope trace to file"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6424
    const-string v3, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6425
    const-string v3, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6426
    const-string v3, "    Window hex object identifier, or"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6427
    const-string v3, "    \"all\" for all windows, or"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6428
    const-string v3, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6429
    const-string v3, "    \"visible-apps\" for the visible app windows."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6430
    const-string v3, "  -a: include all available server state."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6431
    const-string v3, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6432
    return-void

    .line 6434
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6436
    .end local v2  # "opt":Ljava/lang/String;
    :goto_b8
    goto/16 :goto_d

    .line 6438
    :cond_ba
    :goto_ba
    if-eqz p4, :cond_d8

    .line 6439
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6440
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_c4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6441
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 6442
    monitor-exit v4
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_d2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6443
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 6444
    return-void

    .line 6442
    :catchall_d2
    move-exception v3

    :try_start_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 6447
    .end local v2  # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_d8
    array-length v2, p3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_26a

    .line 6448
    aget-object v8, p3, v1

    .line 6449
    .local v8, "cmd":Ljava/lang/String;
    const/4 v2, 0x1

    add-int/lit8 v9, v1, 0x1

    .line 6450
    .end local v1  # "opti":I
    .local v9, "opti":I
    const-string v1, "lastanr"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_256

    const-string v1, "l"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    goto/16 :goto_256

    .line 6455
    :cond_f3
    const-string v1, "policy"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_242

    const-string v1, "p"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    goto/16 :goto_242

    .line 6460
    :cond_105
    const-string v1, "animator"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22e

    const-string v1, "a"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    goto/16 :goto_22e

    .line 6465
    :cond_117
    const-string v1, "sessions"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21a

    const-string v1, "s"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    goto/16 :goto_21a

    .line 6470
    :cond_129
    const-string v1, "displays"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_204

    const-string v1, "d"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    goto/16 :goto_204

    .line 6475
    :cond_13b
    const-string v1, "tokens"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f0

    const-string v1, "t"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    goto/16 :goto_1f0

    .line 6480
    :cond_14d
    const-string v1, "windows"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1dc

    const-string v1, "w"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    goto/16 :goto_1dc

    .line 6485
    :cond_15f
    const-string v1, "all"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 6486
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_16a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6487
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6488
    monitor-exit v1
    :try_end_171
    .catchall {:try_start_16a .. :try_end_171} :catchall_175

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6489
    return-void

    .line 6488
    :catchall_175
    move-exception v2

    :try_start_176
    monitor-exit v1
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6490
    :cond_17b
    const-string v1, "containers"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 6491
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_186
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6492
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v4, " "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6493
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6494
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LbJzcX6LZWc_oRhCOhY74zWzL7Y;

    invoke-direct {v4, p2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LbJzcX6LZWc_oRhCOhY74zWzL7Y;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6495
    monitor-exit v1
    :try_end_1a0
    .catchall {:try_start_186 .. :try_end_1a0} :catchall_1a4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6496
    return-void

    .line 6495
    :catchall_1a4
    move-exception v2

    :try_start_1a5
    monitor-exit v1
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_1a4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6497
    :cond_1aa
    const-string v1, "trace"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 6498
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpTraceStatus(Ljava/io/PrintWriter;)V

    .line 6499
    return-void

    .line 6502
    :cond_1b6
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move v6, v9

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_1db

    .line 6503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad window command, or no windows match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6504
    const-string v1, "Use -h for help."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6506
    :cond_1db
    return-void

    .line 6481
    :cond_1dc
    :goto_1dc
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1df
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6482
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6483
    monitor-exit v1
    :try_end_1e6
    .catchall {:try_start_1df .. :try_end_1e6} :catchall_1ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6484
    return-void

    .line 6483
    :catchall_1ea
    move-exception v2

    :try_start_1eb
    monitor-exit v1
    :try_end_1ec
    .catchall {:try_start_1eb .. :try_end_1ec} :catchall_1ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6476
    :cond_1f0
    :goto_1f0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1f3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6477
    invoke-direct {p0, p2, v2}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 6478
    monitor-exit v1
    :try_end_1fa
    .catchall {:try_start_1f3 .. :try_end_1fa} :catchall_1fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6479
    return-void

    .line 6478
    :catchall_1fe
    move-exception v2

    :try_start_1ff
    monitor-exit v1
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_1fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6471
    :cond_204
    :goto_204
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_207
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6472
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6473
    monitor-exit v1
    :try_end_210
    .catchall {:try_start_207 .. :try_end_210} :catchall_214

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6474
    return-void

    .line 6473
    :catchall_214
    move-exception v2

    :try_start_215
    monitor-exit v1
    :try_end_216
    .catchall {:try_start_215 .. :try_end_216} :catchall_214

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6466
    :cond_21a
    :goto_21a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_21d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6467
    invoke-direct {p0, p2, v2}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 6468
    monitor-exit v1
    :try_end_224
    .catchall {:try_start_21d .. :try_end_224} :catchall_228

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6469
    return-void

    .line 6468
    :catchall_228
    move-exception v2

    :try_start_229
    monitor-exit v1
    :try_end_22a
    .catchall {:try_start_229 .. :try_end_22a} :catchall_228

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6461
    :cond_22e
    :goto_22e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_231
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6462
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6463
    monitor-exit v1
    :try_end_238
    .catchall {:try_start_231 .. :try_end_238} :catchall_23c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6464
    return-void

    .line 6463
    :catchall_23c
    move-exception v2

    :try_start_23d
    monitor-exit v1
    :try_end_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_23c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6456
    :cond_242
    :goto_242
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_245
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6457
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6458
    monitor-exit v1
    :try_end_24c
    .catchall {:try_start_245 .. :try_end_24c} :catchall_250

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6459
    return-void

    .line 6458
    :catchall_250
    move-exception v2

    :try_start_251
    monitor-exit v1
    :try_end_252
    .catchall {:try_start_251 .. :try_end_252} :catchall_250

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6451
    :cond_256
    :goto_256
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_259
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6452
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 6453
    monitor-exit v2
    :try_end_260
    .catchall {:try_start_259 .. :try_end_260} :catchall_264

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6454
    return-void

    .line 6453
    :catchall_264
    move-exception v1

    :try_start_265
    monitor-exit v2
    :try_end_266
    .catchall {:try_start_265 .. :try_end_266} :catchall_264

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6510
    .end local v8  # "cmd":Ljava/lang/String;
    .end local v9  # "opti":I
    .restart local v1  # "opti":I
    :cond_26a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_26d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6512
    const-string v4, "-------------------------------------------------------------------------------"

    .line 6514
    .local v4, "separator":Ljava/lang/String;
    if-eqz v0, :cond_27c

    .line 6515
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6517
    :cond_27c
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 6518
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6519
    if-eqz v0, :cond_289

    .line 6520
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6522
    :cond_289
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6523
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6524
    if-eqz v0, :cond_296

    .line 6525
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6527
    :cond_296
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6528
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6529
    if-eqz v0, :cond_2a3

    .line 6530
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6532
    :cond_2a3
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 6533
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6534
    if-eqz v0, :cond_2b0

    .line 6535
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6537
    :cond_2b0
    if-eqz v0, :cond_2b7

    .line 6538
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6540
    :cond_2b7
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6541
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6542
    if-eqz v0, :cond_2c6

    .line 6543
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6545
    :cond_2c6
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 6546
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6547
    if-eqz v0, :cond_2d3

    .line 6548
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6550
    :cond_2d3
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6551
    if-eqz v0, :cond_2dd

    .line 6552
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6554
    :cond_2dd
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpTraceStatus(Ljava/io/PrintWriter;)V

    .line 6555
    .end local v4  # "separator":Ljava/lang/String;
    monitor-exit v2
    :try_end_2e1
    .catchall {:try_start_26d .. :try_end_2e1} :catchall_2e5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6556
    return-void

    .line 6555
    :catchall_2e5
    move-exception v3

    :try_start_2e6
    monitor-exit v2
    :try_end_2e7
    .catchall {:try_start_2e6 .. :try_end_2e7} :catchall_2e5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "attachedWindow"  # Lcom/android/server/wm/WindowState;

    .line 1707
    const/4 v0, 0x1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eqz p3, :cond_13

    .line 1708
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_11

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    if-lt v3, v1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    return v0

    .line 1713
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1715
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1714
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1716
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_2b

    .line 1720
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v1, :cond_2a

    .line 1721
    return v0

    .line 1725
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    goto :goto_4b

    .line 1717
    .restart local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "callingUid":I
    .end local p3  # "attachedWindow":Lcom/android/server/wm/WindowState;
    throw v0
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_4a} :catch_4a

    .line 1723
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "callingUid":I
    .restart local p3  # "attachedWindow":Lcom/android/server/wm/WindowState;
    :catch_4a
    move-exception v0

    .line 1727
    :goto_4b
    return v2
.end method

.method private dumpAnimatorFrameinfo(Ljava/io/PrintWriter;[Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 6075
    if-eqz p2, :cond_2e

    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_2e

    .line 6076
    aget-object v0, p2, v1

    const-string v2, "frameinfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    aget-object v0, p2, v1

    const-string v1, "f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6077
    :cond_1a
    invoke-static {p1}, Lcom/android/server/wm/AnimatorFrameInfo;->dumpFrameInfoLocked(Ljava/io/PrintWriter;)V

    .line 6078
    array-length v0, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_2c

    .line 6079
    aget-object v0, p2, v1

    const-string v1, "--enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->setRecordFrameInfoEnable(Z)V

    .line 6081
    :cond_2c
    const/4 v0, 0x1

    return v0

    .line 6084
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 6064
    const-string v0, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6067
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorFrameinfo(Ljava/io/PrintWriter;[Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 6069
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v1, "    "

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 6070
    return-void
.end method

.method private dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 6331
    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6332
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 6333
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 6335
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6337
    :goto_12
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 6059
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6060
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6061
    return-void
.end method

.method private dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z

    .line 6099
    const-string v0, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 6101
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 6102
    .local v1, "s":Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 6103
    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6100
    .end local v1  # "s":Lcom/android/server/wm/Session;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6105
    .end local v0  # "i":I
    :cond_2b
    return-void
.end method

.method private dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z

    .line 6089
    const-string v0, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6090
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 6091
    return-void
.end method

.method private dumpTraceStatus(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 6094
    const-string v0, "WINDOW MANAGER TRACE (dumpsys window trace)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowTracing;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6096
    return-void
.end method

.method private dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 13
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z

    .line 6298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6299
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v1, "apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_35

    const-string v1, "visible"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "visible-apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_35

    .line 6315
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6316
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6317
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5d

    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6300
    :cond_35
    :goto_35
    const-string v1, "apps"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6301
    .local v1, "appsOnly":Z
    const-string v3, "visible"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 6302
    .local v3, "visibleOnly":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6303
    if-eqz v1, :cond_4e

    .line 6304
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6307
    :cond_4e
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$WindowManagerService$C4RecYWtrllidEGWyvVvRsY6lno;

    invoke-direct {v6, v3, v1, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$C4RecYWtrllidEGWyvVvRsY6lno;-><init>(ZZLjava/util/ArrayList;)V

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6313
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6314
    .end local v1  # "appsOnly":Z
    .end local v3  # "visibleOnly":Z
    nop

    .line 6320
    :goto_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_65

    .line 6321
    const/4 v1, 0x0

    return v1

    .line 6324
    :cond_65
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6325
    invoke-direct {p0, p1, p5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6326
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6327
    return v2

    .line 6326
    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6313
    .restart local v1  # "appsOnly":Z
    .restart local v3  # "visibleOnly":Z
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 6136
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6138
    return-void
.end method

.method private dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 6142
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6144
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ":"

    const-string v2, "    "

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-nez v0, :cond_4a

    .line 6145
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6146
    const-string v0, "  Hiding System Alert Windows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6147
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_23
    if-ltz v0, :cond_4a

    .line 6148
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6149
    .local v5, "w":Lcom/android/server/wm/WindowState;
    const-string v6, "  #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6150
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6151
    if-eqz p2, :cond_44

    .line 6152
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6153
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_47

    .line 6155
    :cond_44
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6147
    .end local v5  # "w":Lcom/android/server/wm/WindowState;
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 6159
    .end local v0  # "i":I
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 6160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6161
    const-string v0, "  Remove pending for:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6162
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0  # "i":I
    :goto_61
    if-ltz v0, :cond_90

    .line 6163
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6164
    .restart local v5  # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_73

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 6165
    :cond_73
    const-string v6, "  Remove #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6166
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6167
    if-eqz p2, :cond_8a

    .line 6168
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6169
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_8d

    .line 6171
    :cond_8a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6162
    .end local v5  # "w":Lcom/android/server/wm/WindowState;
    :cond_8d
    :goto_8d
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    .line 6176
    .end local v0  # "i":I
    :cond_90
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v0, :cond_d0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 6177
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6178
    const-string v0, "  Windows force removing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6179
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0  # "i":I
    :goto_a9
    if-ltz v0, :cond_d0

    .line 6180
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6181
    .restart local v5  # "w":Lcom/android/server/wm/WindowState;
    const-string v6, "  Removing #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6182
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6183
    if-eqz p2, :cond_ca

    .line 6184
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6185
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_cd

    .line 6187
    :cond_ca
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6179
    .end local v5  # "w":Lcom/android/server/wm/WindowState;
    :goto_cd
    add-int/lit8 v0, v0, -0x1

    goto :goto_a9

    .line 6191
    .end local v0  # "i":I
    :cond_d0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_116

    .line 6192
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6193
    const-string v0, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6194
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0  # "i":I
    :goto_e7
    if-ltz v0, :cond_116

    .line 6195
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6196
    .restart local v5  # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_f9

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    .line 6197
    :cond_f9
    const-string v6, "  Destroy #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6198
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6199
    if-eqz p2, :cond_110

    .line 6200
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6201
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_113

    .line 6203
    :cond_110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6194
    .end local v5  # "w":Lcom/android/server/wm/WindowState;
    :cond_113
    :goto_113
    add-int/lit8 v0, v0, -0x1

    goto :goto_e7

    .line 6208
    .end local v0  # "i":I
    :cond_116
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15c

    .line 6209
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6210
    const-string v0, "  Windows waiting to resize:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6211
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0  # "i":I
    :goto_12d
    if-ltz v0, :cond_15c

    .line 6212
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6213
    .restart local v5  # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_13f

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 6214
    :cond_13f
    const-string v6, "  Resizing #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6215
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6216
    if-eqz p2, :cond_156

    .line 6217
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6218
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_159

    .line 6220
    :cond_156
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6211
    .end local v5  # "w":Lcom/android/server/wm/WindowState;
    :cond_159
    :goto_159
    add-int/lit8 v0, v0, -0x1

    goto :goto_12d

    .line 6225
    .end local v0  # "i":I
    :cond_15c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18e

    .line 6226
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6227
    const-string v0, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6228
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0  # "i":I
    :goto_173
    if-ltz v0, :cond_18e

    .line 6229
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6230
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const-string v4, "  Waiting #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6228
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_173

    .line 6233
    .end local v0  # "i":I
    :cond_18e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6234
    const-string v0, "  mGlobalConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6235
    const-string v0, "  mHasPermanentDpad="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6236
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V

    .line 6237
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$pgbw_FPqeLJMP83kqiaVcOei-Ds;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$pgbw_FPqeLJMP83kqiaVcOei-Ds;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 6244
    const-string v0, "  mInTouchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6245
    const-string v0, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6246
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6247
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v0, :cond_1db

    .line 6248
    const-string v0, " due to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6249
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6251
    :cond_1db
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6252
    const-string v0, "  mLastWakeLockHoldingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6253
    const-string v0, " mLastWakeLockObscuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6254
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6256
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InputManagerCallback;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6257
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6259
    if-eqz p2, :cond_2d3

    .line 6260
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6261
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_213

    .line 6262
    const-string v3, "  mInputMethodWindow="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6264
    :cond_213
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6265
    const-string v3, "  mSystemBooted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6266
    const-string v3, " mDisplayEnabled="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6268
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V

    .line 6270
    const-string v3, "  mTransactionSequence="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 6271
    const-string v3, "  mDisplayFrozen="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6272
    const-string v3, " windows="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 6273
    const-string v3, " client="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6274
    const-string v3, " apps="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 6275
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 6276
    .local v3, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const-string v4, "  mRotation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 6277
    const-string v4, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6278
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getLastWindowForcedOrientation()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 6279
    const-string v4, " mLastOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6280
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 6281
    const-string v4, " waitingForConfig="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6282
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 6284
    const-string v4, "  Animation settings: disabled="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 6285
    const-string v4, " window="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 6286
    const-string v4, " transition="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 6287
    const-string v4, " animator="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 6288
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v4, :cond_2d0

    .line 6289
    const-string v4, "  mRecentsAnimationController="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6290
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/RecentsAnimationController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6292
    :cond_2d0
    invoke-static {v1, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6294
    .end local v0  # "imeWindow":Lcom/android/server/wm/WindowState;
    .end local v3  # "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2d3
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .registers 2
    .param p0, "windowType"  # I

    .line 1241
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_e

    .line 1247
    const/4 v0, 0x0

    return v0

    .line 1245
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "hashCode"  # I

    .line 4369
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 4371
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    .line 4374
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4375
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tOeHm8ndyhv8iLNQ_GHuZ7HhJdw;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tOeHm8ndyhv8iLNQ_GHuZ7HhJdw;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4376
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static fixScale(F)F
    .registers 2
    .param p0, "scale"  # F

    .line 3041
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    const/4 p0, 0x0

    goto :goto_f

    .line 3042
    :cond_7
    const/high16 v0, 0x41a00000  # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_f

    const/high16 p0, 0x41a00000  # 20.0f

    .line 3043
    :cond_f
    :goto_f
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "token"  # Landroid/os/IBinder;

    .line 1682
    if-eqz p2, :cond_f

    .line 1683
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1684
    .local v0, "wToken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_f

    .line 1685
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    return-object v1

    .line 1689
    .end local v0  # "wToken":Lcom/android/server/wm/WindowToken;
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1693
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_26

    .line 1694
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1696
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_26

    .line 1697
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1701
    .end local v1  # "display":Landroid/view/Display;
    :cond_26
    return-object v0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 4457
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4458
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4459
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 4464
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getForcedDisplayDensityForUserLocked(I)I
    .registers 5
    .param p1, "userId"  # I

    .line 5331
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5333
    .local v0, "densityStr":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 5334
    :cond_14
    const/4 v1, 0x0

    const-string v2, "ro.config.density_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5336
    :cond_1b
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 5338
    :try_start_23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_27} :catch_28

    return v1

    .line 5339
    :catch_28
    move-exception v1

    .line 5342
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 975
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 7
    .param p0, "tokens"  # [Ljava/lang/String;
    .param p1, "index"  # I
    .param p2, "defUnits"  # I
    .param p3, "defDps"  # I
    .param p4, "dm"  # Landroid/util/DisplayMetrics;

    .line 5728
    array-length v0, p0

    if-ge p1, v0, :cond_13

    .line 5729
    aget-object v0, p0, p1

    .line 5730
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 5732
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    .line 5733
    .local v1, "val":I
    return v1

    .line 5734
    .end local v1  # "val":I
    :catch_12
    move-exception v1

    .line 5738
    .end local v0  # "str":Ljava/lang/String;
    :cond_13
    if-nez p2, :cond_16

    .line 5739
    return p3

    .line 5741
    :cond_16
    int-to-float v0, p3

    invoke-static {p2, v0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 5742
    .local v0, "val":I
    return v0
.end method

.method private handleDisplayFocusChange(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "window"  # Lcom/android/server/wm/WindowState;

    .line 7948
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7949
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_7

    .line 7950
    return-void

    .line 7953
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-nez v1, :cond_e

    .line 7956
    return-void

    .line 7959
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 7960
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq v2, v0, :cond_28

    .line 7961
    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7970
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/server/wm/ActivityDisplay;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 7973
    :cond_28
    return-void
.end method

.method private handleTaskFocusChange(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 7929
    if-nez p1, :cond_3

    .line 7930
    return-void

    .line 7933
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 7937
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 7938
    return-void

    .line 7942
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 7944
    goto :goto_15

    .line 7943
    :catch_14
    move-exception v1

    .line 7945
    :goto_15
    return-void
.end method

.method private hasStatusBarPermission(II)Z
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 2020
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

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

.method private initPolicy()V
    .registers 5

    .line 1000
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1007
    return-void
.end method

.method private isSystemSecure()Z
    .registers 3

    .line 4081
    const-string v0, "1"

    const-string v1, "ro.secure"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4082
    const-string v0, "0"

    const-string v1, "ro.debuggable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 4081
    :goto_1f
    return v0
.end method

.method static synthetic lambda$doDump$9(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 6494
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dumpWindows$8(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "visibleOnly"  # Z
    .param p1, "appsOnly"  # Z
    .param p2, "windows"  # Ljava/util/ArrayList;
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 6308
    if-eqz p0, :cond_a

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    if-eqz p1, :cond_10

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    .line 6310
    :cond_10
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6312
    :cond_13
    return-void
.end method

.method static synthetic lambda$dumpWindowsNoHeaderLocked$7(Ljava/io/PrintWriter;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 6238
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 6239
    .local v0, "inputMethodTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_18

    .line 6240
    const-string v1, "  mInputMethodTarget in display# "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6241
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6243
    :cond_18
    return-void
.end method

.method static synthetic lambda$findWindow$5(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "hashCode"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 4375
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V
    .registers 16
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "im"  # Lcom/android/server/input/InputManagerService;
    .param p2, "showBootMsgs"  # Z
    .param p3, "onlyCore"  # Z
    .param p4, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;
    .param p5, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p6, "transactionFactory"  # Lcom/android/server/wm/TransactionFactory;

    .line 994
    new-instance v8, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V

    sput-object v8, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic lambda$onOverlayChanged$10(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p0, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 6574
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->onOverlayChangedLw()V

    .line 6575
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6576
    return-void
.end method

.method static synthetic lambda$requestAssistScreenshot$3(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p1, "bm"  # Landroid/graphics/Bitmap;

    .line 3668
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 3670
    goto :goto_5

    .line 3669
    :catch_4
    move-exception v0

    .line 3671
    :goto_5
    return-void
.end method

.method static synthetic lambda$setCurrentUser$2(ILcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p0, "newUserId"  # I
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 3258
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    return-void
.end method

.method static synthetic lambda$syncInputTransactions$12(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p0, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 7884
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsImmediately()V

    return-void
.end method

.method static synthetic lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$11(ZLcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "hideSystemAlertWindows"  # Z
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 7785
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 7786
    return-void
.end method

.method static synthetic lambda$viewServerListWindows$4(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "windows"  # Ljava/util/ArrayList;
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 4147
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4148
    return-void
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "s"  # Landroid/view/SurfaceControl;
    .param p1, "title"  # Ljava/lang/String;
    .param p2, "msg"  # Ljava/lang/String;

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1909
    .local v0, "str":Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    return-void
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "w"  # Lcom/android/server/wm/WindowState;
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "withStackTrace"  # Z

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1900
    .local v0, "str":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-eqz p2, :cond_21

    .line 1901
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 1903
    :cond_21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :goto_24
    return-void
.end method

.method static logWithStack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"  # Ljava/lang/String;
    .param p1, "s"  # Ljava/lang/String;

    .line 1913
    const/4 v0, 0x0

    .line 1914
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_e

    .line 1915
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    move-object v0, v1

    .line 1916
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1918
    :cond_e
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1919
    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;
    .registers 13
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "im"  # Lcom/android/server/input/InputManagerService;
    .param p2, "showBootMsgs"  # Z
    .param p3, "onlyCore"  # Z
    .param p4, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;
    .param p5, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 981
    sget-object v6, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    return-object v0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)Lcom/android/server/wm/WindowManagerService;
    .registers 17
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "im"  # Lcom/android/server/input/InputManagerService;
    .param p2, "showBootMsgs"  # Z
    .param p3, "onlyCore"  # Z
    .param p4, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;
    .param p5, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p6, "transactionFactory"  # Lcom/android/server/wm/TransactionFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 993
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 996
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private notifyFocusChanged()V
    .registers 5

    .line 4355
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4356
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4357
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4359
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4360
    .local v1, "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    .line 4361
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4362
    array-length v0, v1

    .line 4363
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v0, :cond_34

    .line 4364
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 4363
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 4366
    .end local v2  # "i":I
    :cond_34
    return-void

    .line 4361
    .end local v0  # "N":I
    .end local v1  # "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyWindowsChanged()V
    .registers 5

    .line 4340
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4341
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4342
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4344
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4345
    .local v1, "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    .line 4346
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4347
    array-length v0, v1

    .line 4348
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v0, :cond_34

    .line 4349
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 4348
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 4351
    .end local v2  # "i":I
    :cond_34
    return-void

    .line 4346
    .end local v0  # "N":I
    .end local v1  # "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private onPointerDownOutsideFocusLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "touchedToken"  # Landroid/os/IBinder;

    .line 7914
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7915
    .local v0, "touchedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1f

    .line 7920
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->handleTaskFocusChange(Lcom/android/server/wm/Task;)V

    .line 7921
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->handleDisplayFocusChange(Lcom/android/server/wm/WindowState;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    .line 7924
    goto :goto_1e

    .line 7922
    :catch_1a
    move-exception v1

    .line 7923
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7926
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_1e
    return-void

    .line 7916
    :cond_1f
    :goto_1f
    return-void
.end method

.method private performEnableScreen()V
    .registers 9

    .line 3349
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3350
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_55

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performEnableScreen: mDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mForceDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mShowingBootMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSystemBooted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mOnlyCore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    .line 3350
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3356
    :cond_55
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_5e

    .line 3357
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3359
    :cond_5e
    :try_start_5e
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_6b

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_6b

    .line 3360
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3363
    :cond_6b
    :try_start_6b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->canDismissBootAnimation()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 3364
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3368
    :cond_7c
    :try_start_7c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_8f

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->checkWaitingForWindows()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 3371
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3374
    :cond_8f
    :try_start_8f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_a5

    .line 3375
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3379
    const-string v1, "service.bootanim.exit"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 3383
    :cond_a5
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_bf

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 3384
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_ba

    const-string v1, "WindowManager"

    const-string v2, "performEnableScreen: Waiting for anim complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_8f .. :try_end_bb} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3389
    :cond_bf
    :try_start_bf
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3390
    .local v1, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_de

    .line 3391
    const-string v6, "WindowManager"

    const-string v7, "******* TELLING SURFACE FLINGER WE ARE BOOTED!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 3393
    .local v6, "data":Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3394
    const/4 v7, 0x0

    invoke-interface {v1, v4, v6, v7, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3396
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_de} :catch_df
    .catchall {:try_start_bf .. :try_end_de} :catchall_121

    .line 3400
    .end local v1  # "surfaceFlinger":Landroid/os/IBinder;
    .end local v6  # "data":Landroid/os/Parcel;
    :cond_de
    goto :goto_e7

    .line 3398
    :catch_df
    move-exception v1

    .line 3399
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_e0
    const-string v6, "WindowManager"

    const-string v7, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_e7
    const/16 v1, 0x791f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3403
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 3404
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 3405
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v1, :cond_ff

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_106

    :cond_ff
    const-string v1, "WindowManager"

    const-string v2, "******************** ENABLING SCREEN!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    :cond_106
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputManagerCallback;->setEventDispatchingLw(Z)V

    .line 3409
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_e0 .. :try_end_10e} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3412
    :try_start_111
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->bootAnimationComplete()V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_116} :catch_117

    .line 3414
    goto :goto_118

    .line 3413
    :catch_117
    move-exception v0

    .line 3416
    :goto_118
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 3419
    invoke-direct {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3420
    return-void

    .line 3409
    :catchall_121
    move-exception v1

    :try_start_122
    monitor-exit v0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "atoken"  # Lcom/android/server/wm/AppWindowToken;

    .line 1761
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1762
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1763
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1764
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1766
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1768
    :cond_22
    return-void
.end method

.method private prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 11
    .param p1, "atoken"  # Lcom/android/server/wm/AppWindowToken;

    .line 1734
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1735
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1736
    .local v0, "replacedWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1739
    return v1

    .line 1743
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    .line 1746
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1747
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1748
    const/16 v4, 0x12

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1750
    iget-object v1, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1751
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1750
    invoke-virtual {v1, v4, v6, v7, v8}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1752
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1753
    return v5
.end method

.method private static queryHdrSupport()Z
    .registers 3

    .line 4593
    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    .line 4594
    .local v0, "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v1

    .line 4595
    .local v1, "hasHdr":Landroid/hardware/configstore/V1_0/OptionalBool;
    if-eqz v1, :cond_d

    .line 4596
    iget-boolean v2, v1, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v2

    .line 4600
    .end local v0  # "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    .end local v1  # "hasHdr":Landroid/hardware/configstore/V1_0/OptionalBool;
    :cond_d
    goto :goto_f

    .line 4598
    :catch_e
    move-exception v0

    .line 4601
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private static queryWideColorGamutSupport()Z
    .registers 3

    .line 4580
    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    .line 4581
    .local v0, "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v1

    .line 4582
    .local v1, "hasWideColor":Landroid/hardware/configstore/V1_0/OptionalBool;
    if-eqz v1, :cond_d

    .line 4583
    iget-boolean v2, v1, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v2

    .line 4587
    .end local v0  # "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    .end local v1  # "hasWideColor":Landroid/hardware/configstore/V1_0/OptionalBool;
    :cond_d
    goto :goto_f

    .line 4585
    :catch_e
    move-exception v0

    .line 4588
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method static resetPriorityAfterLockedSection()V
    .registers 1

    .line 894
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->reset()V

    .line 895
    return-void
.end method

.method private setAnimatorDurationScale(F)V
    .registers 2
    .param p1, "scale"  # F

    .line 3089
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3090
    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 3091
    return-void
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .registers 13
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "left"  # I
    .param p3, "top"  # I
    .param p4, "right"  # I
    .param p5, "bottom"  # I

    .line 5389
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 5390
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    iput p2, v6, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 5391
    iput p3, v6, Landroid/view/DisplayInfo;->overscanTop:I

    .line 5392
    iput p4, v6, Landroid/view/DisplayInfo;->overscanRight:I

    .line 5393
    iput p5, v6, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 5395
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayWindowSettings;->setOverscanLocked(Landroid/view/DisplayInfo;IIII)V

    .line 5397
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5398
    return-void
.end method

.method private setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "isOpaque"  # Z

    .line 2713
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 2714
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_21

    .line 2715
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2716
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_f

    .line 2717
    return-void

    .line 2719
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr p2, v2

    .line 2720
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2722
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    :cond_21
    return-void
.end method

.method private showStrictModeViolation(II)V
    .registers 8
    .param p1, "arg"  # I
    .param p2, "pid"  # I

    .line 3591
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 3592
    .local v0, "on":Z
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3595
    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->canShowStrictModeViolation(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 3596
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3599
    :cond_1a
    :try_start_1a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v2, :cond_25

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION showStrictModeViolation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_25
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_5f

    .line 3606
    :try_start_28
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v2, :cond_37

    .line 3607
    new-instance v2, Lcom/android/server/wm/StrictModeFlash;

    .line 3608
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wm/StrictModeFlash;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 3610
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_4f

    .line 3612
    :try_start_3c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 3613
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v2, :cond_4a

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION showStrictModeViolation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3617
    return-void

    .line 3612
    :catchall_4f
    move-exception v2

    :try_start_50
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 3613
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v3, :cond_5e

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION showStrictModeViolation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0  # "on":Z
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "arg":I
    .end local p2  # "pid":I
    :cond_5e
    throw v2

    .line 3616
    .restart local v0  # "on":Z
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "arg":I
    .restart local p2  # "pid":I
    :catchall_5f
    move-exception v2

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;Z)Z
    .registers 9
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"  # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "focusMayChange"  # Z

    .line 2377
    const/4 v0, 0x2

    .line 2378
    .local v0, "transit":I
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 2379
    const/4 v0, 0x5

    .line 2381
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2382
    const/4 p3, 0x1

    .line 2383
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_53

    .line 2384
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2387
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_53

    .line 2388
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2392
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_53

    .line 2394
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2395
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_3f

    .line 2396
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2398
    :cond_3f
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_48

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    goto :goto_49

    :cond_48
    move v4, v3

    .line 2402
    .local v4, "stopped":Z
    :goto_49
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2403
    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    .line 2405
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onWindowRemove(Lcom/android/server/wm/WindowState;)V

    .line 2408
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4  # "stopped":Z
    :goto_53
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_5a

    .line 2409
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2416
    :cond_5a
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2417
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2418
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2420
    return p3
.end method

.method private updateAppOpsState()V
    .registers 3

    .line 1893
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1894
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->updateAppOpsState()V

    .line 1895
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1896
    return-void

    .line 1895
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateCircularDisplayMaskIfNeeded()V
    .registers 6

    .line 3488
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3489
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3492
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3493
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3494
    .local v1, "currentUserId":I
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3498
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3500
    .local v0, "inversionState":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    .line 3501
    .local v2, "showMask":I
    :goto_3d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3502
    .local v3, "m":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 3503
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_53

    .line 3494
    .end local v0  # "inversionState":I
    .end local v1  # "currentUserId":I
    .end local v2  # "showMask":I
    .end local v3  # "m":Landroid/os/Message;
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3505
    :cond_53
    :goto_53
    return-void
.end method

.method private updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "suspended"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1887
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1888
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    .line 1889
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1890
    return-void

    .line 1889
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateResourceConfiguration(IIII)V
    .registers 10
    .param p1, "displayId"  # I
    .param p2, "density"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 5253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForcedDisplay and updateResourceConfiguration, density = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5254
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5255
    .local v0, "mTempResourceConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 5256
    .local v2, "mTempMetrics":Landroid/util/DisplayMetrics;
    iput p2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 5257
    mul-int/lit16 v3, p3, 0xa0

    div-int/2addr v3, p2

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 5258
    mul-int/lit16 v3, p3, 0xa0

    div-int/2addr v3, p2

    iput v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5259
    int-to-float v3, p2

    const/high16 v4, 0x43200000  # 160.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 5260
    iput p2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5261
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 5262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setForcedDisplay and updateResourceConfiguration, mTempResourceConfiguration is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setForcedDisplay and updateResourceConfiguration, mTempMetrics is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    return-void
.end method

.method private updateRotationUnchecked(ZZ)V
    .registers 13
    .param p1, "alwaysSendConfiguration"  # Z
    .param p2, "forceRelayout"  # Z

    .line 3814
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRotationUnchecked: alwaysSendConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " forceRelayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    :cond_22
    const-wide/16 v0, 0x20

    const-string v2, "updateRotation"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3823
    .local v2, "origId":J
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_88

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3824
    const/4 v5, 0x0

    .line 3825
    .local v5, "layoutNeeded":Z
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v6, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    .line 3826
    .local v6, "displayCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3d
    if-ge v7, v6, :cond_67

    .line 3827
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v8, v8, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 3828
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v9, "updateRotation: display"

    invoke-static {v0, v1, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3829
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v9

    .line 3830
    .local v9, "rotationChanged":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3832
    if-eqz v9, :cond_59

    if-eqz p2, :cond_5d

    .line 3833
    :cond_59
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3834
    const/4 v5, 0x1

    .line 3836
    :cond_5d
    if-nez v9, :cond_61

    if-eqz p1, :cond_64

    .line 3837
    :cond_61
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 3826
    .end local v8  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9  # "rotationChanged":Z
    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 3841
    .end local v7  # "i":I
    :cond_67
    if-eqz v5, :cond_76

    .line 3842
    const-string v7, "updateRotation: performSurfacePlacement"

    invoke-static {v0, v1, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3844
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3845
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3847
    .end local v5  # "layoutNeeded":Z
    .end local v6  # "displayCount":I
    :cond_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_30 .. :try_end_77} :catchall_82

    :try_start_77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_88

    .line 3849
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3851
    nop

    .line 3852
    return-void

    .line 3847
    :catchall_82
    move-exception v5

    :try_start_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    :try_start_84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "alwaysSendConfiguration":Z
    .end local p2  # "forceRelayout":Z
    throw v5
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_88

    .line 3849
    .restart local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "alwaysSendConfiguration":Z
    .restart local p2  # "forceRelayout":Z
    :catchall_88
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method private waitForAnimationsToComplete()V
    .registers 8

    .line 7890
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7891
    const-wide/16 v1, 0x1388

    .line 7892
    .local v1, "timeoutRemaining":J
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isSelfOrChildAnimating()Z

    move-result v3

    if-eqz v3, :cond_28

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_28

    .line 7893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3c

    .line 7895
    .local v3, "startTime":J
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_3c

    .line 7897
    goto :goto_21

    .line 7896
    :catch_20
    move-exception v5

    .line 7898
    :goto_21
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 7899
    .end local v3  # "startTime":J
    goto :goto_8

    .line 7901
    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isSelfOrChildAnimating()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 7902
    const-string v3, "WindowManager"

    const-string v4, "Timed out waiting for animations to complete."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7904
    .end local v1  # "timeoutRemaining":J
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7905
    return-void

    .line 7904
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I
    .registers 57
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;
    .param p3, "seq"  # I
    .param p4, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p5, "viewVisibility"  # I
    .param p6, "displayId"  # I
    .param p7, "outFrame"  # Landroid/graphics/Rect;
    .param p8, "outContentInsets"  # Landroid/graphics/Rect;
    .param p9, "outStableInsets"  # Landroid/graphics/Rect;
    .param p10, "outOutsets"  # Landroid/graphics/Rect;
    .param p11, "outDisplayCutout"  # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p12, "outInputChannel"  # Landroid/view/InputChannel;
    .param p13, "outInsetsState"  # Landroid/view/InsetsState;

    .line 1255
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v12, p6

    move-object/from16 v11, p12

    const/4 v10, 0x1

    new-array v9, v10, [I

    .line 1256
    .local v9, "appOp":[I
    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v15, v9}, Lcom/android/server/policy/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v16

    .line 1257
    .local v16, "res":I
    if-eqz v16, :cond_16

    .line 1258
    return v16

    .line 1261
    :cond_16
    const/16 v17, 0x0

    .line 1262
    .local v17, "reportNewConfig":Z
    const/4 v1, 0x0

    .line 1264
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1265
    .local v7, "callingUid":I
    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1267
    .local v6, "type":I
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1268
    iget-boolean v2, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_938

    .line 1272
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-direct {v13, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_94f

    move-object v4, v2

    .line 1274
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v18, -0x9

    if-nez v4, :cond_64

    .line 1275
    :try_start_34
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1656
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_54
    move-exception v0

    move-object/from16 v4, p13

    move-object v10, v1

    move-object/from16 v32, v5

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    move v2, v12

    move-object v1, v0

    goto/16 :goto_95d

    .line 1279
    .restart local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_64
    :try_start_64
    iget v2, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_94f

    if-nez v2, :cond_8c

    .line 1280
    :try_start_6c
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1285
    :cond_8c
    :try_start_8c
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_94f

    const/16 v19, -0x5

    if-eqz v2, :cond_ce

    .line 1286
    :try_start_9a
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_bc

    move-object/from16 v8, p2

    :try_start_a8
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is already added"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    monitor-exit v5
    :try_end_b8
    .catchall {:try_start_a8 .. :try_end_b8} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    .line 1656
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_bc
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v4, p13

    move-object v10, v1

    move-object/from16 v32, v5

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    move v2, v12

    move-object v1, v0

    goto/16 :goto_95d

    .line 1290
    .restart local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_ce
    move-object/from16 v8, p2

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-lt v6, v2, :cond_139

    const/16 v10, 0x7cf

    if-gt v6, v10, :cond_139

    .line 1291
    const/4 v10, 0x0

    :try_start_da
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v13, v10, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object v1, v2

    .line 1292
    if-nez v1, :cond_106

    .line 1293
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add window with token that is not a window: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v2, -0x2

    monitor-exit v5
    :try_end_102
    .catchall {:try_start_da .. :try_end_102} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1297
    :cond_106
    :try_start_106
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3e8

    if-lt v2, v10, :cond_139

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7cf

    if-gt v2, v10, :cond_139

    .line 1299
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v2, -0x2

    monitor-exit v5
    :try_end_135
    .catchall {:try_start_106 .. :try_end_135} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1305
    :cond_139
    move-object v10, v1

    .end local v1  # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v10, "parentWindow":Lcom/android/server/wm/WindowState;
    const/16 v1, 0x7ee

    if-ne v6, v1, :cond_160

    :try_start_13e
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_160

    .line 1306
    const-string v1, "WindowManager"

    const-string v2, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v1, -0x8

    monitor-exit v5
    :try_end_14d
    .catchall {:try_start_13e .. :try_end_14d} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1656
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_151
    move-exception v0

    move-object/from16 v4, p13

    move-object v1, v0

    move-object/from16 v32, v5

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    move v2, v12

    goto/16 :goto_95d

    .line 1310
    .restart local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_160
    const/16 v21, 0x0

    .line 1311
    .local v21, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v10, :cond_166

    const/4 v1, 0x1

    goto :goto_167

    :cond_166
    move v1, v3

    :goto_167
    move/from16 v22, v1

    .line 1314
    .local v22, "hasParent":Z
    nop

    .line 1315
    if-eqz v22, :cond_171

    :try_start_16c
    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_151

    goto :goto_173

    :cond_171
    :try_start_171
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1314
    :goto_173
    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_928

    move-object v2, v1

    .line 1318
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v22, :cond_17f

    :try_start_17a
    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_180

    :cond_17f
    move v1, v6

    .line 1320
    .local v1, "rootType":I
    :goto_180
    const/16 v23, 0x0

    .line 1322
    .local v23, "addToastWindowRequiresToken":Z
    const/16 v31, -0x1

    if-nez v2, :cond_31e

    .line 1323
    const/4 v3, 0x1

    if-lt v1, v3, :cond_1b3

    const/16 v3, 0x63

    if-gt v1, v3, :cond_1b3

    .line 1324
    const-string v3, "WindowManager"

    move-object/from16 v33, v2

    .end local v2  # "token":Lcom/android/server/wm/WindowToken;
    .local v33, "token":Lcom/android/server/wm/WindowToken;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v4

    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v34, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v4, "Attempted to add application window with unknown token "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    monitor-exit v5
    :try_end_1af
    .catchall {:try_start_17a .. :try_end_1af} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1323
    .end local v33  # "token":Lcom/android/server/wm/WindowToken;
    .end local v34  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v2  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1b3
    move-object/from16 v33, v2

    move-object/from16 v34, v4

    .line 1328
    .end local v2  # "token":Lcom/android/server/wm/WindowToken;
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v33  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v34  # "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v2, 0x7db

    if-ne v1, v2, :cond_1dd

    .line 1329
    :try_start_1bb
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add input method window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    monitor-exit v5
    :try_end_1d9
    .catchall {:try_start_1bb .. :try_end_1d9} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1333
    :cond_1dd
    const/16 v3, 0x7ef

    if-ne v1, v3, :cond_203

    .line 1334
    :try_start_1e1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add voice interaction window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    monitor-exit v5
    :try_end_1ff
    .catchall {:try_start_1e1 .. :try_end_1ff} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1338
    :cond_203
    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_229

    .line 1339
    :try_start_207
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    monitor-exit v5
    :try_end_225
    .catchall {:try_start_207 .. :try_end_225} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1343
    :cond_229
    const/16 v4, 0x7e7

    if-ne v1, v4, :cond_24f

    .line 1344
    :try_start_22d
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add Dream window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    monitor-exit v5
    :try_end_24b
    .catchall {:try_start_22d .. :try_end_24b} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1348
    :cond_24f
    const/16 v4, 0x7f3

    if-ne v1, v4, :cond_275

    .line 1349
    :try_start_253
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add QS dialog window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    monitor-exit v5
    :try_end_271
    .catchall {:try_start_253 .. :try_end_271} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1353
    :cond_275
    const/16 v4, 0x7f0

    if-ne v1, v4, :cond_29b

    .line 1354
    :try_start_279
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add Accessibility overlay window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    monitor-exit v5
    :try_end_297
    .catchall {:try_start_279 .. :try_end_297} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1358
    :cond_29b
    const/16 v4, 0x7d5

    if-ne v6, v4, :cond_2c9

    .line 1360
    :try_start_29f
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v13, v2, v7, v10}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 1362
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add a toast window with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    monitor-exit v5
    :try_end_2c5
    .catchall {:try_start_29f .. :try_end_2c5} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1367
    :cond_2c9
    :try_start_2c9
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_2cb
    .catchall {:try_start_2c9 .. :try_end_2cb} :catchall_30e

    if-eqz v2, :cond_2d0

    :try_start_2cd
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_2cf
    .catchall {:try_start_2cd .. :try_end_2cf} :catchall_151

    goto :goto_2d4

    :cond_2d0
    :try_start_2d0
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2d4
    move-object v3, v2

    .line 1368
    .local v3, "binder":Landroid/os/IBinder;
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v24, 0x100000

    and-int v2, v2, v24

    if-eqz v2, :cond_2df

    const/4 v2, 0x1

    goto :goto_2e0

    :cond_2df
    const/4 v2, 0x0

    :goto_2e0
    move v8, v2

    .line 1370
    .local v8, "isRoundedCornerOverlay":Z
    new-instance v24, Lcom/android/server/wm/WindowToken;

    const/16 v25, 0x0

    iget-boolean v2, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_2e7
    .catchall {:try_start_2d0 .. :try_end_2e7} :catchall_30e

    move/from16 v37, v1

    .end local v1  # "rootType":I
    .local v37, "rootType":I
    move-object/from16 v1, v24

    move/from16 v26, v2

    move-object/from16 v29, v33

    .end local v33  # "token":Lcom/android/server/wm/WindowToken;
    .local v29, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v2, p0

    move v12, v4

    move-object/from16 v30, v34

    .end local v34  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v30, "displayContent":Lcom/android/server/wm/DisplayContent;
    move v4, v6

    move-object/from16 v32, v5

    move/from16 v5, v25

    move v12, v6

    .end local v6  # "type":I
    .local v12, "type":I
    move-object/from16 v6, v30

    move v11, v7

    .end local v7  # "callingUid":I
    .local v11, "callingUid":I
    move/from16 v7, v26

    :try_start_2ff
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    move-object/from16 v1, v24

    .line 1372
    .end local v3  # "binder":Landroid/os/IBinder;
    .end local v8  # "isRoundedCornerOverlay":Z
    .end local v29  # "token":Lcom/android/server/wm/WindowToken;
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v7, v21

    move/from16 v8, v37

    const/16 v26, 0x7d5

    const/16 v27, 0x1

    goto/16 :goto_569

    .line 1656
    .end local v1  # "token":Lcom/android/server/wm/WindowToken;
    .end local v11  # "callingUid":I
    .end local v12  # "type":I
    .end local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v22  # "hasParent":Z
    .end local v23  # "addToastWindowRequiresToken":Z
    .end local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v37  # "rootType":I
    .restart local v6  # "type":I
    .restart local v7  # "callingUid":I
    :catchall_30e
    move-exception v0

    move-object/from16 v32, v5

    move/from16 v2, p6

    move-object/from16 v4, p13

    move-object v1, v0

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    .end local v6  # "type":I
    .end local v7  # "callingUid":I
    .restart local v11  # "callingUid":I
    .restart local v12  # "type":I
    goto/16 :goto_95d

    .line 1372
    .end local v11  # "callingUid":I
    .end local v12  # "type":I
    .local v1, "rootType":I
    .restart local v2  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6  # "type":I
    .restart local v7  # "callingUid":I
    .restart local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v22  # "hasParent":Z
    .restart local v23  # "addToastWindowRequiresToken":Z
    :cond_31e
    move/from16 v37, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v32, v5

    move v12, v6

    move v11, v7

    .end local v1  # "rootType":I
    .end local v2  # "token":Lcom/android/server/wm/WindowToken;
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6  # "type":I
    .end local v7  # "callingUid":I
    .restart local v11  # "callingUid":I
    .restart local v12  # "type":I
    .restart local v29  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v37  # "rootType":I
    move/from16 v8, v37

    const/4 v7, 0x1

    .end local v37  # "rootType":I
    .local v8, "rootType":I
    if-lt v8, v7, :cond_39d

    const/16 v1, 0x63

    if-gt v8, v1, :cond_39d

    .line 1373
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 1374
    .end local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_35a

    .line 1375
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with non-application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v29

    .end local v29  # "token":Lcom/android/server/wm/WindowToken;
    .local v6, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v2, -0x3

    monitor-exit v32
    :try_end_356
    .catchall {:try_start_2ff .. :try_end_356} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1378
    .end local v6  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v29  # "token":Lcom/android/server/wm/WindowToken;
    :cond_35a
    move-object/from16 v6, v29

    .end local v29  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v6  # "token":Lcom/android/server/wm/WindowToken;
    :try_start_35c
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_381

    .line 1379
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with exiting application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v2, -0x4

    monitor-exit v32
    :try_end_37d
    .catchall {:try_start_35c .. :try_end_37d} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1382
    :cond_381
    const/4 v2, 0x3

    if-ne v12, v2, :cond_394

    :try_start_384
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_394

    .line 1383
    const-string v2, "WindowManager"

    const-string v3, "Attempted to add starting window to token with already existing starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    monitor-exit v32
    :try_end_390
    .catchall {:try_start_384 .. :try_end_390} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    .line 1441
    :cond_394
    move-object/from16 v24, v6

    move/from16 v27, v7

    const/16 v26, 0x7d5

    move-object v7, v1

    goto/16 :goto_569

    .line 1372
    .end local v1  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v29  # "token":Lcom/android/server/wm/WindowToken;
    :cond_39d
    move-object/from16 v6, v29

    .line 1387
    .end local v29  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v6  # "token":Lcom/android/server/wm/WindowToken;
    const/16 v5, 0x7db

    if-ne v8, v5, :cond_3df

    .line 1388
    :try_start_3a3
    iget v1, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v5, :cond_3c9

    .line 1389
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add input method window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    monitor-exit v32
    :try_end_3c5
    .catchall {:try_start_3a3 .. :try_end_3c5} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1388
    :cond_3c9
    move-object/from16 v24, v6

    move/from16 v27, v7

    const/16 v26, 0x7d5

    goto/16 :goto_567

    .line 1656
    .end local v6  # "token":Lcom/android/server/wm/WindowToken;
    .end local v8  # "rootType":I
    .end local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v22  # "hasParent":Z
    .end local v23  # "addToastWindowRequiresToken":Z
    .end local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_3d1
    move-exception v0

    move/from16 v2, p6

    move-object/from16 v4, p13

    move-object v1, v0

    move-object/from16 v29, v9

    move/from16 v39, v11

    move/from16 v40, v12

    goto/16 :goto_95d

    .line 1393
    .restart local v6  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v8  # "rootType":I
    .restart local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v22  # "hasParent":Z
    .restart local v23  # "addToastWindowRequiresToken":Z
    .restart local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3df
    const/16 v1, 0x7ef

    if-ne v8, v1, :cond_411

    .line 1394
    :try_start_3e3
    iget v2, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_409

    .line 1395
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add voice interaction window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    monitor-exit v32
    :try_end_405
    .catchall {:try_start_3e3 .. :try_end_405} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1394
    :cond_409
    move-object/from16 v24, v6

    move/from16 v27, v7

    const/16 v26, 0x7d5

    goto/16 :goto_567

    .line 1399
    :cond_411
    const/16 v4, 0x7dd

    if-ne v8, v4, :cond_443

    .line 1400
    :try_start_415
    iget v1, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v4, :cond_43b

    .line 1401
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    monitor-exit v32
    :try_end_437
    .catchall {:try_start_415 .. :try_end_437} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1400
    :cond_43b
    move-object/from16 v24, v6

    move/from16 v27, v7

    const/16 v26, 0x7d5

    goto/16 :goto_567

    .line 1405
    :cond_443
    const/16 v1, 0x7e7

    if-ne v8, v1, :cond_475

    .line 1406
    :try_start_447
    iget v2, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_46d

    .line 1407
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Dream window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    monitor-exit v32
    :try_end_469
    .catchall {:try_start_447 .. :try_end_469} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1406
    :cond_46d
    move-object/from16 v24, v6

    move/from16 v27, v7

    const/16 v26, 0x7d5

    goto/16 :goto_567

    .line 1411
    :cond_475
    const/16 v1, 0x7f0

    if-ne v8, v1, :cond_4a7

    .line 1412
    :try_start_479
    iget v2, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_49f

    .line 1413
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Accessibility overlay window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    monitor-exit v32
    :try_end_49b
    .catchall {:try_start_479 .. :try_end_49b} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1412
    :cond_49f
    move-object/from16 v24, v6

    move/from16 v27, v7

    const/16 v26, 0x7d5

    goto/16 :goto_567

    .line 1417
    :cond_4a7
    const/16 v1, 0x7d5

    if-ne v12, v1, :cond_4e9

    .line 1419
    :try_start_4ab
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v13, v1, v11, v10}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v1

    move/from16 v23, v1

    .line 1421
    if-eqz v23, :cond_4dd

    iget v1, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v3, 0x7d5

    if-eq v1, v3, :cond_4df

    .line 1422
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add a toast window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    monitor-exit v32
    :try_end_4d9
    .catchall {:try_start_4ab .. :try_end_4d9} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1421
    :cond_4dd
    const/16 v3, 0x7d5

    .line 1441
    :cond_4df
    move/from16 v26, v3

    move-object/from16 v24, v6

    move/from16 v27, v7

    move-object/from16 v7, v21

    goto/16 :goto_569

    .line 1426
    :cond_4e9
    move v3, v1

    const/16 v1, 0x7f3

    if-ne v12, v1, :cond_51b

    .line 1427
    :try_start_4ee
    iget v2, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_514

    .line 1428
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add QS dialog window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    monitor-exit v32
    :try_end_510
    .catchall {:try_start_4ee .. :try_end_510} :catchall_3d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v31

    .line 1427
    :cond_514
    move/from16 v26, v3

    move-object/from16 v24, v6

    move/from16 v27, v7

    goto :goto_567

    .line 1432
    :cond_51b
    :try_start_51b
    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_51f
    .catchall {:try_start_51b .. :try_end_51f} :catchall_919

    if-eqz v1, :cond_561

    .line 1433
    :try_start_521
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-null appWindowToken for system window of rootType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const/4 v1, 0x0

    iput-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1437
    new-instance v20, Lcom/android/server/wm/WindowToken;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/16 v24, 0x0

    iget-boolean v2, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    move-object/from16 v1, v20

    move/from16 v25, v2

    move-object/from16 v2, p0

    const/16 v26, 0x7d5

    move v4, v12

    move/from16 v5, v24

    move-object/from16 v24, v6

    .end local v6  # "token":Lcom/android/server/wm/WindowToken;
    .local v24, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v6, v30

    move/from16 v27, v7

    move/from16 v7, v25

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    :try_end_55a
    .catchall {:try_start_521 .. :try_end_55a} :catchall_3d1

    move-object/from16 v1, v20

    move-object/from16 v24, v1

    move-object/from16 v7, v21

    .end local v24  # "token":Lcom/android/server/wm/WindowToken;
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    goto :goto_569

    .line 1432
    .end local v1  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v6  # "token":Lcom/android/server/wm/WindowToken;
    :cond_561
    move/from16 v26, v3

    move-object/from16 v24, v6

    move/from16 v27, v7

    .line 1441
    :goto_567
    move-object/from16 v7, v21

    .end local v6  # "token":Lcom/android/server/wm/WindowToken;
    .end local v21  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v7, "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v24  # "token":Lcom/android/server/wm/WindowToken;
    :goto_569
    :try_start_569
    new-instance v20, Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    aget v21, v9, v6

    iget v5, v14, Lcom/android/server/wm/Session;->mUid:I

    iget-boolean v4, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_572
    .catchall {:try_start_569 .. :try_end_572} :catchall_919

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v25, v4

    move-object/from16 v4, p2

    move/from16 v28, v5

    move-object/from16 v5, v24

    move v14, v6

    move-object v6, v10

    move-object/from16 v40, v7

    .end local v7  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v40, "atoken":Lcom/android/server/wm/AppWindowToken;
    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8  # "rootType":I
    .local v21, "rootType":I
    move/from16 v8, p3

    move-object/from16 v29, v9

    .end local v9  # "appOp":[I
    .local v29, "appOp":[I
    move-object/from16 v9, p4

    move/from16 v14, v27

    move-object/from16 v27, v10

    .end local v10  # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v27, "parentWindow":Lcom/android/server/wm/WindowState;
    move/from16 v10, p5

    move/from16 v41, v11

    .end local v11  # "callingUid":I
    .local v41, "callingUid":I
    move/from16 v11, v28

    move/from16 v42, v12

    .end local v12  # "type":I
    .local v42, "type":I
    move/from16 v12, v25

    :try_start_59c
    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V

    move-object/from16 v1, v20

    .line 1444
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    :try_end_5a3
    .catchall {:try_start_59c .. :try_end_5a3} :catchall_90c

    if-nez v2, :cond_5d8

    .line 1447
    :try_start_5a5
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding window client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " that is dead, aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v2, -0x4

    monitor-exit v32
    :try_end_5c6
    .catchall {:try_start_5a5 .. :try_end_5c6} :catchall_5ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1656
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    .end local v21  # "rootType":I
    .end local v22  # "hasParent":Z
    .end local v23  # "addToastWindowRequiresToken":Z
    .end local v24  # "token":Lcom/android/server/wm/WindowToken;
    .end local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_5ca
    move-exception v0

    move/from16 v2, p6

    move-object/from16 v4, p13

    move-object v1, v0

    move-object/from16 v10, v27

    move/from16 v39, v41

    move/from16 v40, v42

    goto/16 :goto_95d

    .line 1452
    .restart local v1  # "win":Lcom/android/server/wm/WindowState;
    .restart local v21  # "rootType":I
    .restart local v22  # "hasParent":Z
    .restart local v23  # "addToastWindowRequiresToken":Z
    .restart local v24  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5d8
    :try_start_5d8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2
    :try_end_5dc
    .catchall {:try_start_5d8 .. :try_end_5dc} :catchall_90c

    if-nez v2, :cond_5ea

    .line 1453
    :try_start_5de
    const-string v2, "WindowManager"

    const-string v3, "Adding window to Display that has been removed."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    monitor-exit v32
    :try_end_5e6
    .catchall {:try_start_5de .. :try_end_5e6} :catchall_5ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1457
    :cond_5ea
    :try_start_5ea
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    .line 1458
    .local v2, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1458
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1460
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v15}, Lcom/android/server/policy/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    .line 1462
    invoke-virtual {v2, v1, v15}, Lcom/android/server/wm/DisplayPolicy;->prepareAddWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    move/from16 v16, v3

    .line 1464
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3
    :try_end_60e
    .catchall {:try_start_5ea .. :try_end_60e} :catchall_90c

    if-eqz v3, :cond_635

    :try_start_610
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_622

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_635

    .line 1468
    :cond_622
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v14}, Lcom/android/server/wm/FlymeWindowManagerInternal;->shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_635

    .line 1469
    const/16 v3, -0xb

    monitor-exit v32
    :try_end_631
    .catchall {:try_start_610 .. :try_end_631} :catchall_5ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1473
    :cond_635
    if-eqz v16, :cond_63c

    .line 1474
    :try_start_637
    monitor-exit v32
    :try_end_638
    .catchall {:try_start_637 .. :try_end_638} :catchall_5ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1477
    :cond_63c
    const/4 v3, 0x2

    move-object/from16 v12, p12

    if-eqz v12, :cond_648

    :try_start_641
    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/2addr v4, v3

    if-nez v4, :cond_648

    move v4, v14

    goto :goto_649

    :cond_648
    const/4 v4, 0x0

    :goto_649
    move/from16 v18, v4

    .line 1479
    .local v18, "openInputChannels":Z
    if-eqz v18, :cond_650

    .line 1480
    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V
    :try_end_650
    .catchall {:try_start_641 .. :try_end_650} :catchall_5ca

    .line 1493
    :cond_650
    move/from16 v11, v42

    const/16 v4, 0x7d5

    .end local v42  # "type":I
    .local v11, "type":I
    if-ne v11, v4, :cond_69e

    .line 1494
    move-object/from16 v9, v30

    move/from16 v10, v41

    .end local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v41  # "callingUid":I
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v10, "callingUid":I
    :try_start_65a
    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->canAddToastWindowForUid(I)Z

    move-result v4

    if-nez v4, :cond_66c

    .line 1495
    const-string v3, "WindowManager"

    const-string v4, "Adding more than one toast window for UID at a time."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    monitor-exit v32
    :try_end_668
    .catchall {:try_start_65a .. :try_end_668} :catchall_690

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    .line 1503
    :cond_66c
    if-nez v23, :cond_67e

    :try_start_66e
    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_67e

    iget-object v4, v9, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_67e

    iget-object v4, v9, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v4, v10, :cond_6a2

    .line 1507
    :cond_67e
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x34

    .line 1508
    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1507
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_68f
    .catchall {:try_start_66e .. :try_end_68f} :catchall_690

    goto :goto_6a2

    .line 1656
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    .end local v2  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18  # "openInputChannels":Z
    .end local v21  # "rootType":I
    .end local v22  # "hasParent":Z
    .end local v23  # "addToastWindowRequiresToken":Z
    .end local v24  # "token":Lcom/android/server/wm/WindowToken;
    .end local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_690
    move-exception v0

    move/from16 v2, p6

    move-object/from16 v4, p13

    move-object v1, v0

    move/from16 v39, v10

    move/from16 v40, v11

    move-object/from16 v10, v27

    goto/16 :goto_95d

    .line 1493
    .end local v10  # "callingUid":I
    .restart local v1  # "win":Lcom/android/server/wm/WindowState;
    .restart local v2  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v18  # "openInputChannels":Z
    .restart local v21  # "rootType":I
    .restart local v22  # "hasParent":Z
    .restart local v23  # "addToastWindowRequiresToken":Z
    .restart local v24  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v41  # "callingUid":I
    :cond_69e
    move-object/from16 v9, v30

    move/from16 v10, v41

    .line 1515
    .end local v30  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v41  # "callingUid":I
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v10  # "callingUid":I
    :cond_6a2
    :goto_6a2
    const/16 v16, 0x0

    .line 1516
    :try_start_6a4
    iget-object v4, v9, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_6a6
    .catchall {:try_start_6a4 .. :try_end_6a6} :catchall_8fe

    if-nez v4, :cond_6ad

    .line 1517
    :try_start_6a8
    iget-object v4, v9, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6ad
    .catchall {:try_start_6a8 .. :try_end_6ad} :catchall_690

    .line 1520
    :cond_6ad
    :try_start_6ad
    invoke-static {v11}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v4
    :try_end_6b1
    .catchall {:try_start_6ad .. :try_end_6b1} :catchall_8fe

    if-eqz v4, :cond_6b8

    .line 1521
    :try_start_6b3
    iget-object v4, v9, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b8
    .catchall {:try_start_6b3 .. :try_end_6b8} :catchall_690

    .line 1524
    :cond_6b8
    :try_start_6b8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide/from16 v19, v4

    .line 1526
    .local v19, "origId":J
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->attach()V

    .line 1527
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/WindowHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->initAppOpsState()V

    .line 1531
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    .line 1532
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1531
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v4

    move v8, v4

    .line 1533
    .local v8, "suspended":Z
    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 1535
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6ed

    move v4, v14

    goto :goto_6ee

    :cond_6ed
    const/4 v4, 0x0

    :goto_6ee
    move v7, v4

    .line 1536
    .local v7, "hideSystemAlertWindows":Z
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 1538
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4
    :try_end_6f6
    .catchall {:try_start_6b8 .. :try_end_6f6} :catchall_8fe

    move-object v6, v4

    .line 1539
    .local v6, "aToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v4, 0x3

    if-ne v11, v4, :cond_720

    if-eqz v6, :cond_720

    .line 1540
    :try_start_6fc
    iput-object v1, v6, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1541
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_720

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindow: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startingWindow="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_720
    .catchall {:try_start_6fc .. :try_end_720} :catchall_690

    .line 1545
    :cond_720
    const/4 v3, 0x1

    .line 1547
    .local v3, "imMayMove":Z
    :try_start_721
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1550
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I
    :try_end_72a
    .catchall {:try_start_721 .. :try_end_72a} :catchall_8fe

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_745

    .line 1551
    :try_start_72e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/FlymeDimWindow;->getDimWindow(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/FlymeDimWindow;

    move-result-object v4

    move/from16 v25, v3

    const/4 v3, 0x0

    const/4 v5, 0x2

    .end local v3  # "imMayMove":Z
    .local v25, "imMayMove":Z
    invoke-virtual {v4, v14, v14, v3, v5}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    .line 1552
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_747

    .line 1550
    .end local v25  # "imMayMove":Z
    .restart local v3  # "imMayMove":Z
    :cond_745
    move/from16 v25, v3

    .line 1555
    .end local v3  # "imMayMove":Z
    .restart local v25  # "imMayMove":Z
    :goto_747
    const/16 v3, 0x7db

    if-ne v11, v3, :cond_752

    .line 1556
    invoke-virtual {v9, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1557
    const/4 v3, 0x0

    move/from16 v25, v3

    .end local v25  # "imMayMove":Z
    .restart local v3  # "imMayMove":Z
    goto :goto_789

    .line 1558
    .end local v3  # "imMayMove":Z
    .restart local v25  # "imMayMove":Z
    :cond_752
    const/16 v3, 0x7dc

    if-ne v11, v3, :cond_75d

    .line 1559
    invoke-virtual {v9, v14}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1560
    const/4 v3, 0x0

    move/from16 v25, v3

    .end local v25  # "imMayMove":Z
    .restart local v3  # "imMayMove":Z
    goto :goto_789

    .line 1562
    .end local v3  # "imMayMove":Z
    .restart local v25  # "imMayMove":Z
    :cond_75d
    const/16 v3, 0x7dd

    if-ne v11, v3, :cond_76d

    .line 1563
    iget-object v3, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1564
    iget v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_76c
    .catchall {:try_start_72e .. :try_end_76c} :catchall_690

    goto :goto_789

    .line 1565
    :cond_76d
    :try_start_76d
    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_76f
    .catchall {:try_start_76d .. :try_end_76f} :catchall_8fe

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_77b

    .line 1566
    :try_start_774
    iget v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_77a
    .catchall {:try_start_774 .. :try_end_77a} :catchall_690

    goto :goto_789

    .line 1567
    :cond_77b
    :try_start_77b
    iget-object v3, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WallpaperController;->isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3
    :try_end_781
    .catchall {:try_start_77b .. :try_end_781} :catchall_8fe

    if-eqz v3, :cond_789

    .line 1573
    :try_start_783
    iget v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_789
    .catchall {:try_start_783 .. :try_end_789} :catchall_690

    .line 1579
    :cond_789
    :goto_789
    :try_start_789
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->applyAdjustForImeIfNeeded()V
    :try_end_78c
    .catchall {:try_start_789 .. :try_end_78c} :catchall_8fe

    .line 1581
    const/16 v3, 0x7f2

    if-ne v11, v3, :cond_7ad

    .line 1582
    :try_start_790
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;
    :try_end_792
    .catchall {:try_start_790 .. :try_end_792} :catchall_690

    move/from16 v5, p6

    :try_start_794
    invoke-virtual {v3, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DockedStackDividerController;->setWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_79f
    .catchall {:try_start_794 .. :try_end_79f} :catchall_7a0

    goto :goto_7af

    .line 1656
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    .end local v2  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v6  # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7  # "hideSystemAlertWindows":Z
    .end local v8  # "suspended":Z
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18  # "openInputChannels":Z
    .end local v19  # "origId":J
    .end local v21  # "rootType":I
    .end local v22  # "hasParent":Z
    .end local v23  # "addToastWindowRequiresToken":Z
    .end local v24  # "token":Lcom/android/server/wm/WindowToken;
    .end local v25  # "imMayMove":Z
    .end local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_7a0
    move-exception v0

    move-object/from16 v4, p13

    move-object v1, v0

    move v2, v5

    move/from16 v39, v10

    move/from16 v40, v11

    move-object/from16 v10, v27

    goto/16 :goto_95d

    .line 1581
    .restart local v1  # "win":Lcom/android/server/wm/WindowState;
    .restart local v2  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v6  # "aToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v7  # "hideSystemAlertWindows":Z
    .restart local v8  # "suspended":Z
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v18  # "openInputChannels":Z
    .restart local v19  # "origId":J
    .restart local v21  # "rootType":I
    .restart local v22  # "hasParent":Z
    .restart local v23  # "addToastWindowRequiresToken":Z
    .restart local v24  # "token":Lcom/android/server/wm/WindowToken;
    .restart local v25  # "imMayMove":Z
    .restart local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7ad
    move/from16 v5, p6

    .line 1585
    :goto_7af
    :try_start_7af
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object v4, v3

    .line 1586
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iput-boolean v14, v4, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1587
    iput-boolean v14, v4, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z
    :try_end_7b6
    .catchall {:try_start_7af .. :try_end_7b6} :catchall_8f9

    .line 1589
    move-object/from16 v3, v40

    .end local v40  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_7c9

    :try_start_7ba
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v26

    if-eqz v26, :cond_7c9

    .line 1590
    invoke-direct {v13, v3}, Lcom/android/server/wm/WindowManagerService;->prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v26

    if-nez v26, :cond_7c9

    .line 1594
    invoke-direct {v13, v3}, Lcom/android/server/wm/WindowManagerService;->prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_7c9
    .catchall {:try_start_7ba .. :try_end_7c9} :catchall_7a0

    .line 1597
    :cond_7c9
    :try_start_7c9
    iget-object v14, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1599
    .local v14, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v28

    move-object/from16 v30, v28

    .line 1600
    .local v30, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v28, v4

    move-object/from16 v15, v30

    .end local v4  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v30  # "displayInfo":Landroid/view/DisplayInfo;
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    .local v28, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v4, v15, Landroid/view/DisplayInfo;->rotation:I

    .line 1601
    invoke-virtual {v9, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 1600
    invoke-virtual {v14, v15, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    :try_end_7de
    .catchall {:try_start_7c9 .. :try_end_7de} :catchall_8f9

    .line 1604
    if-eqz v3, :cond_7fe

    :try_start_7e0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_7fe

    .line 1605
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 1606
    .local v4, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v30, v4

    .end local v4  # "taskBounds":Landroid/graphics/Rect;
    .local v30, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1607
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v4
    :try_end_7fb
    .catchall {:try_start_7e0 .. :try_end_7fb} :catchall_690

    move/from16 v31, v4

    .local v4, "floatingStack":Z
    goto :goto_806

    .line 1609
    .end local v4  # "floatingStack":Z
    .end local v30  # "taskBounds":Landroid/graphics/Rect;
    :cond_7fe
    const/4 v4, 0x0

    .line 1610
    .local v4, "taskBounds":Landroid/graphics/Rect;
    const/4 v5, 0x0

    move/from16 v30, v5

    move/from16 v31, v30

    move-object/from16 v30, v4

    .line 1612
    .end local v4  # "taskBounds":Landroid/graphics/Rect;
    .restart local v30  # "taskBounds":Landroid/graphics/Rect;
    .local v31, "floatingStack":Z
    :goto_806
    :try_start_806
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;
    :try_end_808
    .catchall {:try_start_806 .. :try_end_808} :catchall_8fe

    move-object/from16 v33, v3

    .end local v3  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v33, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object v3, v2

    move-object/from16 v34, v2

    move/from16 v2, p6

    .end local v2  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .local v34, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    move-object/from16 v5, v30

    move-object/from16 v35, v6

    .end local v6  # "aToken":Lcom/android/server/wm/AppWindowToken;
    .local v35, "aToken":Lcom/android/server/wm/AppWindowToken;
    move-object v6, v14

    move/from16 v36, v7

    .end local v7  # "hideSystemAlertWindows":Z
    .local v36, "hideSystemAlertWindows":Z
    move/from16 v7, v31

    move/from16 v37, v8

    .end local v8  # "suspended":Z
    .local v37, "suspended":Z
    move-object/from16 v8, p7

    move-object/from16 v38, v9

    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v38, "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v9, p8

    move/from16 v39, v10

    .end local v10  # "callingUid":I
    .local v39, "callingUid":I
    move-object/from16 v10, p9

    move/from16 v40, v11

    .end local v11  # "type":I
    .local v40, "type":I
    move-object/from16 v11, p10

    move-object/from16 v12, p11

    :try_start_82a
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/DisplayPolicy;->getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z

    move-result v3

    if-eqz v3, :cond_834

    .line 1614
    or-int/lit8 v3, v16, 0x4

    move/from16 v16, v3

    .line 1616
    :cond_834
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v3
    :try_end_83c
    .catchall {:try_start_82a .. :try_end_83c} :catchall_8f1

    move-object/from16 v4, p13

    :try_start_83e
    invoke-virtual {v4, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 1618
    iget-boolean v3, v13, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_849

    .line 1619
    or-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    .line 1621
    :cond_849
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_855

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v3

    if-nez v3, :cond_859

    .line 1622
    :cond_855
    or-int/lit8 v3, v16, 0x2

    .end local v16  # "res":I
    .local v3, "res":I
    move/from16 v16, v3

    .line 1625
    .end local v3  # "res":I
    .restart local v16  # "res":I
    :cond_859
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1627
    const/4 v3, 0x0

    .line 1628
    .local v3, "focusChanged":Z
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v5

    if-eqz v5, :cond_872

    .line 1629
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v13, v6, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v7

    move v3, v7

    .line 1631
    if-eqz v3, :cond_872

    .line 1632
    const/16 v25, 0x0

    .line 1636
    :cond_872
    if-eqz v25, :cond_87b

    .line 1637
    move-object/from16 v5, v38

    const/4 v6, 0x1

    .end local v38  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    goto :goto_87d

    .line 1636
    .end local v5  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v38  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_87b
    move-object/from16 v5, v38

    .line 1642
    .end local v38  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v5  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_87d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1644
    if-eqz v3, :cond_890

    .line 1645
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 1648
    :cond_890
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1650
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v6, :cond_8a0

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_8cf

    :cond_8a0
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addWindow: New client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": window="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1650
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_8cf
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_8de

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v6

    if-eqz v6, :cond_8de

    .line 1654
    const/4 v6, 0x1

    move/from16 v17, v6

    .line 1656
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    .end local v3  # "focusChanged":Z
    .end local v5  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14  # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v15  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v18  # "openInputChannels":Z
    .end local v21  # "rootType":I
    .end local v22  # "hasParent":Z
    .end local v23  # "addToastWindowRequiresToken":Z
    .end local v24  # "token":Lcom/android/server/wm/WindowToken;
    .end local v25  # "imMayMove":Z
    .end local v28  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v30  # "taskBounds":Landroid/graphics/Rect;
    .end local v31  # "floatingStack":Z
    .end local v33  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v34  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v35  # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v36  # "hideSystemAlertWindows":Z
    .end local v37  # "suspended":Z
    :cond_8de
    monitor-exit v32
    :try_end_8df
    .catchall {:try_start_83e .. :try_end_8df} :catchall_8eb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1658
    if-eqz v17, :cond_8e7

    .line 1659
    invoke-virtual {v13, v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 1662
    :cond_8e7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1664
    return v16

    .line 1656
    .end local v19  # "origId":J
    :catchall_8eb
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v27

    goto/16 :goto_95d

    :catchall_8f1
    move-exception v0

    move-object/from16 v4, p13

    move-object v1, v0

    move-object/from16 v10, v27

    goto/16 :goto_95d

    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .restart local v10  # "callingUid":I
    .restart local v11  # "type":I
    :catchall_8f9
    move-exception v0

    move-object/from16 v4, p13

    move v2, v5

    goto :goto_903

    :catchall_8fe
    move-exception v0

    move/from16 v2, p6

    move-object/from16 v4, p13

    :goto_903
    move/from16 v39, v10

    move/from16 v40, v11

    move-object v1, v0

    move-object/from16 v10, v27

    .end local v10  # "callingUid":I
    .end local v11  # "type":I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    goto/16 :goto_95d

    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .restart local v41  # "callingUid":I
    .restart local v42  # "type":I
    :catchall_90c
    move-exception v0

    move/from16 v2, p6

    move-object/from16 v4, p13

    move/from16 v39, v41

    move/from16 v40, v42

    move-object v1, v0

    move-object/from16 v10, v27

    .end local v41  # "callingUid":I
    .end local v42  # "type":I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    goto :goto_95d

    .end local v27  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v29  # "appOp":[I
    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .local v9, "appOp":[I
    .local v10, "parentWindow":Lcom/android/server/wm/WindowState;
    .local v11, "callingUid":I
    .restart local v12  # "type":I
    :catchall_919
    move-exception v0

    move/from16 v2, p6

    move-object/from16 v4, p13

    move-object/from16 v29, v9

    move-object/from16 v27, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move-object v1, v0

    .end local v9  # "appOp":[I
    .end local v10  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v11  # "callingUid":I
    .end local v12  # "type":I
    .restart local v27  # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v29  # "appOp":[I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    goto :goto_95d

    .end local v27  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v29  # "appOp":[I
    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .local v6, "type":I
    .local v7, "callingUid":I
    .restart local v9  # "appOp":[I
    .restart local v10  # "parentWindow":Lcom/android/server/wm/WindowState;
    :catchall_928
    move-exception v0

    move-object/from16 v4, p13

    move-object/from16 v32, v5

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    move-object/from16 v27, v10

    move v2, v12

    move-object v1, v0

    .end local v6  # "type":I
    .end local v7  # "callingUid":I
    .end local v9  # "appOp":[I
    .end local v10  # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v27  # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v29  # "appOp":[I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    goto :goto_95d

    .line 1269
    .end local v27  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v29  # "appOp":[I
    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v6  # "type":I
    .restart local v7  # "callingUid":I
    .restart local v9  # "appOp":[I
    :cond_938
    move-object/from16 v4, p13

    move-object/from16 v32, v5

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    move v2, v12

    .end local v6  # "type":I
    .end local v7  # "callingUid":I
    .end local v9  # "appOp":[I
    .restart local v29  # "appOp":[I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    :try_start_943
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Display has not been initialialized"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v16  # "res":I
    .end local v17  # "reportNewConfig":Z
    .end local v29  # "appOp":[I
    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    .end local p3  # "seq":I
    .end local p4  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local p5  # "viewVisibility":I
    .end local p6  # "displayId":I
    .end local p7  # "outFrame":Landroid/graphics/Rect;
    .end local p8  # "outContentInsets":Landroid/graphics/Rect;
    .end local p9  # "outStableInsets":Landroid/graphics/Rect;
    .end local p10  # "outOutsets":Landroid/graphics/Rect;
    .end local p11  # "outDisplayCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    .end local p12  # "outInputChannel":Landroid/view/InputChannel;
    .end local p13  # "outInsetsState":Landroid/view/InsetsState;
    throw v3
    :try_end_94b
    .catchall {:try_start_943 .. :try_end_94b} :catchall_94b

    .line 1656
    .restart local v1  # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v16  # "res":I
    .restart local v17  # "reportNewConfig":Z
    .restart local v29  # "appOp":[I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    .restart local p3  # "seq":I
    .restart local p4  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local p5  # "viewVisibility":I
    .restart local p6  # "displayId":I
    .restart local p7  # "outFrame":Landroid/graphics/Rect;
    .restart local p8  # "outContentInsets":Landroid/graphics/Rect;
    .restart local p9  # "outStableInsets":Landroid/graphics/Rect;
    .restart local p10  # "outOutsets":Landroid/graphics/Rect;
    .restart local p11  # "outDisplayCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    .restart local p12  # "outInputChannel":Landroid/view/InputChannel;
    .restart local p13  # "outInsetsState":Landroid/view/InsetsState;
    :catchall_94b
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    goto :goto_95d

    .end local v29  # "appOp":[I
    .end local v39  # "callingUid":I
    .end local v40  # "type":I
    .restart local v6  # "type":I
    .restart local v7  # "callingUid":I
    .restart local v9  # "appOp":[I
    :catchall_94f
    move-exception v0

    move-object/from16 v4, p13

    move-object/from16 v32, v5

    move/from16 v40, v6

    move/from16 v39, v7

    move-object/from16 v29, v9

    move v2, v12

    move-object v10, v1

    move-object v1, v0

    .end local v1  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v6  # "type":I
    .end local v7  # "callingUid":I
    .end local v9  # "appOp":[I
    .restart local v10  # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v29  # "appOp":[I
    .restart local v39  # "callingUid":I
    .restart local v40  # "type":I
    :goto_95d
    :try_start_95d
    monitor-exit v32
    :try_end_95e
    .catchall {:try_start_95d .. :try_end_95e} :catchall_962

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_962
    move-exception v0

    move-object v1, v0

    goto :goto_95d
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4327
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4328
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4329
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4330
    return-void

    .line 4329
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .registers 14
    .param p1, "binder"  # Landroid/os/IBinder;
    .param p2, "type"  # I
    .param p3, "displayId"  # I

    .line 2504
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "addWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2508
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2509
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2510
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_3a

    .line 2511
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWindowToken: Attempted to add token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for non-exiting displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2516
    :cond_3a
    :try_start_3a
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    move-object v9, v2

    .line 2517
    .local v9, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v9, :cond_6c

    .line 2518
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWindowToken: Attempted to add binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for already created window token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3a .. :try_end_68} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2523
    :cond_6c
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_7b

    .line 2524
    :try_start_70
    new-instance v2, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V

    goto :goto_86

    .line 2527
    :cond_7b
    new-instance v2, Lcom/android/server/wm/WindowToken;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 2529
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9  # "token":Lcom/android/server/wm/WindowToken;
    :goto_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2530
    return-void

    .line 2529
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2505
    :cond_91
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "spec"  # Landroid/view/MagnificationSpec;

    .line 7791
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7792
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_b

    .line 7793
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 7795
    :cond_b
    return-void
.end method

.method public canStartRecentsAnimation()Z
    .registers 3

    .line 2660
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2662
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2663
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2665
    :cond_18
    const/4 v1, 0x1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2666
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelRecentsAnimationSynchronously(ILjava/lang/String;)V
    .registers 4
    .param p1, "reorderMode"  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"  # Ljava/lang/String;

    .line 2676
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v0, :cond_7

    .line 2679
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationSynchronously(ILjava/lang/String;)V

    .line 2681
    :cond_7
    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "func"  # Ljava/lang/String;

    .line 2488
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 2489
    return v2

    .line 2492
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 2494
    return v2

    .line 2496
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2498
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    const/4 v1, 0x0

    return v1
.end method

.method checkDrawnWindowsLocked()V
    .registers 6

    .line 5466
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    goto/16 :goto_da

    .line 5469
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_16
    const-string v1, "WindowManager"

    if-ltz v0, :cond_ba

    .line 5470
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5471
    .local v2, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-eqz v3, :cond_66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for drawn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5472
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHasSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " drawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5471
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    :cond_66
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_99

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_99

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_99

    .line 5479
    :cond_75
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 5481
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-eqz v3, :cond_93

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window drawn win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    :cond_93
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 5477
    :cond_99
    :goto_99
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-eqz v3, :cond_b1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborted waiting for drawn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    :cond_b1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5469
    .end local v2  # "win":Lcom/android/server/wm/WindowState;
    :cond_b6
    :goto_b6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_16

    .line 5485
    .end local v0  # "j":I
    :cond_ba
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 5486
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-eqz v0, :cond_cb

    const-string v0, "All windows drawn!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    :cond_cb
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5488
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5490
    :cond_d9
    return-void

    .line 5467
    :cond_da
    :goto_da
    return-void
.end method

.method public checkSplitScreenMinimizedChanged(Z)V
    .registers 5
    .param p1, "animate"  # Z

    .line 2736
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2737
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2738
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 2739
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2740
    return-void

    .line 2739
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cleanupRecentsAnimation(I)V
    .registers 5
    .param p1, "reorderMode"  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 2684
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2685
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_1b

    .line 2686
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2687
    .local v1, "controller":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2688
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->cleanupAnimation(I)V

    .line 2690
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 2692
    .end local v1  # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2693
    return-void

    .line 2692
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .registers 11
    .param p1, "displayId"  # I
    .param p2, "userId"  # I

    .line 5303
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 5308
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 5308
    const-string v6, "clearForcedDisplayDensityForUser"

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5311
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5313
    .local v1, "ident":J
    :try_start_20
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_42

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5314
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5315
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_33

    .line 5316
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {v4, v5, v0}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    .line 5319
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_3c

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    .line 5321
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5322
    nop

    .line 5323
    return-void

    .line 5319
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUserId":I
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "userId":I
    throw v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 5321
    .restart local v0  # "callingUserId":I
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "userId":I
    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5305
    .end local v0  # "callingUserId":I
    .end local v1  # "ident":J
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearForcedDisplaySize(I)V
    .registers 8
    .param p1, "displayId"  # I

    .line 5186
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    .line 5191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5193
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_32

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5194
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5195
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_23

    .line 5196
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/DisplayContent;->setForcedSize(II)V

    .line 5199
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_2c

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32

    .line 5201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5202
    nop

    .line 5203
    return-void

    .line 5199
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    throw v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 5201
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5188
    .end local v0  # "ident":J
    :cond_37
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 5966
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "clearWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5970
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5971
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5972
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 5973
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5975
    :cond_20
    :try_start_20
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 5976
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-nez v3, :cond_2b

    .line 5977
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5979
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->clearWindowContentFrameStats()Z

    move-result v2

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5980
    .end local v1  # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3  # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5968
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method closeSurfaceTransaction(Ljava/lang/String;)V
    .registers 6
    .param p1, "where"  # Ljava/lang/String;

    .line 914
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "closeSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 915
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_24

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 916
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 917
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowTracing;->logState(Ljava/lang/String;)V

    .line 918
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 920
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 921
    nop

    .line 922
    return-void

    .line 918
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "where":Ljava/lang/String;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 920
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "where":Ljava/lang/String;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 3035
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3036
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3037
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3038
    return-void

    .line 3037
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public computeNewConfiguration(I)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "displayId"  # I

    .line 4408
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4409
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4410
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method continueSurfaceLayout()V
    .registers 2

    .line 2831
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout()V

    .line 2832
    return-void
.end method

.method public createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 8
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "inputEventReceiverFactory"  # Landroid/view/InputEventReceiver$Factory;
    .param p4, "displayId"  # I

    .line 5884
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5885
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5886
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1b

    .line 5887
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 5890
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 5892
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    .registers 13
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "displayId"  # I
    .param p4, "inputChannel"  # Landroid/view/InputChannel;

    .line 5898
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5899
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5900
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_20

    .line 5901
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    .line 5902
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 5901
    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V

    .line 5904
    .end local v1  # "display":Lcom/android/server/wm/DisplayContent;
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5905
    return-void

    .line 5904
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createWatermarkInTransaction()V
    .registers 9

    .line 5746
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_5

    .line 5747
    return-void

    .line 5750
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/setup.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5751
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 5752
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 5754
    .local v2, "ind":Ljava/io/DataInputStream;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 5755
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 5756
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 5757
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 5758
    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5759
    .local v4, "toks":[Ljava/lang/String;
    if-eqz v4, :cond_38

    array-length v5, v4

    if-lez v5, :cond_38

    .line 5761
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 5762
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v6, v5, v7, v4}, Lcom/android/server/wm/Watermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_38} :catch_60
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_38} :catch_51
    .catchall {:try_start_e .. :try_end_38} :catchall_3f

    .line 5769
    .end local v3  # "line":Ljava/lang/String;
    .end local v4  # "toks":[Ljava/lang/String;
    .end local v5  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_38
    nop

    .line 5771
    :try_start_39
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 5773
    :goto_3c
    goto :goto_6d

    .line 5772
    :catch_3d
    move-exception v3

    goto :goto_3c

    .line 5769
    :catchall_3f
    move-exception v3

    if-nez v2, :cond_4a

    .line 5774
    if-eqz v1, :cond_50

    .line 5776
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 5778
    goto :goto_50

    .line 5777
    :catch_48
    move-exception v4

    goto :goto_50

    .line 5771
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 5773
    :goto_4d
    goto :goto_50

    .line 5772
    :catch_4e
    move-exception v4

    goto :goto_4d

    .line 5778
    :cond_50
    :goto_50
    throw v3

    .line 5767
    :catch_51
    move-exception v3

    .line 5769
    if-eqz v2, :cond_58

    .line 5771
    :try_start_54
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_3d

    goto :goto_3c

    .line 5774
    :cond_58
    if-eqz v1, :cond_6d

    .line 5776
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 5778
    :goto_5d
    goto :goto_6d

    .line 5777
    :catch_5e
    move-exception v3

    goto :goto_5d

    .line 5766
    :catch_60
    move-exception v3

    .line 5769
    if-eqz v2, :cond_67

    .line 5771
    :try_start_63
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_3d

    goto :goto_3c

    .line 5774
    :cond_67
    if-eqz v1, :cond_6d

    .line 5776
    :try_start_69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_5e

    goto :goto_5d

    .line 5781
    :cond_6d
    :goto_6d
    return-void
.end method

.method deferSurfaceLayout()V
    .registers 2

    .line 2826
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 2827
    return-void
.end method

.method public destroyInputConsumer(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "displayId"  # I

    .line 5909
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5910
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5911
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1b

    .line 5912
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5914
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5915
    .end local v1  # "display":Lcom/android/server/wm/DisplayContent;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 4

    .line 5059
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 5060
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5061
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 5059
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5063
    .end local v0  # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5064
    return-void
.end method

.method public detectSafeMode()Z
    .registers 13

    .line 4480
    const-string v0, "persist.sys.safemode"

    const-string v1, "ro.sys.safemode"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/InputManagerCallback;->waitForInputDevicesReady(J)Z

    move-result v2

    const-string v3, "WindowManager"

    if-nez v2, :cond_15

    .line 4482
    const-string v2, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4488
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4487
    const/4 v4, 0x0

    const-string v5, "safe_boot_disallowed"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_25

    .line 4489
    return v4

    .line 4492
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x52

    const/16 v6, -0x100

    const/4 v7, -0x1

    invoke-virtual {v2, v7, v6, v5}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v2

    .line 4494
    .local v2, "menuState":I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x2f

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v5

    .line 4495
    .local v5, "sState":I
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v9, 0x201

    const/16 v10, 0x17

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v8

    .line 4497
    .local v8, "dpadState":I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v10, 0x10004

    const/16 v11, 0x110

    invoke-virtual {v9, v7, v10, v11}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v9

    .line 4499
    .local v9, "trackballState":I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v11, 0x19

    invoke-virtual {v10, v7, v6, v11}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v6

    .line 4501
    .local v6, "volumeDownState":I
    const/4 v7, 0x1

    if-gtz v2, :cond_63

    if-gtz v5, :cond_63

    if-gtz v8, :cond_63

    if-gtz v9, :cond_63

    if-lez v6, :cond_61

    goto :goto_63

    :cond_61
    move v10, v4

    goto :goto_64

    :cond_63
    :goto_63
    move v10, v7

    :goto_64
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4504
    :try_start_66
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_72

    .line 4505
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_79

    .line 4506
    :cond_72
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4507
    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_79} :catch_7a

    .line 4510
    :cond_79
    goto :goto_7b

    .line 4509
    :catch_7a
    move-exception v0

    .line 4511
    :goto_7b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v0, :cond_bc

    .line 4512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dpad="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " trackball="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c1

    .line 4516
    const-string v0, "1"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 4519
    :cond_bc
    const-string v0, "SAFE MODE not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setSafeMode(Z)V

    .line 4522
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 2910
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "disableKeyguard"

    const/4 v7, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 2912
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    .line 2916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2917
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2919
    .local v1, "origIdentity":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v3, p1, p2, v0, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_30

    .line 2921
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2922
    nop

    .line 2923
    return-void

    .line 2921
    :catchall_30
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2914
    .end local v0  # "callingUid":I
    .end local v1  # "origIdentity":J
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNonVrUi(Z)V
    .registers 7
    .param p1, "disable"  # Z

    .line 7740
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7742
    const/4 v1, 0x1

    if-nez p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 7743
    .local v2, "showAlertWindowNotifications":Z
    :goto_c
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    if-ne v2, v3, :cond_15

    .line 7744
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7746
    :cond_15
    :try_start_15
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 7748
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1e
    if-ltz v3, :cond_30

    .line 7749
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 7750
    .local v1, "s":Lcom/android/server/wm/Session;
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Session;->setShowingAlertWindowNotificationAllowed(Z)V

    .line 7748
    .end local v1  # "s":Lcom/android/server/wm/Session;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 7752
    .end local v2  # "showAlertWindowNotifications":Z
    .end local v3  # "i":I
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7753
    return-void

    .line 7752
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "callback"  # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"  # Ljava/lang/CharSequence;

    .line 3003
    const-string v0, "android.permission.CONTROL_KEYGUARD"

    const-string v1, "dismissKeyguard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3006
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3007
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 3008
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3009
    return-void

    .line 3008
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3004
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    .registers 4
    .param p1, "session"  # Lcom/android/server/wm/Session;

    .line 3141
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3142
    return-void
.end method

.method public displayReady()V
    .registers 5

    .line 4526
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4527
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    if-lez v1, :cond_14

    .line 4528
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 4530
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->applyForcedPropertiesForDefaultDisplay()Z

    move-result v1

    .line 4531
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->ready()V

    .line 4532
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    .line 4533
    if-eqz v1, :cond_29

    .line 4534
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 4536
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.touchscreen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    .line 4538
    .end local v1  # "changed":Z
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4541
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_41} :catch_42

    .line 4543
    goto :goto_43

    .line 4542
    :catch_42
    move-exception v0

    .line 4545
    :goto_43
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    .line 4546
    return-void

    .line 4538
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dontOverrideDisplayInfo(I)V
    .registers 8
    .param p1, "displayId"  # I

    .line 6996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6998
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_30

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6999
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 7000
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_22

    .line 7008
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 7009
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, p1, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 7011
    .end local v4  # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_2a

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_30

    .line 7013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7014
    nop

    .line 7015
    return-void

    .line 7001
    .restart local v4  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_22
    :try_start_22
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Trying to configure a non existent display."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    throw v3

    .line 7011
    .end local v4  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    throw v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .line 7013
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 6388
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 6390
    const-string v0, "window"

    invoke-static {v0}, Lcom/android/server/utils/DebugOptions;->getInstance(Ljava/lang/String;)Lcom/android/server/utils/DebugOptions;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/utils/DebugOptions;->dumpOptions(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6391
    return-void

    .line 6395
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6396
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    .line 3281
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3282
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_4a

    .line 3283
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3284
    .local v1, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3285
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableScreenAfterBoot: mDisplayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mForceDisplayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mShowingBootMessages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSystemBooted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3290
    .end local v1  # "here":Ljava/lang/RuntimeException;
    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_53

    .line 3291
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_6f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3293
    :cond_53
    const/4 v1, 0x1

    :try_start_54
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 3297
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x17

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3298
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_6f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3300
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemBooted()V

    .line 3302
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3303
    return-void

    .line 3298
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enableScreenIfNeeded()V
    .registers 3

    .line 3307
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 3309
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3310
    return-void

    .line 3309
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .registers 4

    .line 3313
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_44

    .line 3314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3315
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScreenIfNeededLocked: mDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mForceDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShowingBootMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSystemBooted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3321
    .end local v0  # "here":Ljava/lang/RuntimeException;
    :cond_44
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_49

    .line 3322
    return-void

    .line 3324
    :cond_49
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v0, :cond_52

    .line 3325
    return-void

    .line 3327
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3328
    return-void
.end method

.method public endProlongedAnimations()V
    .registers 1

    .line 2622
    return-void
.end method

.method public executeAppTransition()V
    .registers 3

    .line 2628
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "executeAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2631
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2632
    return-void

    .line 2629
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .param p1, "callback"  # Landroid/view/IOnKeyguardExitResult;

    .line 2948
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 2953
    if-eqz p1, :cond_17

    .line 2957
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$9;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2967
    return-void

    .line 2954
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2950
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 10
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;

    .line 2466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2468
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_70

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2469
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2470
    .local v3, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_3c

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishDrawingWindow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    if-eqz v3, :cond_30

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v6

    goto :goto_32

    :cond_30
    const-string v6, "null"

    :goto_32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2470
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_3c
    if-eqz v3, :cond_61

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 2473
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_59

    .line 2474
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2477
    :cond_59
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2478
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2480
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    :cond_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_6a

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    .line 2482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2483
    nop

    .line 2484
    return-void

    .line 2480
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    throw v3
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    .line 2482
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    :catchall_70
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method finishSeamlessRotation()V
    .registers 2

    .line 7814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 7815
    return-void
.end method

.method public freezeDisplayRotation(II)V
    .registers 9
    .param p1, "displayId"  # I
    .param p2, "rotation"  # I

    .line 3722
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3726
    const/4 v0, -0x1

    if-lt p2, v0, :cond_50

    const/4 v0, 0x3

    if-gt p2, v0, :cond_50

    .line 3731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3733
    .local v0, "origId":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_4b

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3734
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3735
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_31

    .line 3736
    const-string v4, "WindowManager"

    const-string v5, "Trying to freeze rotation for a missing display."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_45

    .line 3742
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3737
    return-void

    .line 3739
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/wm/DisplayRotation;->freezeRotation(I)V

    .line 3740
    .end local v3  # "display":Lcom/android/server/wm/DisplayContent;
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_45

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4b

    .line 3742
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3743
    nop

    .line 3745
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3746
    return-void

    .line 3740
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "rotation":I
    throw v3
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    .line 3742
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "rotation":I
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3727
    .end local v0  # "origId":J
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3724
    :cond_58
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freezeRotation(I)V
    .registers 3
    .param p1, "rotation"  # I

    .line 3710
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V

    .line 3711
    return-void
.end method

.method public getAnimationScale(I)F
    .registers 3
    .param p1, "which"  # I

    .line 3119
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    .line 3124
    const/4 v0, 0x0

    return v0

    .line 3122
    :cond_a
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0

    .line 3121
    :cond_d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0

    .line 3120
    :cond_10
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0
.end method

.method public getAnimationScales()[F
    .registers 4

    .line 3129
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getBaseDisplayDensity(I)I
    .registers 5
    .param p1, "displayId"  # I

    .line 5218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5219
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5220
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5221
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5223
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5224
    const/4 v0, -0x1

    return v0

    .line 5223
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "size"  # Landroid/graphics/Point;

    .line 5088
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5089
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5090
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5091
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 5092
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 5094
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5095
    return-void

    .line 5094
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCameraLensCoverState()I
    .registers 5

    .line 3190
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3192
    .local v0, "sw":I
    if-lez v0, :cond_f

    .line 3194
    const/4 v1, 0x1

    return v1

    .line 3195
    :cond_f
    if-nez v0, :cond_13

    .line 3197
    const/4 v1, 0x0

    return v1

    .line 3200
    :cond_13
    return v1
.end method

.method public getCurrentAnimatorScale()F
    .registers 3

    .line 3135
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3136
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3137
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 6

    .line 5920
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 5923
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5924
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 5928
    .local v1, "r":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_3c

    .line 5929
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 5930
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_39

    .line 5931
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 5932
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5928
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 5935
    .end local v2  # "i":I
    :cond_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5936
    .end local v1  # "r":Landroid/graphics/Region;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5921
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getCurrentImeTouchRegion is restricted to VR services"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 6568
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayRotation()I
    .registers 3

    .line 3856
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3857
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3858
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDockedStackSide()I
    .registers 4

    .line 6690
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6691
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6692
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 6693
    .local v1, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_12

    const/4 v2, -0x1

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6694
    .end local v1  # "dockedStack":Lcom/android/server/wm/TaskStack;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDragLayerLocked()I
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method getFoldedArea()Landroid/graphics/Rect;
    .registers 5

    .line 4015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4017
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4018
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    .line 4021
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4018
    return-object v3

    .line 4019
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    throw v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 4021
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;
    .registers 4

    .line 4473
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4474
    .local v0, "topFocusedDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 4475
    .local v1, "focusedApp":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 4476
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 4475
    :goto_18
    return-object v2
.end method

.method public getInitialDisplayDensity(I)I
    .registers 5
    .param p1, "displayId"  # I

    .line 5207
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5208
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5209
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5210
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5212
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5213
    const/4 v0, -0x1

    return v0

    .line 5212
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "size"  # Landroid/graphics/Point;

    .line 5077
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5078
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5079
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5080
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 5081
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 5083
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5084
    return-void

    .line 5083
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;
    .registers 2

    .line 1222
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    return-object v0
.end method

.method public getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 2

    .line 2770
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getLidState()I
    .registers 5

    .line 3167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3169
    .local v0, "sw":I
    if-lez v0, :cond_d

    .line 3171
    return v1

    .line 3172
    :cond_d
    if-nez v0, :cond_11

    .line 3174
    const/4 v1, 0x1

    return v1

    .line 3177
    :cond_11
    return v2
.end method

.method public getNavBarPosition(I)I
    .registers 7
    .param p1, "displayId"  # I

    .line 5866
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5869
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5870
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_37

    .line 5871
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNavBarPosition with invalid displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 5872
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5871
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    const/4 v2, -0x1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5875
    :cond_37
    const/4 v2, 0x0

    :try_start_38
    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 5877
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v2

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5878
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPreferredOptionsPanelGravity(I)I
    .registers 5
    .param p1, "displayId"  # I

    .line 4027
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4028
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4029
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_15

    .line 4030
    const/16 v2, 0x51

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4032
    :cond_15
    :try_start_15
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPreferredOptionsPanelGravity()I

    move-result v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4033
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;
    .registers 2

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method public getRemoveContentMode(I)I
    .registers 7
    .param p1, "displayId"  # I
    .annotation build Landroid/view/WindowManager$RemoveContentMode;
    .end annotation

    .line 7073
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "getRemoveContentMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7077
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7078
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7079
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_34

    .line 7080
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to get remove mode of a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7082
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7084
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayWindowSettings;->getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7085
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7074
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "outInsets"  # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6794
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6795
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 6796
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6797
    return-void

    .line 6796
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStableInsetsLocked(ILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "displayId"  # I
    .param p2, "outInsets"  # Landroid/graphics/Rect;

    .line 6800
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6802
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1f

    .line 6803
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 6804
    .local v1, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 6807
    .end local v1  # "di":Landroid/view/DisplayInfo;
    :cond_1f
    return-void
.end method

.method public getStackBounds(IILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .param p3, "bounds"  # Landroid/graphics/Rect;

    .line 2750
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2751
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 2752
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_16

    .line 2753
    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2754
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2756
    :cond_16
    :try_start_16
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2757
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2758
    return-void

    .line 2757
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6
    .param p1, "taskId"  # I
    .param p2, "userId"  # I
    .param p3, "reducedResolution"  # Z
    .param p4, "restoreFromDisk"  # Z

    .line 3678
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionAnimationScaleLocked()F
    .registers 2

    .line 3114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowAnimationScaleLocked()F
    .registers 2

    .line 3110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 5985
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "getWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 5989
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5990
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5991
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 5992
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 5994
    :cond_20
    :try_start_20
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 5995
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-nez v3, :cond_2b

    .line 5996
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 5998
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    if-nez v4, :cond_36

    .line 5999
    new-instance v4, Landroid/view/WindowContentFrameStats;

    invoke-direct {v4}, Landroid/view/WindowContentFrameStats;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 6001
    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 6002
    .local v4, "stats":Landroid/view/WindowContentFrameStats;
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 6003
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6005
    :cond_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 6006
    .end local v1  # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3  # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    .end local v4  # "stats":Landroid/view/WindowContentFrameStats;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5987
    :cond_4e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;
    .param p3, "outDisplayFrame"  # Landroid/graphics/Rect;

    .line 1978
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1979
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1980
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_15

    .line 1981
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1982
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1984
    :cond_15
    :try_start_15
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1985
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1986
    iget v2, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 1988
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1989
    return-void

    .line 1988
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2004
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2005
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2006
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2007
    .end local v1  # "window":Lcom/android/server/wm/WindowState;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .registers 2

    .line 6593
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method public getWindowingMode(I)I
    .registers 7
    .param p1, "displayId"  # I

    .line 7019
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "getWindowingMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7023
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7024
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7025
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_34

    .line 7026
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to get windowing mode of a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7028
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7030
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7031
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7020
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasHdrSupport()Z
    .registers 2

    .line 7761
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasHdrSupport:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasNavigationBar(I)Z
    .registers 5
    .param p1, "displayId"  # I

    .line 5941
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5942
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5943
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_14

    .line 5944
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5946
    :cond_14
    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v2

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5947
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method hasWideColorGamutSupport()Z
    .registers 4

    .line 7756
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 7757
    const-string v0, "persist.sys.sf.native_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    .line 7756
    :goto_10
    return v1
.end method

.method public hideBootMessagesLocked()V
    .registers 4

    .line 3466
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_44

    .line 3467
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3468
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBootMessagesLocked: mDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mForceDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShowingBootMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSystemBooted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3474
    .end local v0  # "here":Ljava/lang/RuntimeException;
    :cond_44
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_50

    .line 3475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3476
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hideBootMessages()V

    .line 3478
    :cond_50
    return-void
.end method

.method inSurfaceTransaction(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "exec"  # Ljava/lang/Runnable;

    .line 7730
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 7732
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 7734
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 7735
    nop

    .line 7736
    return-void

    .line 7734
    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V
    .registers 8
    .param p1, "targetActivityType"  # I
    .param p2, "recentsAnimationRunner"  # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"  # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"  # I
    .param p5, "recentTaskIds"  # Landroid/util/SparseBooleanArray;

    .line 2638
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2639
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/wm/RecentsAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2641
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 2642
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/RecentsAnimationController;->initialize(ILandroid/util/SparseBooleanArray;)V

    .line 2643
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2644
    return-void

    .line 2643
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public injectInputAfterTransactionsApplied(Landroid/view/InputEvent;I)Z
    .registers 9
    .param p1, "ev"  # Landroid/view/InputEvent;
    .param p2, "mode"  # I

    .line 7852
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 7853
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 7854
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    .line 7855
    .local v3, "isDown":Z
    :goto_12
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    move v0, v4

    .line 7856
    .local v0, "isUp":Z
    goto :goto_33

    .line 7857
    .end local v0  # "isUp":Z
    .end local v3  # "isDown":Z
    :cond_1d
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 7858
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    .line 7859
    .restart local v3  # "isDown":Z
    :goto_29
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v1

    :goto_32
    move v0, v4

    .line 7861
    .local v0, "isUp":Z
    :goto_33
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    const/16 v5, 0x2002

    if-ne v4, v5, :cond_3c

    move v1, v2

    .line 7866
    .local v1, "isMouseEvent":Z
    :cond_3c
    if-nez v3, :cond_40

    if-eqz v1, :cond_43

    .line 7867
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->syncInputTransactions()V

    .line 7869
    :cond_43
    const-class v2, Landroid/hardware/input/InputManagerInternal;

    .line 7870
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    .line 7871
    .local v2, "result":Z
    if-eqz v0, :cond_54

    .line 7872
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->syncInputTransactions()V

    .line 7874
    :cond_54
    return v2
.end method

.method intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "display"  # Landroid/graphics/Rect;
    .param p2, "insets"  # Landroid/graphics/Rect;
    .param p3, "inOutBounds"  # Landroid/graphics/Rect;

    .line 6827
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6828
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 6829
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6830
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 3273
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 3274
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 3275
    aget v2, v2, v0

    if-ne v2, p1, :cond_11

    return v1

    .line 3274
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3277
    .end local v0  # "i":I
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayRotationFrozen(I)Z
    .registers 6
    .param p1, "displayId"  # I

    .line 3791
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3792
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3793
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1b

    .line 3794
    const-string v2, "WindowManager"

    const-string v3, "Trying to thaw rotation for a missing display."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3797
    :cond_1b
    :try_start_1b
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->isRotationFrozen()Z

    move-result v2

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3798
    .end local v1  # "display":Lcom/android/server/wm/DisplayContent;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 2971
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 2980
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_19

    .line 2981
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const-string v1, "isKeyguardSecure"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 2983
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERACT_ACROSS_USERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2986
    :cond_19
    :goto_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2988
    .local v0, "origId":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 2990
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    return v2

    .line 2990
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 2

    .line 2975
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardTrusted()Z
    .registers 3

    .line 2844
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2845
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2846
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isRotatingSeamlessly()Z
    .registers 2

    .line 7810
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    return v0
.end method

.method public isRotationFrozen()Z
    .registers 2

    .line 3786
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    move-result v0

    return v0
.end method

.method public isSafeModeEnabled()Z
    .registers 2

    .line 5961
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 1772
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    if-nez v0, :cond_25

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_12

    goto :goto_25

    .line 1777
    :cond_12
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 1778
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1777
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1779
    return v1

    .line 1781
    :cond_23
    const/4 v0, 0x0

    return v0

    .line 1775
    :cond_25
    :goto_25
    return v1
.end method

.method public isShowingDream()Z
    .registers 3

    .line 2995
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isShowingDreamLw()Z

    move-result v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2998
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isSkipDeviceColorMatrix(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 8007
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    .line 8008
    const/4 v0, 0x1

    return v0

    .line 8010
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method isSkipInScreenshotAndScreenrecord(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 8000
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 8001
    const/4 v0, 0x1

    return v0

    .line 8003
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isValidPictureInPictureAspectRatio(IF)Z
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "aspectRatio"  # F

    .line 2743
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2744
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    return v1
.end method

.method public isViewServerRunning()Z
    .registers 4

    .line 4118
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4119
    return v1

    .line 4122
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4123
    return v1

    .line 4126
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public isWindowTraceEnabled()Z
    .registers 2

    .line 5412
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$displayReady$6$WindowManagerService(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 4528
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setMaxUiWidth(I)V

    return-void
.end method

.method public synthetic lambda$new$1$WindowManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7
    .param p1, "properties"  # Landroid/provider/DeviceConfig$Properties;

    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1177
    const/16 v1, 0xc8

    const-string v2, "system_gesture_exclusion_limit_dp"

    .line 1178
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1177
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1179
    .local v1, "exclusionLimitDp":I
    const-string v2, "android:window_manager"

    const-string v4, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-static {v2, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1182
    .local v2, "excludedByPreQSticky":Z
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-ne v3, v2, :cond_23

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    if-eq v3, v1, :cond_2e

    .line 1184
    :cond_23
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    .line 1185
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 1186
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v4, Lcom/android/server/wm/-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1188
    .end local v1  # "exclusionLimitDp":I
    .end local v2  # "excludedByPreQSticky":Z
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1189
    return-void

    .line 1188
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public lockDeviceNow()V
    .registers 2

    .line 3184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 3185
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "options"  # Landroid/os/Bundle;

    .line 5952
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 5953
    return-void
.end method

.method makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 3
    .param p1, "s"  # Landroid/view/SurfaceSession;

    .line 7798
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceBuilderFactory;->make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 5450
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    .line 5451
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing surface while display frozen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 5453
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 5454
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 5455
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v1, :cond_45

    .line 5456
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5459
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xb

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 5463
    :cond_45
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "w"  # Lcom/android/server/wm/WindowState;
    .param p2, "seamlesslyRotated"  # Z

    .line 7256
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eq p2, v0, :cond_34

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_9

    goto :goto_34

    .line 7259
    :cond_9
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 7260
    if-eqz p2, :cond_14

    .line 7261
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto :goto_1a

    .line 7263
    :cond_14
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 7265
    :goto_1a
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    if-nez v0, :cond_33

    .line 7266
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_29

    .line 7267
    const-string v0, "WindowManager"

    const-string v1, "Performing post-rotate rotation after seamless rotation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7269
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->finishSeamlessRotation()V

    .line 7271
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    .line 7273
    :cond_33
    return-void

    .line 7257
    :cond_34
    :goto_34
    return-void
.end method

.method public monitor()V
    .registers 3

    .line 6561
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6562
    return-void

    .line 6561
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveDisplayToTop(I)V
    .registers 7
    .param p1, "displayId"  # I

    .line 2810
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2811
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2812
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq v2, v1, :cond_1f

    .line 2813
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const v3, 0x7fffffff

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    .line 2816
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2817
    return-void

    .line 2816
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchesCleared(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 6028
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6029
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6030
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_11

    .line 6031
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearRelaunching()V

    .line 6033
    .end local v1  # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6034
    return-void

    .line 6033
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunching(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 6010
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6011
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6012
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_11

    .line 6013
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startRelaunching()V

    .line 6015
    .end local v1  # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6016
    return-void

    .line 6015
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchingFinished(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 6019
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6020
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6021
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_11

    .line 6022
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->finishRelaunching()V

    .line 6024
    .end local v1  # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6025
    return-void

    .line 6024
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppResumedFinished(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 6037
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6038
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6039
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_17

    .line 6040
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 6041
    invoke-virtual {v2, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 6043
    .end local v1  # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6044
    return-void

    .line 6043
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 4

    .line 4426
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4427
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .line 4428
    .local v1, "listener":Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 4429
    .local v2, "available":Z
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4430
    if-eqz v1, :cond_13

    .line 4431
    invoke-interface {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    .line 4433
    :cond_13
    return-void

    .line 4429
    .end local v1  # "listener":Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    .end local v2  # "available":Z
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V
    .registers 4
    .param p1, "callback"  # Ljava/lang/Runnable;
    .param p2, "displayId"  # I

    .line 2840
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2841
    return-void
.end method

.method public notifyKeyguardTrustedChanged()V
    .registers 2

    .line 2775
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyKeyguardTrustedChanged()V

    .line 2776
    return-void
.end method

.method public notifyShowingDreamChanged()V
    .registers 3

    .line 2765
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2766
    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .registers 5
    .param p1, "taskId"  # I
    .param p2, "userId"  # I

    .line 6053
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6054
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 6055
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6056
    return-void

    .line 6055
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onAnimationFinished()V
    .registers 3

    .line 7908
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7909
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7910
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7911
    return-void

    .line 7910
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 6582
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6583
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6584
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_11

    .line 6585
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6587
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 6588
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6589
    return-void

    .line 6588
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onInitReady()V
    .registers 3

    .line 1206
    const-string v0, "createWatermarkInTransaction"

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initPolicy()V

    .line 1209
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1213
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 1215
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1216
    nop

    .line 1218
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlayIfNeeded()V

    .line 1219
    return-void

    .line 1215
    :catchall_1a
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method public onKeyguardOccludedChanged(Z)V
    .registers 4
    .param p1, "occluded"  # Z

    .line 3012
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3013
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 3014
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3015
    return-void

    .line 3014
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onKeyguardShowingAndNotOccludedChanged()V
    .registers 3

    .line 2790
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2791
    return-void
.end method

.method onLockTaskStateChanged(I)V
    .registers 7
    .param p1, "lockTaskState"  # I

    .line 7828
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7829
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$5zz5Ugt4wxIXoNE3lZS6NA9z_Jk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$5zz5Ugt4wxIXoNE3lZS6NA9z_Jk;

    .line 7830
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7829
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 7831
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7832
    return-void

    .line 7831
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onOverlayChanged()V
    .registers 4

    .line 6572
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6573
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 6577
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 6578
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6579
    return-void

    .line 6578
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onPowerKeyDown(Z)V
    .registers 6
    .param p1, "isScreenOn"  # Z

    .line 2795
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$99XNq73vh8e4HVH9BuxFhbLxKVY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$99XNq73vh8e4HVH9BuxFhbLxKVY;

    .line 2796
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2795
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 2797
    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "rectangle"  # Landroid/graphics/Rect;

    .line 1992
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1993
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1d

    .line 1994
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1995
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1d

    .line 1996
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1997
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    .line 1996
    invoke-virtual {v2, v3, p2}, Lcom/android/server/wm/AccessibilityController;->onRectangleOnScreenRequestedLocked(ILandroid/graphics/Rect;)V

    .line 2000
    .end local v1  # "window":Lcom/android/server/wm/WindowState;
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2001
    return-void

    .line 2000
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "result"  # Landroid/os/ResultReceiver;

    .line 1012
    new-instance v0, Lcom/android/server/wm/WindowManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerShellCommand;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1013
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 2

    .line 3345
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onSystemUiStarted()V

    .line 3346
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 1230
    :catch_5
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 1234
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    :cond_11
    throw v0
.end method

.method public onUserSwitched()V
    .registers 4

    .line 2801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings()V

    .line 2802
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2804
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 2805
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2806
    return-void

    .line 2805
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    .registers 3
    .param p1, "callback"  # Landroid/view/IWindowSessionCallback;

    .line 5072
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;)V

    return-object v0
.end method

.method openSurfaceTransaction()V
    .registers 5

    .line 899
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "openSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 900
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1f

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 901
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 902
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_19

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1f

    .line 904
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 905
    nop

    .line 906
    return-void

    .line 902
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    throw v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .line 904
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 11
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;

    .line 2450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2453
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_31

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2454
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2455
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_19

    .line 2456
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2b

    .line 2461
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    return v3

    .line 2458
    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v7, "from-client"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_2b

    .line 2461
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2458
    return v3

    .line 2459
    .end local v4  # "win":Lcom/android/server/wm/WindowState;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    throw v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 2461
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    .registers 10
    .param p1, "specsFuture"  # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"  # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"  # Z
    .param p4, "displayId"  # I

    .line 2587
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2588
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2589
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_2e

    .line 2590
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to call overridePendingAppTransitionMultiThumbFuture for the display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " that does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2594
    :cond_2e
    :try_start_2e
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 2596
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2597
    return-void

    .line 2596
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    .registers 8
    .param p1, "remoteAnimationAdapter"  # Landroid/view/RemoteAnimationAdapter;
    .param p2, "displayId"  # I

    .line 2602
    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v1, "overridePendingAppTransitionRemote()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2607
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2608
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2609
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_38

    .line 2610
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to call overridePendingAppTransitionRemote for the display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " that does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2614
    :cond_38
    :try_start_38
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 2616
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2617
    return-void

    .line 2616
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2604
    :cond_48
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performBootTimeout()V
    .registers 4

    .line 3331
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3332
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_f

    .line 3333
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3335
    :cond_f
    :try_start_f
    const-string v1, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 3337
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3338
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3339
    return-void

    .line 3337
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "token"  # Landroid/os/IBinder;

    .line 2011
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2012
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2013
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_12

    .line 2014
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowState;->pokeDrawLockLw(J)V

    .line 2016
    .end local v1  # "window":Lcom/android/server/wm/WindowState;
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2017
    return-void

    .line 2016
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V
    .registers 11
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 1823
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postWindowRemoveCleanupLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1828
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetAppOpsState()V

    .line 1830
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1831
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_39

    .line 1832
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    :cond_39
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1835
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1836
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 1837
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1838
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v4, :cond_61

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final remove of window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 1841
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p1, :cond_6d

    .line 1842
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1845
    :cond_6d
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1846
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1847
    .local v6, "atoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v7, :cond_91

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_91
    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1850
    iget-boolean v1, v5, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    if-nez v1, :cond_9f

    .line 1851
    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    goto :goto_b1

    .line 1852
    :cond_9f
    if-eqz v6, :cond_b1

    .line 1855
    iput-boolean v0, v6, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1856
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1857
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1858
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_b1

    .line 1859
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1864
    .end local v0  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_b1
    :goto_b1
    if-eqz v6, :cond_b6

    .line 1865
    invoke-virtual {v6, p1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1868
    :cond_b6
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_ca

    .line 1869
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1870
    iget v0, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_d9

    .line 1871
    :cond_ca
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d9

    .line 1872
    iget v0, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1875
    :cond_d9
    :goto_d9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 1876
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1877
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1878
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f2

    .line 1879
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1883
    :cond_f2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1884
    return-void
.end method

.method public prepareAppTransition(IZ)V
    .registers 5
    .param p1, "transit"  # I
    .param p2, "alwaysKeepCurrent"  # Z

    .line 2576
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2579
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2581
    return-void

    .line 2577
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reboot(Z)V
    .registers 4
    .param p1, "confirm"  # Z

    .line 3222
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3224
    return-void
.end method

.method public rebootSafeMode(Z)V
    .registers 3
    .param p1, "confirm"  # Z

    .line 3230
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    .line 3232
    return-void
.end method

.method reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 5346
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5347
    return-void

    .line 5349
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 5350
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5352
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v0

    .line 5353
    .local v0, "configChanged":Z
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5354
    .local v1, "currentDisplayConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5355
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 5356
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v4

    :goto_2c
    or-int/2addr v0, v2

    .line 5358
    if-eqz v0, :cond_37

    .line 5359
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 5360
    invoke-virtual {p0, v4, v4, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 5362
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 5365
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5366
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 2927
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "reenableKeyguard"

    const/4 v7, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2929
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3a

    .line 2933
    const-string v0, "token is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2935
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2937
    .local v1, "origIdentity":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->reenableKeyguard(Landroid/os/IBinder;II)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_35

    .line 2939
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2940
    nop

    .line 2941
    return-void

    .line 2939
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2931
    .end local v0  # "callingUid":I
    .end local v1  # "origIdentity":J
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshScreenCaptureDisabled(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 1790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1791
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_26

    .line 1795
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1797
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1798
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v3

    .line 1797
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->setSecureSurfaceState(IZ)V

    .line 1799
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1800
    return-void

    .line 1799
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1792
    :cond_26
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system can call refreshScreenCaptureDisabled."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    .line 7696
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 7697
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7699
    :cond_d
    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/IDisplayFoldListener;

    .line 3982
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3983
    return-void
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 5
    .param p1, "listener"  # Landroid/view/IDockedStackListener;

    .line 6757
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v2, "registerDockedStackListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6759
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6761
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 6763
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6764
    return-void

    .line 6763
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "listener"  # Landroid/view/IPinnedStackListener;

    .line 6768
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v1, "registerPinnedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6770
    return-void

    .line 6772
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_10

    .line 6773
    return-void

    .line 6775
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6776
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6777
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/PinnedStackController;->registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 6778
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6779
    return-void

    .line 6778
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    .registers 5
    .param p1, "listener"  # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .param p2, "displayId"  # I

    .line 3146
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3147
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3148
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_11

    .line 3149
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3151
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3152
    return-void

    .line 3151
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 6
    .param p1, "shortcutCode"  # J
    .param p3, "shortcutKeyReceiver"  # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7239
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v1, "registerShortcutKey"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7243
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 7244
    return-void

    .line 7240
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .registers 8
    .param p1, "listener"  # Landroid/view/ISystemGestureExclusionListener;
    .param p2, "displayId"  # I

    .line 3947
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3948
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3949
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_16

    .line 3953
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V

    .line 3954
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3955
    return-void

    .line 3950
    .restart local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_16
    :try_start_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "listener":Landroid/view/ISystemGestureExclusionListener;
    .end local p2  # "displayId":I
    throw v2

    .line 3954
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "listener":Landroid/view/ISystemGestureExclusionListener;
    .restart local p2  # "displayId":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7979
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v1, "registerSystemGestureListener"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7984
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    .line 7985
    return-void

    .line 7981
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .registers 8
    .param p1, "listener"  # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"  # I

    .line 3924
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3925
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3926
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1e

    .line 3930
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 3931
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3927
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "listener":Landroid/view/IWallpaperVisibilityListener;
    .end local p2  # "displayId":I
    throw v2

    .line 3932
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "listener":Landroid/view/IWallpaperVisibilityListener;
    .restart local p2  # "displayId":I
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I
    .registers 57
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;
    .param p3, "seq"  # I
    .param p4, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p5, "requestedWidth"  # I
    .param p6, "requestedHeight"  # I
    .param p7, "viewVisibility"  # I
    .param p8, "flags"  # I
    .param p9, "frameNumber"  # J
    .param p11, "outFrame"  # Landroid/graphics/Rect;
    .param p12, "outOverscanInsets"  # Landroid/graphics/Rect;
    .param p13, "outContentInsets"  # Landroid/graphics/Rect;
    .param p14, "outVisibleInsets"  # Landroid/graphics/Rect;
    .param p15, "outStableInsets"  # Landroid/graphics/Rect;
    .param p16, "outOutsets"  # Landroid/graphics/Rect;
    .param p17, "outBackdropFrame"  # Landroid/graphics/Rect;
    .param p18, "outCutout"  # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p19, "mergedConfiguration"  # Landroid/util/MergedConfiguration;
    .param p20, "outSurfaceControl"  # Landroid/view/SurfaceControl;
    .param p21, "outInsetsState"  # Landroid/view/InsetsState;

    .line 2030
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v5, p11

    move-object/from16 v6, p19

    move-object/from16 v7, p20

    const/4 v8, 0x0

    .line 2032
    .local v8, "result":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2033
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2034
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2036
    .local v11, "origId":J
    iget-object v13, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2037
    const/4 v14, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v1, v15, v2, v14}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_66f

    move-object/from16 v22, v0

    .line 2038
    .local v22, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v14, v22

    .end local v22  # "win":Lcom/android/server/wm/WindowState;
    .local v14, "win":Lcom/android/server/wm/WindowState;
    if-nez v14, :cond_42

    .line 2039
    :try_start_2e
    monitor-exit v13
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v13, 0x0

    return v13

    .line 2362
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    :catchall_34
    move-exception v0

    move/from16 v31, p5

    move/from16 v30, p6

    move/from16 v24, v9

    move/from16 v28, v10

    move-wide/from16 v25, v11

    move-object v11, v5

    goto/16 :goto_67b

    .line 2041
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    :cond_42
    :try_start_42
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    move/from16 v22, v0

    .line 2042
    .local v22, "displayId":I
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    move-object/from16 v23, v0

    .line 2043
    .local v23, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    move-object/from16 v24, v0

    .line 2045
    .local v24, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_66f

    const/16 v15, 0x7dd

    if-ne v0, v15, :cond_91

    move/from16 v15, v22

    .end local v22  # "displayId":I
    .local v15, "displayId":I
    if-nez v15, :cond_8f

    .line 2046
    :try_start_60
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2047
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v22, v15

    .end local v15  # "displayId":I
    .restart local v22  # "displayId":I
    iget v15, v0, Landroid/view/DisplayInfo;->logicalWidth:I
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_80

    .line 2048
    .end local p5  # "requestedWidth":I
    .local v15, "requestedWidth":I
    :try_start_68
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_71

    .line 2049
    .end local p6  # "requestedHeight":I
    .local v5, "requestedHeight":I
    if-eqz v3, :cond_95

    .line 2050
    :try_start_6c
    iput v15, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2051
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_a1

    goto :goto_95

    .line 2362
    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v5  # "requestedHeight":I
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v22  # "displayId":I
    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local p6  # "requestedHeight":I
    :catchall_71
    move-exception v0

    move/from16 v30, p6

    move/from16 v24, v9

    move/from16 v28, v10

    move-wide/from16 v25, v11

    move/from16 v31, v15

    move-object/from16 v11, p11

    goto/16 :goto_67b

    .end local v15  # "requestedWidth":I
    .restart local p5  # "requestedWidth":I
    :catchall_80
    move-exception v0

    move/from16 v31, p5

    move/from16 v30, p6

    move/from16 v24, v9

    move/from16 v28, v10

    move-wide/from16 v25, v11

    move-object/from16 v11, p11

    goto/16 :goto_67b

    .line 2045
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .local v15, "displayId":I
    .restart local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    :cond_8f
    move/from16 v22, v15

    .line 2055
    .end local v15  # "displayId":I
    .restart local v22  # "displayId":I
    :cond_91
    move/from16 v15, p5

    move/from16 v5, p6

    .end local p5  # "requestedWidth":I
    .end local p6  # "requestedHeight":I
    .restart local v5  # "requestedHeight":I
    .local v15, "requestedWidth":I
    :cond_95
    :goto_95
    :try_start_95
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_661

    move-object/from16 p5, v0

    .line 2056
    .local p5, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/16 v0, 0x8

    if-eq v4, v0, :cond_b0

    .line 2057
    :try_start_9d
    invoke-virtual {v14, v15, v5}, Lcom/android/server/wm/WindowState;->setRequestedSize(II)V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_b0

    .line 2362
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v22  # "displayId":I
    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :catchall_a1
    move-exception v0

    move/from16 v30, v5

    move/from16 v24, v9

    move/from16 v28, v10

    move-wide/from16 v25, v11

    move/from16 v31, v15

    move-object/from16 v11, p11

    goto/16 :goto_67b

    .line 2060
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v22  # "displayId":I
    .restart local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_b0
    :goto_b0
    move-wide/from16 v25, v11

    move-wide/from16 v11, p9

    .end local v11  # "origId":J
    .local v25, "origId":J
    :try_start_b4
    invoke-virtual {v14, v11, v12}, Lcom/android/server/wm/WindowState;->setFrameNumber(J)V

    .line 2062
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v16

    move-object/from16 p6, v16

    .line 2063
    .local p6, "dc":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v11, p6

    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    .local v11, "dc":Lcom/android/server/wm/DisplayContent;
    iget-boolean v12, v11, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z
    :try_end_c1
    .catchall {:try_start_b4 .. :try_end_c1} :catchall_655

    if-nez v12, :cond_d5

    .line 2064
    const/4 v12, 0x0

    :try_start_c4
    invoke-virtual {v14, v12}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_d5

    .line 2362
    .end local v11  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v22  # "displayId":I
    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :catchall_c8
    move-exception v0

    move-object/from16 v11, p11

    move/from16 v30, v5

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v31, v15

    goto/16 :goto_67b

    .line 2067
    .restart local v11  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v22  # "displayId":I
    .restart local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_d5
    :goto_d5
    const/4 v12, 0x0

    .line 2068
    .local v12, "attrChanges":I
    const/16 v16, 0x0

    .line 2069
    .local v16, "flagChanges":I
    move-object/from16 p6, v11

    .end local v11  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_1e6

    .line 2070
    move-object/from16 v11, v24

    .end local v24  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .local v11, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    :try_start_de
    invoke-virtual {v11, v14, v3, v9, v10}, Lcom/android/server/wm/DisplayPolicy;->adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2072
    iget v0, v14, Lcom/android/server/wm/WindowState;->mSeq:I
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_1d9

    move/from16 v18, v12

    move/from16 v12, p3

    .end local v12  # "attrChanges":I
    .local v18, "attrChanges":I
    if-ne v12, v0, :cond_ff

    .line 2073
    :try_start_e9
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v12

    .line 2075
    .local v0, "systemUiVisibility":I
    const/high16 v12, 0x3ff0000

    and-int/2addr v12, v0

    if-eqz v12, :cond_fd

    .line 2076
    invoke-direct {v1, v9, v10}, Lcom/android/server/wm/WindowManagerService;->hasStatusBarPermission(II)Z

    move-result v12

    if-nez v12, :cond_fd

    .line 2077
    const v12, -0x3ff0001

    and-int/2addr v0, v12

    .line 2080
    :cond_fd
    iput v0, v14, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_c8

    .line 2082
    .end local v0  # "systemUiVisibility":I
    :cond_ff
    :try_start_ff
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v12, :cond_1c9

    .line 2088
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_109
    .catchall {:try_start_ff .. :try_end_109} :catchall_1d9

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_125

    .line 2090
    :try_start_10d
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2091
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2092
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2093
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_125
    .catchall {:try_start_10d .. :try_end_125} :catchall_c8

    .line 2096
    :cond_125
    :try_start_125
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_1d9

    move/from16 v24, v9

    .end local v9  # "pid":I
    .local v24, "pid":I
    :try_start_12b
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    xor-int/2addr v9, v12

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    move v0, v9

    .line 2098
    .local v0, "mzFlagChanges":I
    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v9, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_135
    .catchall {:try_start_12b .. :try_end_135} :catchall_1be

    move/from16 v28, v10

    .end local v10  # "uid":I
    .local v28, "uid":I
    :try_start_137
    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v10, v12

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v10

    .line 2099
    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    move v12, v9

    .line 2100
    .end local v18  # "attrChanges":I
    .restart local v12  # "attrChanges":I
    and-int/lit16 v9, v12, 0x4001

    if-eqz v9, :cond_14c

    .line 2102
    const/4 v9, 0x1

    iput-boolean v9, v14, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2104
    :cond_14c
    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/high16 v10, 0x80000

    if-eqz v9, :cond_161

    and-int v9, v16, v10

    if-nez v9, :cond_15c

    const/high16 v9, 0x400000

    and-int v9, v16, v9

    if-eqz v9, :cond_161

    .line 2106
    :cond_15c
    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 2109
    :cond_161
    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_16c

    .line 2110
    move-object/from16 v9, v23

    const/4 v10, 0x0

    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_16e

    .line 2109
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_16c
    move-object/from16 v9, v23

    .line 2113
    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_16e
    const/high16 v10, 0x2000000

    and-int/2addr v10, v12

    if-eqz v10, :cond_18c

    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v10, :cond_18c

    .line 2115
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_187

    .line 2116
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eqz v10, :cond_18c

    .line 2118
    :cond_187
    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v10}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2121
    :cond_18c
    const/high16 v10, 0x80000

    and-int v10, v16, v10

    if-eqz v10, :cond_19b

    .line 2122
    iget-object v10, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2123
    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v10

    .line 2122
    invoke-virtual {v1, v14, v10}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 2125
    :cond_19b
    const/high16 v10, 0x20000

    and-int/2addr v10, v12

    if-eqz v10, :cond_1b5

    .line 2126
    iget-object v10, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v18, 0x1000000

    and-int v10, v10, v18

    if-eqz v10, :cond_1ac

    const/4 v10, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v10, 0x0

    :goto_1ad
    move/from16 v18, v12

    move-object/from16 v12, p5

    .end local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .local v12, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v18  # "attrChanges":I
    invoke-virtual {v12, v10}, Lcom/android/server/wm/WindowStateAnimator;->setColorSpaceAgnosticLocked(Z)V

    goto :goto_1b9

    .line 2125
    .end local v18  # "attrChanges":I
    .local v12, "attrChanges":I
    .restart local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1b5
    move/from16 v18, v12

    move-object/from16 v12, p5

    .line 2131
    .end local v0  # "mzFlagChanges":I
    .end local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .local v12, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v18  # "attrChanges":I
    :goto_1b9
    move/from16 v6, v16

    move/from16 v10, v18

    goto :goto_1f6

    .line 2362
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v16  # "flagChanges":I
    .end local v18  # "attrChanges":I
    .end local v22  # "displayId":I
    .end local v28  # "uid":I
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v10  # "uid":I
    :catchall_1be
    move-exception v0

    move/from16 v28, v10

    move-object/from16 v11, p11

    move/from16 v30, v5

    move/from16 v31, v15

    .end local v10  # "uid":I
    .restart local v28  # "uid":I
    goto/16 :goto_67b

    .line 2083
    .end local v24  # "pid":I
    .end local v28  # "uid":I
    .local v9, "pid":I
    .restart local v10  # "uid":I
    .restart local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v16  # "flagChanges":I
    .restart local v18  # "attrChanges":I
    .restart local v22  # "displayId":I
    .restart local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1c9
    move-object/from16 v12, p5

    move/from16 v24, v9

    move/from16 v28, v10

    move-object/from16 v9, v23

    .end local v10  # "uid":I
    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v24  # "pid":I
    .restart local v28  # "uid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v10, "Window type can not be changed after the window is added."

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5  # "requestedHeight":I
    .end local v8  # "result":I
    .end local v15  # "requestedWidth":I
    .end local v24  # "pid":I
    .end local v25  # "origId":J
    .end local v28  # "uid":I
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    .end local p3  # "seq":I
    .end local p4  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local p7  # "viewVisibility":I
    .end local p8  # "flags":I
    .end local p9  # "frameNumber":J
    .end local p11  # "outFrame":Landroid/graphics/Rect;
    .end local p12  # "outOverscanInsets":Landroid/graphics/Rect;
    .end local p13  # "outContentInsets":Landroid/graphics/Rect;
    .end local p14  # "outVisibleInsets":Landroid/graphics/Rect;
    .end local p15  # "outStableInsets":Landroid/graphics/Rect;
    .end local p16  # "outOutsets":Landroid/graphics/Rect;
    .end local p17  # "outBackdropFrame":Landroid/graphics/Rect;
    .end local p18  # "outCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    .end local p19  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local p20  # "outSurfaceControl":Landroid/view/SurfaceControl;
    .end local p21  # "outInsetsState":Landroid/view/InsetsState;
    throw v0
    :try_end_1d9
    .catchall {:try_start_137 .. :try_end_1d9} :catchall_235

    .line 2362
    .end local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v16  # "flagChanges":I
    .end local v18  # "attrChanges":I
    .end local v22  # "displayId":I
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v5  # "requestedHeight":I
    .restart local v8  # "result":I
    .local v9, "pid":I
    .restart local v10  # "uid":I
    .restart local v15  # "requestedWidth":I
    .restart local v25  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    .restart local p3  # "seq":I
    .restart local p4  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local p7  # "viewVisibility":I
    .restart local p8  # "flags":I
    .restart local p9  # "frameNumber":J
    .restart local p11  # "outFrame":Landroid/graphics/Rect;
    .restart local p12  # "outOverscanInsets":Landroid/graphics/Rect;
    .restart local p13  # "outContentInsets":Landroid/graphics/Rect;
    .restart local p14  # "outVisibleInsets":Landroid/graphics/Rect;
    .restart local p15  # "outStableInsets":Landroid/graphics/Rect;
    .restart local p16  # "outOutsets":Landroid/graphics/Rect;
    .restart local p17  # "outBackdropFrame":Landroid/graphics/Rect;
    .restart local p18  # "outCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    .restart local p19  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local p20  # "outSurfaceControl":Landroid/view/SurfaceControl;
    .restart local p21  # "outInsetsState":Landroid/view/InsetsState;
    :catchall_1d9
    move-exception v0

    move/from16 v24, v9

    move/from16 v28, v10

    move-object/from16 v11, p11

    move/from16 v30, v5

    move/from16 v31, v15

    .end local v9  # "pid":I
    .end local v10  # "uid":I
    .restart local v24  # "pid":I
    .restart local v28  # "uid":I
    goto/16 :goto_67b

    .line 2069
    .end local v28  # "uid":I
    .restart local v9  # "pid":I
    .restart local v10  # "uid":I
    .local v12, "attrChanges":I
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v16  # "flagChanges":I
    .restart local v22  # "displayId":I
    .restart local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v24, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1e6
    move/from16 v28, v10

    move/from16 v18, v12

    move-object/from16 v11, v24

    move-object/from16 v12, p5

    move/from16 v24, v9

    move-object/from16 v9, v23

    .end local v10  # "uid":I
    .end local v23  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local p5  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .local v12, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v18  # "attrChanges":I
    .local v24, "pid":I
    .restart local v28  # "uid":I
    move/from16 v6, v16

    move/from16 v10, v18

    .line 2131
    .end local v16  # "flagChanges":I
    .end local v18  # "attrChanges":I
    .local v6, "flagChanges":I
    .local v10, "attrChanges":I
    :goto_1f6
    :try_start_1f6
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z
    :try_end_1f8
    .catchall {:try_start_1f6 .. :try_end_1f8} :catchall_64d

    if-eqz v0, :cond_23e

    :try_start_1fa
    const-string v0, "WindowManager"

    move-object/from16 v23, v11

    .end local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .local v23, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relayout "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": viewVisibility="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_234
    .catchall {:try_start_1fa .. :try_end_234} :catchall_235

    goto :goto_240

    .line 2362
    .end local v6  # "flagChanges":I
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v10  # "attrChanges":I
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v22  # "displayId":I
    .end local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_235
    move-exception v0

    move-object/from16 v11, p11

    move/from16 v30, v5

    move/from16 v31, v15

    goto/16 :goto_67b

    .line 2131
    .restart local v6  # "flagChanges":I
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v10  # "attrChanges":I
    .restart local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v22  # "displayId":I
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_23e
    move-object/from16 v23, v11

    .line 2133
    .end local v11  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    :goto_240
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_246

    const/4 v0, 0x1

    goto :goto_247

    :cond_246
    const/4 v0, 0x0

    :goto_247
    :try_start_247
    iput-boolean v0, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z
    :try_end_249
    .catchall {:try_start_247 .. :try_end_249} :catchall_64d

    .line 2134
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_251

    .line 2135
    :try_start_24d
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v0, v12, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_235

    .line 2137
    :cond_251
    :try_start_251
    iget v0, v14, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, v14, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v14, v0, v2}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    .line 2139
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I
    :try_end_25e
    .catchall {:try_start_251 .. :try_end_25e} :catchall_64d

    if-nez v0, :cond_278

    :try_start_260
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_278

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_278

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_276
    .catchall {:try_start_260 .. :try_end_276} :catchall_235

    if-eqz v0, :cond_27c

    .line 2143
    :cond_278
    const/4 v2, 0x0

    :try_start_279
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2146
    :cond_27c
    iget v0, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move v2, v0

    .line 2150
    .local v2, "oldVisibility":I
    const/4 v0, 0x4

    if-eq v2, v0, :cond_286

    const/16 v11, 0x8

    if-ne v2, v11, :cond_28a

    :cond_286
    if-nez v4, :cond_28a

    const/4 v11, 0x1

    goto :goto_28b

    :cond_28a
    const/4 v11, 0x0

    .line 2153
    .local v11, "becameVisible":Z
    :goto_28b
    const v16, 0x20008

    and-int v16, v6, v16

    if-nez v16, :cond_298

    if-eqz v11, :cond_295

    goto :goto_298

    :cond_295
    const/16 v16, 0x0

    goto :goto_29a

    :cond_298
    :goto_298
    const/16 v16, 0x1

    .line 2155
    .local v16, "imMayMove":Z
    :goto_29a
    iget v0, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I
    :try_end_29c
    .catchall {:try_start_279 .. :try_end_29c} :catchall_64d

    if-ne v0, v4, :cond_2a9

    and-int/lit8 v0, v6, 0x8

    if-nez v0, :cond_2a9

    :try_start_2a2
    iget-boolean v0, v14, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z
    :try_end_2a4
    .catchall {:try_start_2a2 .. :try_end_2a4} :catchall_235

    if-nez v0, :cond_2a7

    goto :goto_2a9

    :cond_2a7
    const/4 v0, 0x0

    goto :goto_2aa

    :cond_2a9
    :goto_2a9
    const/4 v0, 0x1

    .line 2159
    .local v0, "focusMayChange":Z
    :goto_2aa
    :try_start_2aa
    iget v3, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I
    :try_end_2ac
    .catchall {:try_start_2aa .. :try_end_2ac} :catchall_64d

    const/high16 v17, 0x100000

    if-eq v3, v4, :cond_2ba

    :try_start_2b0
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v3, v3, v17

    if-eqz v3, :cond_2ba

    const/4 v3, 0x1

    goto :goto_2bb

    :cond_2ba
    const/4 v3, 0x0

    .line 2161
    .local v3, "wallpaperMayMove":Z
    :goto_2bb
    and-int v17, v6, v17

    if-eqz v17, :cond_2c2

    const/16 v17, 0x1

    goto :goto_2c4

    :cond_2c2
    const/16 v17, 0x0

    :goto_2c4
    or-int v3, v3, v17

    .line 2162
    move/from16 v29, v11

    .end local v11  # "becameVisible":Z
    .local v29, "becameVisible":Z
    and-int/lit16 v11, v6, 0x2000

    if-eqz v11, :cond_2dc

    iget-object v11, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v11, :cond_2dc

    .line 2163
    iget-object v11, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v17, v6

    .end local v6  # "flagChanges":I
    .local v17, "flagChanges":I
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V
    :try_end_2db
    .catchall {:try_start_2b0 .. :try_end_2db} :catchall_235

    goto :goto_2de

    .line 2162
    .end local v17  # "flagChanges":I
    .restart local v6  # "flagChanges":I
    :cond_2dc
    move/from16 v17, v6

    .line 2166
    .end local v6  # "flagChanges":I
    .restart local v17  # "flagChanges":I
    :goto_2de
    const/4 v6, 0x1

    :try_start_2df
    iput-boolean v6, v14, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2167
    iput-boolean v6, v14, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2169
    iput v4, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2170
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z
    :try_end_2e7
    .catchall {:try_start_2df .. :try_end_2e7} :catchall_64d

    if-eqz v6, :cond_32c

    .line 2171
    :try_start_2e9
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    .line 2172
    .local v6, "stack":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2173
    const-string v11, "WindowManager"
    :try_end_2f3
    .catchall {:try_start_2e9 .. :try_end_2f3} :catchall_323

    move/from16 v30, v5

    .end local v5  # "requestedHeight":I
    .local v30, "requestedHeight":I
    :try_start_2f5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2fa
    .catchall {:try_start_2f5 .. :try_end_2fa} :catchall_31c

    move/from16 v31, v15

    .end local v15  # "requestedWidth":I
    .local v31, "requestedWidth":I
    :try_start_2fc
    const-string v15, "Relayout "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": oldVis="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " newVis="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_330

    .line 2362
    .end local v0  # "focusMayChange":Z
    .end local v2  # "oldVisibility":I
    .end local v3  # "wallpaperMayMove":Z
    .end local v6  # "stack":Ljava/lang/RuntimeException;
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v10  # "attrChanges":I
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v16  # "imMayMove":Z
    .end local v17  # "flagChanges":I
    .end local v22  # "displayId":I
    .end local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v29  # "becameVisible":Z
    .end local v31  # "requestedWidth":I
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v15  # "requestedWidth":I
    :catchall_31c
    move-exception v0

    move/from16 v31, v15

    move-object/from16 v11, p11

    .end local v15  # "requestedWidth":I
    .restart local v31  # "requestedWidth":I
    goto/16 :goto_67b

    .end local v30  # "requestedHeight":I
    .end local v31  # "requestedWidth":I
    .restart local v5  # "requestedHeight":I
    .restart local v15  # "requestedWidth":I
    :catchall_323
    move-exception v0

    move/from16 v30, v5

    move/from16 v31, v15

    move-object/from16 v11, p11

    goto/16 :goto_654

    .line 2170
    .restart local v0  # "focusMayChange":Z
    .restart local v2  # "oldVisibility":I
    .restart local v3  # "wallpaperMayMove":Z
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v10  # "attrChanges":I
    .restart local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v16  # "imMayMove":Z
    .restart local v17  # "flagChanges":I
    .restart local v22  # "displayId":I
    .restart local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v29  # "becameVisible":Z
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_32c
    move/from16 v30, v5

    move/from16 v31, v15

    .line 2177
    .end local v5  # "requestedHeight":I
    .end local v15  # "requestedWidth":I
    .restart local v30  # "requestedHeight":I
    .restart local v31  # "requestedWidth":I
    :goto_330
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2178
    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_339

    const/4 v5, 0x1

    goto :goto_33a

    :cond_339
    const/4 v5, 0x0

    :goto_33a
    iput-boolean v5, v14, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2182
    if-nez v4, :cond_353

    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_351

    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_351

    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2184
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v5

    if-nez v5, :cond_353

    :cond_351
    const/4 v5, 0x1

    goto :goto_354

    :cond_353
    const/4 v5, 0x0

    .line 2195
    .local v5, "shouldRelayout":Z
    :goto_354
    if-nez v5, :cond_392

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v6

    if-eqz v6, :cond_392

    iget-boolean v6, v14, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v6, :cond_392

    .line 2196
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v6, :cond_384

    .line 2197
    const-string v6, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Relayout invis "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": mAnimatingExit="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v14, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_384
    or-int/lit8 v8, v8, 0x4

    .line 2201
    iget-boolean v6, v14, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v6, :cond_390

    .line 2202
    invoke-direct {v1, v14, v12, v0}, Lcom/android/server/wm/WindowManagerService;->tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;Z)Z

    move-result v6

    move v0, v6

    goto :goto_393

    .line 2201
    :cond_390
    move v6, v0

    goto :goto_393

    .line 2208
    :cond_392
    move v6, v0

    .end local v0  # "focusMayChange":Z
    .local v6, "focusMayChange":Z
    :goto_393
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 2210
    move v11, v2

    move v15, v3

    .end local v2  # "oldVisibility":I
    .end local v3  # "wallpaperMayMove":Z
    .local v11, "oldVisibility":I
    .local v15, "wallpaperMayMove":Z
    const-wide/16 v2, 0x20

    if-eqz v5, :cond_410

    .line 2211
    const-string v0, "relayoutWindow: viewVisibility_1"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2213
    invoke-virtual {v14, v8, v10}, Lcom/android/server/wm/WindowState;->relayoutVisibleWindow(II)I

    move-result v0
    :try_end_3a8
    .catchall {:try_start_2fc .. :try_end_3a8} :catchall_649

    move v8, v0

    .line 2216
    :try_start_3a9
    invoke-direct {v1, v7, v8, v14, v12}, Lcom/android/server/wm/WindowManagerService;->createSurfaceControl(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_3a9 .. :try_end_3ad} :catch_3cf
    .catchall {:try_start_3a9 .. :try_end_3ad} :catchall_649

    move v8, v0

    .line 2225
    nop

    .line 2226
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_3b4

    .line 2227
    const/4 v6, 0x1

    .line 2229
    :cond_3b4
    :try_start_3b4
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v0, v2, :cond_3c5

    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_3c5

    .line 2231
    invoke-virtual {v9, v14}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2232
    const/16 v16, 0x1

    .line 2234
    :cond_3c5
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->adjustStartingWindowFlags()V

    .line 2235
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_47a

    .line 2217
    :catch_3cf
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2220
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    .end local v6  # "focusMayChange":Z
    .local v18, "focusMayChange":Z
    const-string v6, "Exception thrown when creating surface for client "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2221
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2220
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    monitor-exit v13
    :try_end_40b
    .catchall {:try_start_3b4 .. :try_end_40b} :catchall_649

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    return v2

    .line 2237
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v18  # "focusMayChange":Z
    .restart local v6  # "focusMayChange":Z
    :cond_410
    move/from16 v18, v6

    .end local v6  # "focusMayChange":Z
    .restart local v18  # "focusMayChange":Z
    :try_start_412
    const-string v0, "relayoutWindow: viewVisibility_2"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2239
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 2240
    iput-boolean v2, v12, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 2242
    if-nez v4, :cond_438

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_438

    .line 2246
    const-string v0, "relayoutWindow: getSurface"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2247
    iget-object v0, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowSurfaceController;->getSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2248
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-wide/16 v2, 0x20

    goto :goto_475

    .line 2250
    :cond_438
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_452

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_452
    .catchall {:try_start_412 .. :try_end_452} :catchall_649

    .line 2253
    :cond_452
    :try_start_452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wmReleaseOutSurface_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2254
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2255
    invoke-virtual/range {p20 .. p20}, Landroid/view/SurfaceControl;->release()V
    :try_end_471
    .catchall {:try_start_452 .. :try_end_471} :catchall_636

    .line 2257
    :try_start_471
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2258
    nop

    .line 2261
    :goto_475
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v6, v18

    .line 2264
    .end local v18  # "focusMayChange":Z
    .restart local v6  # "focusMayChange":Z
    :goto_47a
    if-eqz v6, :cond_489

    .line 2265
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-eqz v0, :cond_489

    .line 2266
    const/16 v16, 0x0

    move/from16 v0, v16

    goto :goto_48b

    .line 2272
    :cond_489
    move/from16 v0, v16

    .end local v16  # "imMayMove":Z
    .local v0, "imMayMove":Z
    :goto_48b
    and-int/lit8 v2, v8, 0x2

    if-eqz v2, :cond_491

    const/4 v2, 0x1

    goto :goto_492

    :cond_491
    const/4 v2, 0x0

    .line 2273
    .local v2, "toBeDisplayed":Z
    :goto_492
    if-eqz v0, :cond_49e

    .line 2274
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2275
    if-eqz v2, :cond_49e

    .line 2280
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2284
    :cond_49e
    if-eqz v15, :cond_4a8

    .line 2285
    iget v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/16 v16, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2289
    :cond_4a8
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_4b6

    .line 2290
    iget-object v3, v9, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    move/from16 p5, v0

    .end local v0  # "imMayMove":Z
    .local p5, "imMayMove":Z
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_4b8

    .line 2289
    .end local p5  # "imMayMove":Z
    .restart local v0  # "imMayMove":Z
    :cond_4b6
    move/from16 p5, v0

    .line 2293
    .end local v0  # "imMayMove":Z
    .restart local p5  # "imMayMove":Z
    :goto_4b8
    const-string v0, "relayoutWindow: updateOrientationFromAppTokens"

    move v3, v10

    move/from16 v32, v11

    const-wide/16 v10, 0x20

    .end local v10  # "attrChanges":I
    .end local v11  # "oldVisibility":I
    .local v3, "attrChanges":I
    .local v32, "oldVisibility":I
    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2295
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v0

    .line 2296
    .local v0, "configChanged":Z
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2298
    if-eqz v2, :cond_4e4

    iget-boolean v10, v14, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v10, :cond_4e4

    .line 2299
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 2300
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v11, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move/from16 v33, v2

    .end local v2  # "toBeDisplayed":Z
    .local v33, "toBeDisplayed":Z
    iget v2, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v34, v3

    .end local v3  # "attrChanges":I
    .local v34, "attrChanges":I
    iget v3, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v16, v10

    const/4 v10, 0x0

    .end local v10  # "displayInfo":Landroid/view/DisplayInfo;
    .local v16, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v11, v14, v2, v3, v10}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    goto :goto_4e8

    .line 2298
    .end local v16  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v33  # "toBeDisplayed":Z
    .end local v34  # "attrChanges":I
    .restart local v2  # "toBeDisplayed":Z
    .restart local v3  # "attrChanges":I
    :cond_4e4
    move/from16 v33, v2

    move/from16 v34, v3

    .line 2303
    .end local v2  # "toBeDisplayed":Z
    .end local v3  # "attrChanges":I
    .restart local v33  # "toBeDisplayed":Z
    .restart local v34  # "attrChanges":I
    :goto_4e8
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_4f1

    .line 2304
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2306
    :cond_4f1
    iget-boolean v2, v12, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    if-eqz v2, :cond_4fb

    .line 2307
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 2308
    or-int/lit8 v2, v8, 0x20

    move v8, v2

    .line 2310
    :cond_4fb
    move-object/from16 v2, v23

    .end local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .local v2, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual {v2, v14}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_506

    .line 2311
    or-int/lit8 v3, v8, 0x40

    move v8, v3

    .line 2313
    :cond_506
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-nez v3, :cond_50f

    .line 2314
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 2327
    :cond_50f
    if-eqz v5, :cond_519

    .line 2328
    move-object/from16 v3, p19

    move/from16 v10, v17

    .end local v17  # "flagChanges":I
    .local v10, "flagChanges":I
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V

    goto :goto_520

    .line 2330
    .end local v10  # "flagChanges":I
    .restart local v17  # "flagChanges":I
    :cond_519
    move-object/from16 v3, p19

    move/from16 v10, v17

    .end local v17  # "flagChanges":I
    .restart local v10  # "flagChanges":I
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowState;->getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2333
    :goto_520
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2337
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V
    :try_end_526
    .catchall {:try_start_471 .. :try_end_526} :catchall_649

    .line 2339
    move-object/from16 v11, p11

    :try_start_528
    invoke-virtual {v14, v11}, Lcom/android/server/wm/WindowState;->getCompatFrame(Landroid/graphics/Rect;)V

    .line 2340
    move-object/from16 v16, v14

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/WindowState;->getInsetsForRelayout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2342
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v16

    move-object/from16 v23, v2

    .end local v2  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    move-object/from16 v3, p18

    invoke-virtual {v3, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 2343
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v3, p17

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2344
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    move-object/from16 v3, p21

    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 2345
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_5be

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    .end local v5  # "shouldRelayout":Z
    .local v17, "shouldRelayout":Z
    const-string v5, "Relayout given client "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", requestedWidth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_581
    .catchall {:try_start_528 .. :try_end_581} :catchall_680

    move/from16 v5, v31

    .end local v31  # "requestedWidth":I
    .local v5, "requestedWidth":I
    :try_start_583
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_586
    .catchall {:try_start_583 .. :try_end_586} :catchall_5b9

    move/from16 v31, v5

    .end local v5  # "requestedWidth":I
    .restart local v31  # "requestedWidth":I
    :try_start_588
    const-string v5, ", requestedHeight="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58d
    .catchall {:try_start_588 .. :try_end_58d} :catchall_680

    move/from16 v5, v30

    .end local v30  # "requestedHeight":I
    .local v5, "requestedHeight":I
    :try_start_58f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_592
    .catchall {:try_start_58f .. :try_end_592} :catchall_5b4

    move/from16 v30, v5

    .end local v5  # "requestedHeight":I
    .restart local v30  # "requestedHeight":I
    :try_start_594
    const-string v5, ", viewVisibility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nRelayout returning frame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", surface="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2345
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c0

    .line 2362
    .end local v0  # "configChanged":Z
    .end local v6  # "focusMayChange":Z
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v10  # "flagChanges":I
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v15  # "wallpaperMayMove":Z
    .end local v17  # "shouldRelayout":Z
    .end local v22  # "displayId":I
    .end local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v29  # "becameVisible":Z
    .end local v30  # "requestedHeight":I
    .end local v32  # "oldVisibility":I
    .end local v33  # "toBeDisplayed":Z
    .end local v34  # "attrChanges":I
    .end local p5  # "imMayMove":Z
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v5  # "requestedHeight":I
    :catchall_5b4
    move-exception v0

    move/from16 v30, v5

    .end local v5  # "requestedHeight":I
    .restart local v30  # "requestedHeight":I
    goto/16 :goto_67b

    .end local v31  # "requestedWidth":I
    .local v5, "requestedWidth":I
    :catchall_5b9
    move-exception v0

    move/from16 v31, v5

    .end local v5  # "requestedWidth":I
    .restart local v31  # "requestedWidth":I
    goto/16 :goto_67b

    .line 2345
    .restart local v0  # "configChanged":Z
    .local v5, "shouldRelayout":Z
    .restart local v6  # "focusMayChange":Z
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v10  # "flagChanges":I
    .restart local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v15  # "wallpaperMayMove":Z
    .restart local v22  # "displayId":I
    .restart local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v29  # "becameVisible":Z
    .restart local v32  # "oldVisibility":I
    .restart local v33  # "toBeDisplayed":Z
    .restart local v34  # "attrChanges":I
    .restart local p5  # "imMayMove":Z
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_5be
    move/from16 v17, v5

    .line 2353
    .end local v5  # "shouldRelayout":Z
    .restart local v17  # "shouldRelayout":Z
    :goto_5c0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v2, :cond_5c8

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v2, :cond_5e6

    :cond_5c8
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Relayout of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": focusMayChange="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_5e6
    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v2, :cond_5ed

    const/16 v27, 0x1

    goto :goto_5ef

    :cond_5ed
    const/16 v27, 0x0

    :goto_5ef
    or-int v8, v8, v27

    .line 2358
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_617

    .line 2359
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Relayout complete "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": outFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_617
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2362
    .end local v6  # "focusMayChange":Z
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v10  # "flagChanges":I
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v15  # "wallpaperMayMove":Z
    .end local v17  # "shouldRelayout":Z
    .end local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v29  # "becameVisible":Z
    .end local v32  # "oldVisibility":I
    .end local v33  # "toBeDisplayed":Z
    .end local v34  # "attrChanges":I
    .end local p5  # "imMayMove":Z
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v13
    :try_end_61b
    .catchall {:try_start_594 .. :try_end_61b} :catchall_680

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2364
    if-eqz v0, :cond_630

    .line 2365
    const-string v2, "relayoutWindow: sendNewConfiguration"

    const-wide/16 v5, 0x20

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2366
    move/from16 v2, v22

    .end local v22  # "displayId":I
    .local v2, "displayId":I
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 2367
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_632

    .line 2364
    .end local v2  # "displayId":I
    .restart local v22  # "displayId":I
    :cond_630
    move/from16 v2, v22

    .line 2369
    .end local v22  # "displayId":I
    .restart local v2  # "displayId":I
    :goto_632
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2370
    return v8

    .line 2257
    .end local v0  # "configChanged":Z
    .end local v2  # "displayId":I
    .restart local v5  # "shouldRelayout":Z
    .restart local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v10, "attrChanges":I
    .restart local v11  # "oldVisibility":I
    .restart local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v14  # "win":Lcom/android/server/wm/WindowState;
    .restart local v15  # "wallpaperMayMove":Z
    .local v16, "imMayMove":Z
    .local v17, "flagChanges":I
    .restart local v18  # "focusMayChange":Z
    .restart local v22  # "displayId":I
    .restart local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .restart local v29  # "becameVisible":Z
    .restart local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_636
    move-exception v0

    move/from16 v34, v10

    move/from16 v32, v11

    move/from16 v10, v17

    move/from16 v2, v22

    move-object/from16 v11, p11

    move/from16 v17, v5

    .end local v5  # "shouldRelayout":Z
    .end local v11  # "oldVisibility":I
    .end local v22  # "displayId":I
    .restart local v2  # "displayId":I
    .local v10, "flagChanges":I
    .local v17, "shouldRelayout":Z
    .restart local v32  # "oldVisibility":I
    .restart local v34  # "attrChanges":I
    const-wide/16 v5, 0x20

    :try_start_645
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .end local v8  # "result":I
    .end local v24  # "pid":I
    .end local v25  # "origId":J
    .end local v28  # "uid":I
    .end local v30  # "requestedHeight":I
    .end local v31  # "requestedWidth":I
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    .end local p3  # "seq":I
    .end local p4  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local p7  # "viewVisibility":I
    .end local p8  # "flags":I
    .end local p9  # "frameNumber":J
    .end local p11  # "outFrame":Landroid/graphics/Rect;
    .end local p12  # "outOverscanInsets":Landroid/graphics/Rect;
    .end local p13  # "outContentInsets":Landroid/graphics/Rect;
    .end local p14  # "outVisibleInsets":Landroid/graphics/Rect;
    .end local p15  # "outStableInsets":Landroid/graphics/Rect;
    .end local p16  # "outOutsets":Landroid/graphics/Rect;
    .end local p17  # "outBackdropFrame":Landroid/graphics/Rect;
    .end local p18  # "outCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    .end local p19  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local p20  # "outSurfaceControl":Landroid/view/SurfaceControl;
    .end local p21  # "outInsetsState":Landroid/view/InsetsState;
    throw v0

    .line 2362
    .end local v2  # "displayId":I
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v10  # "flagChanges":I
    .end local v12  # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v14  # "win":Lcom/android/server/wm/WindowState;
    .end local v15  # "wallpaperMayMove":Z
    .end local v16  # "imMayMove":Z
    .end local v17  # "shouldRelayout":Z
    .end local v18  # "focusMayChange":Z
    .end local v23  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v29  # "becameVisible":Z
    .end local v32  # "oldVisibility":I
    .end local v34  # "attrChanges":I
    .end local p6  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v8  # "result":I
    .restart local v24  # "pid":I
    .restart local v25  # "origId":J
    .restart local v28  # "uid":I
    .restart local v30  # "requestedHeight":I
    .restart local v31  # "requestedWidth":I
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    .restart local p3  # "seq":I
    .restart local p4  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local p7  # "viewVisibility":I
    .restart local p8  # "flags":I
    .restart local p9  # "frameNumber":J
    .restart local p11  # "outFrame":Landroid/graphics/Rect;
    .restart local p12  # "outOverscanInsets":Landroid/graphics/Rect;
    .restart local p13  # "outContentInsets":Landroid/graphics/Rect;
    .restart local p14  # "outVisibleInsets":Landroid/graphics/Rect;
    .restart local p15  # "outStableInsets":Landroid/graphics/Rect;
    .restart local p16  # "outOutsets":Landroid/graphics/Rect;
    .restart local p17  # "outBackdropFrame":Landroid/graphics/Rect;
    .restart local p18  # "outCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    .restart local p19  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local p20  # "outSurfaceControl":Landroid/view/SurfaceControl;
    .restart local p21  # "outInsetsState":Landroid/view/InsetsState;
    :catchall_649
    move-exception v0

    move-object/from16 v11, p11

    goto :goto_67b

    .end local v30  # "requestedHeight":I
    .end local v31  # "requestedWidth":I
    .local v5, "requestedHeight":I
    .local v15, "requestedWidth":I
    :catchall_64d
    move-exception v0

    move-object/from16 v11, p11

    move/from16 v30, v5

    move/from16 v31, v15

    .end local v5  # "requestedHeight":I
    .end local v15  # "requestedWidth":I
    .restart local v30  # "requestedHeight":I
    .restart local v31  # "requestedWidth":I
    :goto_654
    goto :goto_67b

    .end local v24  # "pid":I
    .end local v28  # "uid":I
    .end local v30  # "requestedHeight":I
    .end local v31  # "requestedWidth":I
    .restart local v5  # "requestedHeight":I
    .local v9, "pid":I
    .local v10, "uid":I
    .restart local v15  # "requestedWidth":I
    :catchall_655
    move-exception v0

    move-object/from16 v11, p11

    move/from16 v30, v5

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v31, v15

    .end local v5  # "requestedHeight":I
    .end local v9  # "pid":I
    .end local v10  # "uid":I
    .end local v15  # "requestedWidth":I
    .restart local v24  # "pid":I
    .restart local v28  # "uid":I
    .restart local v30  # "requestedHeight":I
    .restart local v31  # "requestedWidth":I
    goto :goto_67b

    .end local v24  # "pid":I
    .end local v25  # "origId":J
    .end local v28  # "uid":I
    .end local v30  # "requestedHeight":I
    .end local v31  # "requestedWidth":I
    .restart local v5  # "requestedHeight":I
    .restart local v9  # "pid":I
    .restart local v10  # "uid":I
    .local v11, "origId":J
    .restart local v15  # "requestedWidth":I
    :catchall_661
    move-exception v0

    move/from16 v30, v5

    move/from16 v24, v9

    move/from16 v28, v10

    move-wide/from16 v25, v11

    move/from16 v31, v15

    move-object/from16 v11, p11

    .end local v5  # "requestedHeight":I
    .end local v9  # "pid":I
    .end local v10  # "uid":I
    .end local v11  # "origId":J
    .end local v15  # "requestedWidth":I
    .restart local v24  # "pid":I
    .restart local v25  # "origId":J
    .restart local v28  # "uid":I
    .restart local v30  # "requestedHeight":I
    .restart local v31  # "requestedWidth":I
    goto :goto_67b

    .end local v24  # "pid":I
    .end local v25  # "origId":J
    .end local v28  # "uid":I
    .end local v30  # "requestedHeight":I
    .end local v31  # "requestedWidth":I
    .restart local v9  # "pid":I
    .restart local v10  # "uid":I
    .restart local v11  # "origId":J
    .local p5, "requestedWidth":I
    .local p6, "requestedHeight":I
    :catchall_66f
    move-exception v0

    move/from16 v24, v9

    move/from16 v28, v10

    move-wide/from16 v25, v11

    move-object v11, v5

    move/from16 v31, p5

    move/from16 v30, p6

    .end local v9  # "pid":I
    .end local v10  # "uid":I
    .end local v11  # "origId":J
    .end local p5  # "requestedWidth":I
    .end local p6  # "requestedHeight":I
    .restart local v24  # "pid":I
    .restart local v25  # "origId":J
    .restart local v28  # "uid":I
    .restart local v30  # "requestedHeight":I
    .restart local v31  # "requestedWidth":I
    :goto_67b
    monitor-exit v13
    :try_end_67c
    .catchall {:try_start_645 .. :try_end_67c} :catchall_680

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_680
    move-exception v0

    goto :goto_67b
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .param p2, "runningUserIds"  # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 3691
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3692
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 3693
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3694
    return-void

    .line 3693
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .registers 10
    .param p1, "watcher"  # Landroid/view/IRotationWatcher;

    .line 3905
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3906
    .local v0, "watcherBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3907
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 3908
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 3909
    .local v4, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v0, v5, :cond_3b

    .line 3910
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 3911
    .local v5, "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v6}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3912
    .local v6, "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_39

    .line 3913
    iget-object v7, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v6, v7, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3915
    :cond_39
    add-int/lit8 v3, v3, -0x1

    .line 3907
    .end local v4  # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v5  # "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v6  # "binder":Landroid/os/IBinder;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3918
    .end local v3  # "i":I
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3919
    return-void

    .line 3918
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;

    .line 1803
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1804
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1805
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_12

    .line 1806
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1808
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1810
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onWindowRemove(Lcom/android/server/wm/WindowState;)V

    .line 1812
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1813
    return-void

    .line 1812
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4333
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4334
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4335
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4336
    return-void

    .line 4335
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "binder"  # Landroid/os/IBinder;
    .param p2, "displayId"  # I

    .line 2534
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "removeWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2540
    .local v0, "origId":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_7d

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2541
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2542
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_42

    .line 2543
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for non-exiting displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_77

    .line 2558
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2545
    return-void

    .line 2548
    :cond_42
    :try_start_42
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v4

    .line 2549
    .local v4, "token":Lcom/android/server/wm/WindowToken;
    if-nez v4, :cond_66

    .line 2550
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_42 .. :try_end_5f} :catchall_77

    .line 2558
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2552
    return-void

    .line 2555
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2556
    .end local v3  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4  # "token":Lcom/android/server/wm/WindowToken;
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_77

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    .line 2558
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2559
    nop

    .line 2560
    return-void

    .line 2556
    :catchall_77
    move-exception v3

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "binder":Landroid/os/IBinder;
    .end local p2  # "displayId":I
    throw v3
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 2558
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "binder":Landroid/os/IBinder;
    .restart local p2  # "displayId":I
    :catchall_7d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2535
    .end local v0  # "origId":J
    :cond_82
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V
    .registers 11
    .param p1, "client"  # Landroid/view/IWindow;
    .param p2, "sc"  # Landroid/view/SurfaceControl;
    .param p3, "displayId"  # I

    .line 6934
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->checkCallerOwnsDisplay(I)V

    .line 6936
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_48

    .line 6939
    .local v1, "token":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 6940
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_33

    .line 6941
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_43

    .line 6946
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_48

    .line 6942
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6944
    :cond_33
    :try_start_33
    invoke-direct {p0, p3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/android/server/wm/DisplayContent;->reparentDisplayContent(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    .line 6946
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6947
    nop

    .line 6948
    .end local v1  # "token":J
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6949
    return-void

    .line 6946
    .restart local v1  # "token":J
    :catchall_43
    move-exception v3

    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "client":Landroid/view/IWindow;
    .end local p2  # "sc":Landroid/view/SurfaceControl;
    .end local p3  # "displayId":I
    throw v3

    .line 6948
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "client":Landroid/view/IWindow;
    .restart local p2  # "sc":Landroid/view/SurfaceControl;
    .restart local p3  # "displayId":I
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    .registers 7
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "window"  # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Session;",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 3972
    .local p3, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3973
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3974
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p3}, Lcom/android/server/wm/WindowState;->setSystemGestureExclusion(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3975
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 3977
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3978
    return-void

    .line 3977
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 5
    .param p1, "receiver"  # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"  # I

    .line 6784
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6785
    .local v0, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v1, :cond_13

    .line 6786
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindow;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 6789
    .end local v0  # "focusedWindow":Lcom/android/server/wm/WindowState;
    :cond_13
    goto :goto_15

    .line 6788
    :catch_14
    move-exception v0

    .line 6790
    :goto_15
    return-void
.end method

.method public requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .registers 6
    .param p1, "receiver"  # Landroid/app/IAssistDataReceiver;

    .line 3648
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "requestAssistScreenshot()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3653
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3654
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3655
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_26

    .line 3656
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_24

    .line 3657
    const-string v2, "WindowManager"

    const-string v3, "Screenshot returning null. No Display for displayId=0"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_24
    const/4 v2, 0x0

    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_2c

    .line 3662
    .end local v2  # "bm":Landroid/graphics/Bitmap;
    :cond_26
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3664
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v2  # "bm":Landroid/graphics/Bitmap;
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3666
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;-><init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3673
    const/4 v0, 0x1

    return v0

    .line 3664
    .end local v2  # "bm":Landroid/graphics/Bitmap;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3649
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestTraversal()V
    .registers 3

    .line 5525
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5526
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5527
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5528
    return-void

    .line 5527
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestUserActivityNotification()V
    .registers 3

    .line 7248
    const-string v0, "android.permission.USER_ACTIVITY"

    const-string v1, "requestUserActivityNotification()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7252
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->requestUserActivityNotification()V

    .line 7253
    return-void

    .line 7250
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires USER_ACTIVITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V
    .registers 8
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "latestX"  # F
    .param p3, "latestY"  # F

    .line 6901
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    .line 6903
    nop

    .line 6904
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6905
    .local v0, "windowUnderPointer":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_23

    .line 6907
    :try_start_c
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 6908
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v2

    .line 6909
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v3

    .line 6907
    invoke-interface {v1, v2, v3}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_22

    .line 6910
    :catch_1a
    move-exception v1

    .line 6911
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "unable to restore pointer icon"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6912
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_22
    goto :goto_2c

    .line 6914
    :cond_23
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 6916
    :goto_2c
    return-void
.end method

.method saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 13
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p3, "reason"  # Ljava/lang/String;

    .line 6349
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6350
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 6351
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6352
    if-eqz p1, :cond_46

    .line 6353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6355
    :cond_46
    if-eqz p2, :cond_62

    .line 6356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6358
    :cond_62
    if-eqz p3, :cond_78

    .line 6359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6361
    :cond_78
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_80
    if-ltz v2, :cond_db

    .line 6362
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 6363
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 6364
    .local v5, "displayId":I
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const-string v7, " since null focus: "

    if-nez v6, :cond_b4

    .line 6365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Windows added in display #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6368
    :cond_b4
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d8

    .line 6369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Windows removed in display #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6361
    .end local v4  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v5  # "displayId":I
    :cond_d8
    add-int/lit8 v2, v2, -0x1

    goto :goto_80

    .line 6373
    .end local v2  # "i":I
    :cond_db
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 6374
    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6375
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 6376
    const-string v2, "Last ANR continued"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6377
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6378
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6379
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 6381
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6382
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6383
    return-void
.end method

.method scheduleAnimationLocked()V
    .registers 2

    .line 5532
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_7

    .line 5533
    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 5535
    :cond_7
    return-void
.end method

.method public scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "replacing"  # Z

    .line 6664
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6665
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6666
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 6667
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to reset replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6669
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6671
    :cond_29
    if-eqz p2, :cond_2f

    .line 6672
    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_32

    .line 6674
    :cond_2f
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearWillReplaceWindows()V

    .line 6676
    .end local v1  # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6677
    return-void

    .line 6676
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;

    .line 6680
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6681
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6683
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6684
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6686
    return-void
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 2780
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2781
    return-void
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .registers 6

    .line 3626
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "screenshotWallpaper()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3630
    const-wide/16 v0, 0x20

    :try_start_c
    const-string v2, "screenshotWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3631
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_32

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3633
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3634
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v4

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2c

    .line 3637
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3634
    return-object v4

    .line 3635
    .end local v3  # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    throw v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 3637
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 3627
    :cond_37
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendNewConfiguration(I)V
    .registers 6
    .param p1, "displayId"  # I

    .line 4386
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    .line 4388
    .local v0, "configUpdated":Z
    if-nez v0, :cond_35

    .line 4393
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_36

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4394
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4395
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_2a

    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v3, :cond_2a

    .line 4396
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 4397
    const-string v3, "config-unchanged"

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 4398
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4399
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4401
    .end local v2  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2f

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_36

    goto :goto_35

    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    throw v2
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_35} :catch_36

    .line 4404
    .end local v0  # "configUpdated":Z
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    :cond_35
    :goto_35
    goto :goto_37

    .line 4403
    :catch_36
    move-exception v0

    .line 4405
    :goto_37
    return-void
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .param p1, "which"  # I
    .param p2, "scale"  # F

    .line 3048
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3053
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    .line 3054
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    goto :goto_1f

    .line 3057
    :cond_17
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_1f

    .line 3056
    :cond_1a
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_1f

    .line 3055
    :cond_1d
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3061
    :goto_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3062
    return-void

    .line 3050
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationScales([F)V
    .registers 5
    .param p1, "scales"  # [F

    .line 3066
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3071
    if-eqz p1, :cond_35

    .line 3072
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    .line 3073
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3075
    :cond_19
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_25

    .line 3076
    aget v0, p1, v1

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 3078
    :cond_25
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_35

    .line 3079
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3080
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 3085
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3086
    return-void

    .line 3068
    :cond_3d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAodShowing(Z)V
    .registers 4
    .param p1, "aodShowing"  # Z

    .line 7840
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7841
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setAodShowing(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 7842
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 7844
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7845
    return-void

    .line 7844
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "toOpaque"  # Z

    .line 2696
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2697
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2698
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_19

    .line 2699
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setFillsParent(Z)V

    .line 2700
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 2701
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2703
    .end local v1  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2704
    return-void

    .line 2703
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentProfileIds([I)V
    .registers 4
    .param p1, "currentProfileIds"  # [I

    .line 3235
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3236
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3237
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3238
    return-void

    .line 3237
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentUser(I[I)V
    .registers 9
    .param p1, "newUserId"  # I
    .param p2, "currentProfileIds"  # [I

    .line 3241
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3242
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3243
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3244
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentUserLw(I)V

    .line 3245
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->setCurrentUser(I)V

    .line 3248
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->switchUser()V

    .line 3249
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3252
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3253
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    nop

    .line 3254
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 3255
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    if-eqz v2, :cond_33

    .line 3256
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->hasTaskForUser(I)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    .line 3255
    :goto_34
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 3258
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 3262
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_54

    .line 3263
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v3

    .line 3264
    .local v3, "forcedDensity":I
    if-eqz v3, :cond_4d

    move v4, v3

    goto :goto_4f

    .line 3265
    :cond_4d
    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_4f
    nop

    .line 3266
    .local v4, "targetDensity":I
    const/4 v5, -0x2

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    .line 3268
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3  # "forcedDensity":I
    .end local v4  # "targetDensity":I
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3269
    return-void

    .line 3268
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackCreateState(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "mode"  # I
    .param p2, "bounds"  # Landroid/graphics/Rect;

    .line 2725
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2726
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 2727
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2728
    return-void

    .line 2727
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    .registers 3
    .param p1, "mode"  # I
    .param p2, "bounds"  # Landroid/graphics/Rect;

    .line 2731
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 2732
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 2733
    return-void
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "touchRegion"  # Landroid/graphics/Rect;

    .line 6706
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6707
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6708
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 6709
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 6710
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6711
    return-void

    .line 6710
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackResizing(Z)V
    .registers 4
    .param p1, "resizing"  # Z

    .line 6698
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6699
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    .line 6700
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 6701
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6702
    return-void

    .line 6701
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 4444
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4448
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4449
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    .line 4450
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_1b

    .line 4451
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputManagerCallback;->setEventDispatchingLw(Z)V

    .line 4453
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4454
    return-void

    .line 4453
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4445
    :cond_26
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setForceDesktopModeOnExternalDisplays(Z)V
    .registers 4
    .param p1, "forceDesktopModeOnExternalDisplays"  # Z

    .line 6740
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6741
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 6742
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6743
    return-void

    .line 6742
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setForceResizableTasks(Z)V
    .registers 4
    .param p1, "forceResizableTasks"  # Z

    .line 6722
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6723
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 6724
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6725
    return-void

    .line 6724
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setForceShowSystemBars(Z)V
    .registers 7
    .param p1, "show"  # Z

    .line 5835
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 5840
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5841
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$XcHmyRxMY5ULhjLiV-sIKnPtvOM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$XcHmyRxMY5ULhjLiV-sIKnPtvOM;

    .line 5842
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 5841
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 5843
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5844
    return-void

    .line 5843
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5837
    :cond_2e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplayDensityAndSize(IIII)V
    .registers 12
    .param p1, "displayId"  # I
    .param p2, "density"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 5268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForcedDisplayDensityAndSize size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForcedDisplayDensityAndSize density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_97

    .line 5272
    if-nez p1, :cond_8f

    .line 5275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5277
    .local v0, "ident":J
    :try_start_44
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_8a

    .line 5278
    :try_start_47
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5279
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_82

    .line 5280
    const/16 v4, 0xc8

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move p3, v5

    .line 5281
    invoke-static {p4, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move p4, v4

    .line 5282
    iput p3, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 5283
    iput p4, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 5284
    iput p2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5285
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateResourceConfiguration(IIII)V

    .line 5286
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5287
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v4

    .line 5288
    .local v4, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v4, :cond_82

    .line 5289
    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5292
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_47 .. :try_end_83} :catchall_87

    .line 5293
    :try_start_83
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_8a

    .line 5296
    goto :goto_8e

    .line 5292
    :catchall_87
    move-exception v3

    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "density":I
    .end local p3  # "width":I
    .end local p4  # "height":I
    :try_start_89
    throw v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    .line 5294
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "density":I
    .restart local p3  # "width":I
    .restart local p4  # "height":I
    :catchall_8a
    move-exception v2

    .line 5295
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5298
    .end local v0  # "ident":J
    .end local v2  # "th":Ljava/lang/Throwable;
    :goto_8e
    return-void

    .line 5273
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5271
    :cond_97
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplayDensityForUser(III)V
    .registers 12
    .param p1, "displayId"  # I
    .param p2, "density"  # I
    .param p3, "userId"  # I

    .line 5229
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_45

    .line 5234
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 5234
    const-string v6, "setForcedDisplayDensityForUser"

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5237
    .local v0, "targetUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5239
    .local v1, "ident":J
    :try_start_20
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_40

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5240
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5241
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_31

    .line 5242
    invoke-virtual {v4, p2, v0}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    .line 5244
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 5246
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5247
    nop

    .line 5248
    return-void

    .line 5244
    :catchall_3a
    move-exception v4

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "targetUserId":I
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "density":I
    .end local p3  # "userId":I
    throw v4
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 5246
    .restart local v0  # "targetUserId":I
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "density":I
    .restart local p3  # "userId":I
    :catchall_40
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5231
    .end local v0  # "targetUserId":I
    .end local v1  # "ident":J
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplayScalingMode(II)V
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "mode"  # I

    .line 5119
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    .line 5124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5126
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2e

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5127
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5128
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_1f

    .line 5129
    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->setForcedScalingMode(I)V

    .line 5131
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_28

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 5133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5134
    nop

    .line 5135
    return-void

    .line 5131
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "mode":I
    throw v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 5133
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "mode":I
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5121
    .end local v0  # "ident":J
    :cond_33
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplaySize(III)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 5099
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    .line 5104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5106
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2e

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5107
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5108
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_1f

    .line 5109
    invoke-virtual {v3, p2, p3}, Lcom/android/server/wm/DisplayContent;->setForcedSize(II)V

    .line 5111
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_28

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 5113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5114
    nop

    .line 5115
    return-void

    .line 5111
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "width":I
    .end local p3  # "height":I
    throw v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 5113
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "width":I
    .restart local p3  # "height":I
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5101
    .end local v0  # "ident":J
    :cond_33
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForwardedInsets(ILandroid/graphics/Insets;)V
    .registers 9
    .param p1, "displayId"  # I
    .param p2, "insets"  # Landroid/graphics/Insets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6811
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6812
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6813
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_13

    .line 6814
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6816
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6817
    .local v2, "callingUid":I
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOwnerUid()I

    move-result v3

    .line 6818
    .local v3, "displayOwnerUid":I
    if-ne v2, v3, :cond_29

    .line 6822
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->setForwardedInsets(Landroid/graphics/Insets;)V

    .line 6823
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "callingUid":I
    .end local v3  # "displayOwnerUid":I
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6824
    return-void

    .line 6819
    .restart local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v2  # "callingUid":I
    .restart local v3  # "displayOwnerUid":I
    :cond_29
    :try_start_29
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Only owner of the display can set ForwardedInsets to it."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "insets":Landroid/graphics/Insets;
    throw v4

    .line 6823
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "callingUid":I
    .end local v3  # "displayOwnerUid":I
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "insets":Landroid/graphics/Insets;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .registers 8
    .param p1, "newHoldScreen"  # Lcom/android/server/wm/Session;

    .line 5493
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 5495
    .local v0, "hold":Z
    :goto_5
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_17

    .line 5496
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 5498
    :cond_17
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 5500
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    .line 5501
    .local v1, "state":Z
    if-eq v0, v1, :cond_83

    .line 5502
    const-string v2, "DebugKeepScreenOn"

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    .line 5503
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v4, :cond_42

    .line 5504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquiring screen wakelock due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 5508
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 5509
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5510
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStartedLw()V

    goto :goto_83

    .line 5512
    :cond_55
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v4, :cond_71

    .line 5513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing screen wakelock, obscured by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    :cond_71
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 5517
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 5518
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    .line 5519
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5522
    :cond_83
    :goto_83
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1, "mode"  # Z

    .line 3482
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3483
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 3484
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3485
    return-void

    .line 3484
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 15
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;
    .param p3, "touchableInsets"  # I
    .param p4, "contentInsets"  # Landroid/graphics/Rect;
    .param p5, "visibleInsets"  # Landroid/graphics/Rect;
    .param p6, "touchableRegion"  # Landroid/graphics/Region;

    .line 1940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1942
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d7

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1943
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 1944
    .local v4, "w":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_71

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setInsetsWindow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", contentInsets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", visibleInsets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", touchableRegion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", touchableInsets "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_71
    if-eqz v4, :cond_c8

    .line 1950
    iput-boolean v3, v4, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 1951
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1952
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1953
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1954
    iput p3, v4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 1955
    iget v3, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a3

    .line 1956
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1957
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1958
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    .line 1960
    :cond_a3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1961
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1964
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v3, :cond_c8

    .line 1965
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_c3

    .line 1966
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_c8

    .line 1967
    :cond_c3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1970
    .end local v4  # "w":Lcom/android/server/wm/WindowState;
    :cond_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_7 .. :try_end_c9} :catchall_d1

    :try_start_c9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_d7

    .line 1972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1973
    nop

    .line 1974
    return-void

    .line 1970
    :catchall_d1
    move-exception v3

    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    .end local p3  # "touchableInsets":I
    .end local p4  # "contentInsets":Landroid/graphics/Rect;
    .end local p5  # "visibleInsets":Landroid/graphics/Rect;
    .end local p6  # "touchableRegion":Landroid/graphics/Region;
    throw v3
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_d7

    .line 1972
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    .restart local p3  # "touchableInsets":I
    .restart local p4  # "contentInsets":Landroid/graphics/Rect;
    .restart local p5  # "visibleInsets":Landroid/graphics/Rect;
    .restart local p6  # "touchableRegion":Landroid/graphics/Region;
    :catchall_d7
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setIsPc(Z)V
    .registers 4
    .param p1, "isPc"  # Z

    .line 6746
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6747
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    .line 6748
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6749
    return-void

    .line 6748
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardGoingAway(Z)V
    .registers 4
    .param p1, "keyguardGoingAway"  # Z

    .line 2850
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2851
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    .line 2852
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2853
    return-void

    .line 2852
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardOrAodShowingOnDefaultDisplay(Z)V
    .registers 4
    .param p1, "showing"  # Z

    .line 2856
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2857
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    .line 2858
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2859
    return-void

    .line 2858
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 5847
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 5853
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5854
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V

    .line 5855
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5856
    return-void

    .line 5855
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5849
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "overrideConfig"  # Landroid/content/res/Configuration;
    .param p2, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 2564
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_b

    .line 2565
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 2566
    const-string v0, "new-config"

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 2569
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    .line 2570
    return-void
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "area"  # Landroid/graphics/Rect;

    .line 3996
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 4001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4003
    .local v0, "origId":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_28

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4004
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 4005
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 4007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4008
    nop

    .line 4009
    return-void

    .line 4005
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "area":Landroid/graphics/Rect;
    throw v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 4007
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "area":Landroid/graphics/Rect;
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3998
    .end local v0  # "origId":J
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverscan(IIIII)V
    .registers 16
    .param p1, "displayId"  # I
    .param p2, "left"  # I
    .param p3, "top"  # I
    .param p4, "right"  # I
    .param p5, "bottom"  # I

    .line 5370
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    .line 5374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5376
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_34

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5377
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5378
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_25

    .line 5379
    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V

    .line 5381
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2e

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    .line 5383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5384
    nop

    .line 5385
    return-void

    .line 5381
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "left":I
    .end local p3  # "top":I
    .end local p4  # "right":I
    .end local p5  # "bottom":I
    throw v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 5383
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "left":I
    .restart local p3  # "top":I
    .restart local p4  # "right":I
    .restart local p5  # "bottom":I
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5372
    .end local v0  # "ident":J
    :cond_39
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPipVisibility(Z)V
    .registers 4
    .param p1, "visible"  # Z

    .line 5794
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 5800
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5801
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    .line 5802
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5803
    return-void

    .line 5802
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5796
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setRecentsAnimationController(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "controller"  # Lcom/android/server/wm/RecentsAnimationController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2648
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2649
    return-void
.end method

.method public setRecentsVisibility(Z)V
    .registers 5
    .param p1, "visible"  # Z

    .line 5785
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "setRecentsVisibility()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5787
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5788
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setRecentsVisibilityLw(Z)V

    .line 5789
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5790
    return-void

    .line 5789
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setRemoveContentMode(II)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "mode"  # I
        .annotation build Landroid/view/WindowManager$RemoveContentMode;
        .end annotation
    .end param

    .line 7090
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setRemoveContentMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7094
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7095
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7096
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_32

    .line 7097
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set remove mode to a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7099
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7102
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 7104
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7105
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7106
    return-void

    .line 7105
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7091
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResizeDimLayer(ZIF)V
    .registers 6
    .param p1, "visible"  # Z
    .param p2, "targetWindowingMode"  # I
    .param p3, "alpha"  # F

    .line 6715
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6716
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 6718
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6719
    return-void

    .line 6718
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setRotateForApp(II)V
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "fixedToUserRotation"  # I

    .line 3698
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3699
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3700
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1a

    .line 3701
    const-string v2, "WindowManager"

    const-string v3, "Trying to set rotate for app for a missing display."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3704
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/DisplayRotation;->setFixedToUserRotation(I)V

    .line 3705
    .end local v1  # "display":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3706
    return-void

    .line 3705
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setShelfHeight(ZI)V
    .registers 6
    .param p1, "visible"  # Z
    .param p2, "shelfHeight"  # I

    .line 5807
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "setShelfHeight()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5809
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5810
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForShelf(ZI)V

    .line 5812
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5813
    return-void

    .line 5812
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setShouldShowIme(IZ)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "shouldShow"  # Z

    .line 7214
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setShouldShowIme()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7219
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7220
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_32

    .line 7221
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set IME flag to a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7223
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7225
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v2

    if-nez v2, :cond_45

    .line 7230
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 7232
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7233
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7234
    return-void

    .line 7226
    .restart local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_45
    :try_start_45
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set IME flag to an untrusted virtual display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "shouldShow":Z
    throw v2

    .line 7233
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "shouldShow":Z
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7215
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShouldShowSystemDecors(IZ)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "shouldShow"  # Z

    .line 7169
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setShouldShowSystemDecors()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7173
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7174
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7175
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_32

    .line 7176
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set system decors flag to a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7178
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7180
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v2

    if-nez v2, :cond_45

    .line 7185
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 7187
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7188
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7189
    return-void

    .line 7181
    .restart local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_45
    :try_start_45
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set system decors flag to an untrusted virtual display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "shouldShow":Z
    throw v2

    .line 7188
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "shouldShow":Z
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7170
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "shouldShow"  # Z

    .line 7127
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setShouldShowWithInsecureKeyguard()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7132
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7133
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7134
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_32

    .line 7135
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set flag to a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7137
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7140
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 7143
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7144
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7145
    return-void

    .line 7144
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7129
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"  # Ljava/lang/String;

    .line 3621
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3622
    return-void
.end method

.method public setSupportsFreeformWindowManagement(Z)V
    .registers 4
    .param p1, "supportsFreeformWindowManagement"  # Z

    .line 6734
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6735
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    .line 6736
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6737
    return-void

    .line 6736
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSupportsPictureInPicture(Z)V
    .registers 4
    .param p1, "supportsPictureInPicture"  # Z

    .line 6728
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6729
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    .line 6730
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6731
    return-void

    .line 6730
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSwitchingUser(Z)V
    .registers 4
    .param p1, "switching"  # Z

    .line 3019
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "setSwitchingUser()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3023
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setSwitchingUser(Z)V

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3025
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 3026
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3027
    return-void

    .line 3026
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3021
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 11
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;
    .param p3, "region"  # Landroid/graphics/Region;

    .line 1922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1924
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_41

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1925
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 1926
    .local v4, "w":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transparentRegionHint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 1929
    :cond_27
    if-eqz v4, :cond_32

    iget-boolean v3, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_32

    .line 1930
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V

    .line 1932
    .end local v4  # "w":Lcom/android/server/wm/WindowState;
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_3b

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_41

    .line 1934
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1935
    nop

    .line 1936
    return-void

    .line 1932
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "session":Lcom/android/server/wm/Session;
    .end local p2  # "client":Landroid/view/IWindow;
    .end local p3  # "region":Landroid/graphics/Region;
    throw v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    .line 1934
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "session":Lcom/android/server/wm/Session;
    .restart local p2  # "client":Landroid/view/IWindow;
    .restart local p3  # "region":Landroid/graphics/Region;
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setWillReplaceWindow(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "animate"  # Z

    .line 6602
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6603
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6604
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 6605
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6607
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6609
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 6610
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6614
    :cond_4a
    :try_start_4a
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 6615
    .end local v1  # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6616
    return-void

    .line 6615
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "childrenOnly"  # Z

    .line 6631
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6632
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6633
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 6634
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6636
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6638
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 6639
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6641
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6644
    :cond_4a
    if-eqz p2, :cond_50

    .line 6645
    :try_start_4c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceChildWindows()V

    goto :goto_54

    .line 6647
    :cond_50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 6650
    :goto_54
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 6651
    .end local v1  # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6652
    return-void

    .line 6651
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowOpaque(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "isOpaque"  # Z

    .line 2707
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2708
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 2709
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2710
    return-void

    .line 2709
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowingMode(II)V
    .registers 9
    .param p1, "displayId"  # I
    .param p2, "mode"  # I

    .line 7036
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setWindowingMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 7040
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7041
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7042
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_32

    .line 7043
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set windowing mode to a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7048
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v2

    .line 7049
    .local v2, "lastWindowingMode":I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 7051
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7053
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v3

    if-eq v2, v3, :cond_5f

    .line 7056
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_64

    .line 7061
    .local v3, "origId":J
    :try_start_4f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 7063
    :try_start_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7064
    nop

    .line 7066
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_5f

    .line 7063
    :catchall_5a
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "mode":I
    throw v5

    .line 7068
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "lastWindowingMode":I
    .end local v3  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "mode":I
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7069
    return-void

    .line 7068
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7037
    :cond_6a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowIme(I)Z
    .registers 8
    .param p1, "displayId"  # I

    .line 7193
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "shouldShowIme()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 7197
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7198
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7199
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    if-nez v1, :cond_34

    .line 7200
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to get IME flag of a display that does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7202
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7204
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 7205
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7207
    :cond_3f
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-nez v3, :cond_4b

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v3, :cond_4c

    :cond_4b
    const/4 v2, 0x1

    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7209
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7194
    :cond_57
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowSystemDecors(I)Z
    .registers 8
    .param p1, "displayId"  # I

    .line 7149
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "shouldShowSystemDecors()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 7153
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7154
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7155
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    if-nez v1, :cond_34

    .line 7156
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to get system decors flag of a display that does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7158
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7160
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 7161
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7163
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v2

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7164
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7150
    :cond_4e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowWithInsecureKeyguard(I)Z
    .registers 7
    .param p1, "displayId"  # I

    .line 7110
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "shouldShowWithInsecureKeyguard()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7114
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7115
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7116
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_34

    .line 7117
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to get flag of a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7119
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7121
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7122
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7111
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 9
    .param p1, "msg"  # Ljava/lang/CharSequence;
    .param p2, "always"  # Z

    .line 3435
    const/4 v0, 0x0

    .line 3436
    .local v0, "first":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3437
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v2, :cond_51

    .line 3438
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3439
    .local v2, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3440
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showBootMessage: msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " always="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mAllowBootMessages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mShowingBootMessages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mSystemBooted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3445
    .end local v2  # "here":Ljava/lang/RuntimeException;
    :cond_51
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v2, :cond_5a

    .line 3446
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3448
    :cond_5a
    :try_start_5a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v2, :cond_66

    .line 3449
    if-nez p2, :cond_65

    .line 3450
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3452
    :cond_65
    const/4 v0, 0x1

    .line 3454
    :cond_66
    :try_start_66
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_6f

    .line 3455
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3457
    :cond_6f
    const/4 v2, 0x1

    :try_start_70
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3458
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 3459
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3460
    if-eqz v0, :cond_80

    .line 3461
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3463
    :cond_80
    return-void

    .line 3459
    :catchall_81
    move-exception v2

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public showCircularMask(Z)V
    .registers 9
    .param p1, "visible"  # Z

    .line 3517
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3519
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_25

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> OPEN TRANSACTION showCircularMask(visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_c2

    .line 3523
    if-eqz p1, :cond_66

    .line 3525
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-nez v1, :cond_5f

    .line 3526
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3528
    .local v1, "screenOffset":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3531
    .local v2, "maskThickness":I
    new-instance v3, Lcom/android/server/wm/CircularDisplayMask;

    .line 3532
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7e2

    .line 3533
    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/wm/CircularDisplayMask;-><init>(Lcom/android/server/wm/DisplayContent;III)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 3537
    .end local v1  # "screenOffset":I
    .end local v2  # "maskThickness":I
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    goto :goto_73

    .line 3538
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v1, :cond_73

    .line 3539
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    .line 3540
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;
    :try_end_73
    .catchall {:try_start_2a .. :try_end_73} :catchall_9c

    .line 3543
    :cond_73
    :goto_73
    :try_start_73
    const-string v1, "showCircularMask"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3544
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_97

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< CLOSE TRANSACTION showCircularMask(visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_73 .. :try_end_98} :catchall_c2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3548
    return-void

    .line 3543
    :catchall_9c
    move-exception v1

    :try_start_9d
    const-string v2, "showCircularMask"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3544
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_c1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< CLOSE TRANSACTION showCircularMask(visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "visible":Z
    :cond_c1
    throw v1

    .line 3547
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "visible":Z
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_9d .. :try_end_c4} :catchall_c2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlay()V
    .registers 7

    .line 3551
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3553
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_11

    const-string v1, "WindowManager"

    const-string v2, ">>> OPEN TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_5e

    .line 3557
    :try_start_14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-nez v1, :cond_31

    .line 3558
    new-instance v1, Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3560
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x7e2

    .line 3561
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 3565
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->setVisibility(Z)V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_4c

    .line 3567
    :try_start_37
    const-string v1, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3568
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_47

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3572
    return-void

    .line 3567
    :catchall_4c
    move-exception v1

    :try_start_4d
    const-string v2, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3568
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_5d

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :cond_5d
    throw v1

    .line 3571
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlayIfNeeded()V
    .registers 3

    .line 3508
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 3510
    const-string v1, "ro.emulator.circular"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_27

    .line 3512
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3514
    :cond_27
    return-void
.end method

.method showGlobalActions()V
    .registers 2

    .line 3030
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showGlobalActions()V

    .line 3031
    return-void
.end method

.method public showRecentApps()V
    .registers 2

    .line 5956
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showRecentApps()V

    .line 5957
    return-void
.end method

.method public showStrictModeViolation(Z)V
    .registers 8
    .param p1, "on"  # Z

    .line 3578
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3579
    .local v0, "pid":I
    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eqz p1, :cond_1f

    .line 3582
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3583
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_28

    .line 3586
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3588
    :goto_28
    return-void
.end method

.method public shutdown(Z)V
    .registers 4
    .param p1, "confirm"  # Z

    .line 3214
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3216
    return-void
.end method

.method startFreezingDisplayLocked(II)V
    .registers 4
    .param p1, "exitAnim"  # I
    .param p2, "enterAnim"  # I

    .line 5545
    nop

    .line 5546
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5545
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 5547
    return-void
.end method

.method startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V
    .registers 13
    .param p1, "exitAnim"  # I
    .param p2, "enterAnim"  # I
    .param p3, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 5551
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_c5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    if-eqz v0, :cond_a

    goto/16 :goto_c5

    .line 5555
    :cond_a
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_c4

    .line 5561
    :cond_20
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFreezingDisplayLocked: exitAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " called by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 5564
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5561
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    :cond_50
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 5568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 5569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5573
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5575
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManagerCallback;->freezeInputDispatchingLw()V

    .line 5577
    iget-object v0, p3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 5578
    iget-object v0, p3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->freeze()V

    .line 5586
    :cond_79
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 5589
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    new-instance v1, Landroid/scene/Scene;

    const v2, 0x1000012

    const-string v3, "WindowAnimation"

    invoke-direct {v1, v2, v3}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 5598
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 5599
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 5600
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5601
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 5602
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v0, :cond_a1

    .line 5603
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5606
    :cond_a1
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v7

    .line 5608
    .local v7, "isSecure":Z
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 5609
    new-instance v8, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5610
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v4

    move-object v1, v8

    move-object v3, p3

    move v5, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V

    move-object v0, v8

    .line 5612
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 5615
    .end local v0  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v7  # "isSecure":Z
    return-void

    .line 5558
    :cond_c4
    :goto_c4
    return-void

    .line 5552
    :cond_c5
    :goto_c5
    return-void
.end method

.method public startFreezingScreen(II)V
    .registers 10
    .param p1, "exitAnim"  # I
    .param p2, "enterAnim"  # I

    .line 2867
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string v1, "startFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2872
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2873
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_35

    .line 2874
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 2875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_3a

    .line 2877
    .local v1, "origId":J
    :try_start_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(II)V

    .line 2878
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2879
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_30

    .line 2881
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2882
    goto :goto_35

    .line 2881
    :catchall_30
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "exitAnim":I
    .end local p2  # "enterAnim":I
    throw v3

    .line 2884
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "exitAnim":I
    .restart local p2  # "enterAnim":I
    :cond_35
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2885
    return-void

    .line 2884
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2869
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSeamlessRotation()V
    .registers 2

    .line 7804
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 7806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 7807
    return-void
.end method

.method public startViewServer(I)Z
    .registers 6
    .param p1, "port"  # I

    .line 4048
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4049
    return v1

    .line 4052
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4053
    return v1

    .line 4056
    :cond_13
    const/16 v0, 0x400

    if-ge p1, v0, :cond_18

    .line 4057
    return v1

    .line 4060
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    const-string v2, "View server did not start"

    const-string v3, "WindowManager"

    if-eqz v0, :cond_32

    .line 4061
    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_31

    .line 4063
    :try_start_26
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v0

    .line 4064
    :catch_2d
    move-exception v0

    .line 4065
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    .end local v0  # "e":Ljava/io/IOException;
    :cond_31
    return v1

    .line 4072
    :cond_32
    :try_start_32
    new-instance v0, Lcom/android/server/wm/ViewServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 4073
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_40

    return v0

    .line 4074
    :catch_40
    move-exception v0

    .line 4075
    .restart local v0  # "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    .end local v0  # "e":Ljava/io/IOException;
    return v1
.end method

.method public startWindowTrace()V
    .registers 3

    .line 5402
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 5403
    return-void
.end method

.method public statusBarVisibilityChanged(II)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "visibility"  # I

    .line 5817
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    .line 5823
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5824
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5825
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1c

    .line 5826
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    goto :goto_32

    .line 5828
    :cond_1c
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusBarVisibilityChanged with invalid displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5830
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5831
    return-void

    .line 5830
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5819
    :cond_3d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopFreezingDisplayLocked()V
    .registers 24

    .line 5618
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_7

    .line 5619
    return-void

    .line 5622
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5623
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    iget-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v4, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 5624
    .local v4, "waitingForConfig":Z
    :goto_1a
    if-eqz v1, :cond_23

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    goto :goto_24

    :cond_23
    move v5, v3

    .line 5625
    .local v5, "numOpeningApps":I
    :goto_24
    const-string v6, "WindowManager"

    if-nez v4, :cond_14f

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v7, :cond_14f

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eq v7, v2, :cond_14f

    iget-boolean v7, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v7, :cond_14f

    if-lez v5, :cond_38

    goto/16 :goto_14f

    .line 5637
    :cond_38
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_41

    const-string v7, "stopFreezingDisplayLocked: Unfreezing now"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    :cond_41
    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5645
    .local v7, "displayId":I
    const/4 v8, -0x1

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5646
    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 5647
    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v8}, Lcom/android/server/wm/InputManagerCallback;->thawInputDispatchingLw()V

    .line 5648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 5649
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5650
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string v9, "Screen frozen for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5651
    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v9, v9

    invoke-static {v9, v10, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 5652
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v9, :cond_77

    .line 5653
    const-string v9, " due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5654
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5656
    :cond_77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5658
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x1e

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5663
    const/4 v9, 0x0

    .line 5665
    .local v9, "updateRotation":Z
    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 5666
    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v10

    .line 5667
    .local v10, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    const/4 v15, 0x0

    if-eqz v10, :cond_fa

    .line 5668
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v11

    if-eqz v11, :cond_f8

    .line 5669
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v11, :cond_a5

    const-string v11, "**** Dismissing screen rotation animation"

    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5670
    :cond_a5
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    .line 5672
    .local v13, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v11

    iget v12, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 5673
    invoke-virtual {v11, v12, v14, v3}, Lcom/android/server/wm/DisplayPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v11

    if-nez v11, :cond_bb

    .line 5674
    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 5676
    :cond_bb
    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v16, 0x2710

    .line 5677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v18

    iget v14, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 5676
    move/from16 v19, v11

    move-object v11, v10

    move-object/from16 v21, v13

    move/from16 v22, v14

    .end local v13  # "displayInfo":Landroid/view/DisplayInfo;
    .local v21, "displayInfo":Landroid/view/DisplayInfo;
    move-wide/from16 v13, v16

    move/from16 v15, v18

    move/from16 v16, v22

    move/from16 v17, v19

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 5679
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 5680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_f7

    .line 5682
    :cond_ed
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5683
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 5684
    const/4 v9, 0x1

    .line 5686
    .end local v21  # "displayInfo":Landroid/view/DisplayInfo;
    :goto_f7
    goto :goto_106

    .line 5668
    :cond_f8
    move-object v3, v15

    goto :goto_fb

    .line 5667
    :cond_fa
    move-object v3, v15

    .line 5687
    :goto_fb
    if-eqz v10, :cond_105

    .line 5688
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5689
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v7, v3}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 5691
    :cond_105
    const/4 v9, 0x1

    .line 5700
    :goto_106
    if-eqz v1, :cond_111

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v2

    if-eqz v2, :cond_111

    const/16 v20, 0x1

    goto :goto_113

    :cond_111
    const/16 v20, 0x0

    :goto_113
    move/from16 v2, v20

    .line 5707
    .local v2, "configChanged":Z
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0xf

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5708
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v12, 0x7d0

    invoke-virtual {v3, v11, v12, v13}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5710
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5712
    if-eqz v9, :cond_13c

    if-eqz v1, :cond_13c

    if-eqz v9, :cond_13c

    .line 5713
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_137

    const-string v3, "Performing post-rotate rotation"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5714
    :cond_137
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v3

    or-int/2addr v2, v3

    .line 5717
    :cond_13c
    if-eqz v2, :cond_141

    .line 5718
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 5720
    :cond_141
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 5721
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_14e

    .line 5722
    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 5724
    :cond_14e
    return-void

    .line 5628
    .end local v2  # "configChanged":Z
    .end local v7  # "displayId":I
    .end local v8  # "sb":Ljava/lang/StringBuilder;
    .end local v9  # "updateRotation":Z
    .end local v10  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_14f
    :goto_14f
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_18d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFreezingDisplayLocked: Returning mWaitingForConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAppsFreezingScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mWindowsFreezingScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mClientFreezingScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOpeningApps.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5634
    :cond_18d
    return-void
.end method

.method public stopFreezingScreen()V
    .registers 5

    .line 2889
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string v1, "stopFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2894
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2895
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_2b

    .line 2896
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 2897
    const-string v1, "client"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 2898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 2900
    .local v1, "origId":J
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_26

    .line 2902
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2903
    goto :goto_2b

    .line 2902
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    throw v3

    .line 2905
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :cond_2b
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2906
    return-void

    .line 2905
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2891
    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopViewServer()Z
    .registers 4

    .line 4095
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4096
    return v1

    .line 4099
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4100
    return v1

    .line 4103
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_1c

    .line 4104
    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    return v0

    .line 4106
    :cond_1c
    return v1
.end method

.method public stopWindowTrace()V
    .registers 3

    .line 5407
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 5408
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 4
    .param p1, "deviceId"  # I
    .param p2, "direction"  # I

    .line 3207
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    .line 3208
    return-void
.end method

.method public syncInputTransactions()V
    .registers 4

    .line 7879
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->waitForAnimationsToComplete()V

    .line 7881
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7882
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementIfScheduled()V

    .line 7883
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 7885
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7886
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 7887
    return-void

    .line 7885
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public systemReady()V
    .registers 5

    .line 4549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    .line 4550
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemReady()V

    .line 4552
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->systemReady()V

    .line 4554
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 4555
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    .line 4556
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryWideColorGamutSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    .line 4557
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryHdrSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasHdrSupport:Z

    .line 4558
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$iQxeP_PsHHArcPSFabJ3FXyPKNc;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$iQxeP_PsHHArcPSFabJ3FXyPKNc;-><init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4559
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$B58NKEOrr2mhFWeS3bqpaZnd11o;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$B58NKEOrr2mhFWeS3bqpaZnd11o;-><init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4560
    nop

    .line 4561
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4560
    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 4562
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_78

    .line 4564
    :try_start_54
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v1

    .line 4565
    .local v1, "vrModeEnabled":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_77

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4566
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 4567
    if-eqz v1, :cond_6c

    .line 4568
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 4569
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v1}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V

    .line 4571
    :cond_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_71

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_70} :catch_77

    .line 4574
    .end local v1  # "vrModeEnabled":Z
    goto :goto_78

    .line 4571
    .restart local v1  # "vrModeEnabled":Z
    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "vrManager":Landroid/service/vr/IVrManager;
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    throw v3
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_77} :catch_77

    .line 4572
    .end local v1  # "vrModeEnabled":Z
    .restart local v0  # "vrManager":Landroid/service/vr/IVrManager;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    :catch_77
    move-exception v1

    .line 4576
    :cond_78
    :goto_78
    return-void
.end method

.method public thawDisplayRotation(I)V
    .registers 8
    .param p1, "displayId"  # I

    .line 3759
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3764
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thawRotation: mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3765
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3764
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3769
    .local v0, "origId":J
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_63

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3770
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3771
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_49

    .line 3772
    const-string v4, "WindowManager"

    const-string v5, "Trying to thaw rotation for a missing display."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_5d

    .line 3778
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3773
    return-void

    .line 3775
    :cond_49
    :try_start_49
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayRotation;->thawRotation()V

    .line 3776
    .end local v3  # "display":Lcom/android/server/wm/DisplayContent;
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_5d

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_63

    .line 3778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3779
    nop

    .line 3781
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3782
    return-void

    .line 3776
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "displayId":I
    throw v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    .line 3778
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "displayId":I
    :catchall_63
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3761
    .end local v0  # "origId":J
    :cond_68
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public thawRotation()V
    .registers 2

    .line 3750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 3751
    return-void
.end method

.method public triggerAnimationFailsafe()V
    .registers 3

    .line 2785
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2786
    return-void
.end method

.method unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    .line 7702
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7703
    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/IDisplayFoldListener;

    .line 3987
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3988
    return-void
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    .registers 5
    .param p1, "listener"  # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .param p2, "displayId"  # I

    .line 3156
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3157
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3158
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_11

    .line 3159
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3161
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3162
    return-void

    .line 3161
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .registers 8
    .param p1, "listener"  # Landroid/view/ISystemGestureExclusionListener;
    .param p2, "displayId"  # I

    .line 3960
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3961
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3962
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_16

    .line 3966
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V

    .line 3967
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3968
    return-void

    .line 3963
    .restart local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_16
    :try_start_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "listener":Landroid/view/ISystemGestureExclusionListener;
    .end local p2  # "displayId":I
    throw v2

    .line 3967
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "listener":Landroid/view/ISystemGestureExclusionListener;
    .restart local p2  # "displayId":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;

    .line 7989
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v1, "unregisterSystemGestureListener"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7994
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    .line 7995
    return-void

    .line 7991
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 5
    .param p1, "listener"  # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"  # I

    .line 3938
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3939
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 3940
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 3941
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3942
    return-void

    .line 3941
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateDisplayContentLocation(Landroid/view/IWindow;III)V
    .registers 12
    .param p1, "client"  # Landroid/view/IWindow;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "displayId"  # I

    .line 6953
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowManagerService;->checkCallerOwnsDisplay(I)V

    .line 6955
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6956
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    .line 6958
    .local v1, "token":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 6959
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_33

    .line 6960
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_47

    .line 6968
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_4c

    .line 6961
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6963
    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 6964
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_3e

    .line 6965
    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/wm/DisplayContent;->updateLocation(Lcom/android/server/wm/WindowState;II)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_47

    .line 6968
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3e
    :try_start_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6969
    nop

    .line 6970
    .end local v1  # "token":J
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6971
    return-void

    .line 6968
    .restart local v1  # "token":J
    :catchall_47
    move-exception v3

    :try_start_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .end local p1  # "client":Landroid/view/IWindow;
    .end local p2  # "x":I
    .end local p3  # "y":I
    .end local p4  # "displayId":I
    throw v3

    .line 6970
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowManagerService;
    .restart local p1  # "client":Landroid/view/IWindow;
    .restart local p2  # "x":I
    .restart local p3  # "y":I
    .restart local p4  # "displayId":I
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 6
    .param p1, "mode"  # I
    .param p2, "updateInputWindows"  # Z

    .line 5538
    const-wide/16 v0, 0x20

    const-string v2, "wmUpdateFocus"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5539
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateFocusedWindowLocked(IZ)Z

    move-result v2

    .line 5540
    .local v2, "changed":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5541
    return v2
.end method

.method updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V
    .registers 8
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "surfaceShown"  # Z

    .line 7765
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 7766
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7767
    return-void

    .line 7769
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7770
    .local v0, "systemAlertWindowsHidden":Z
    if-eqz p2, :cond_27

    .line 7771
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 7772
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 7775
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7778
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 7780
    .local v1, "hideSystemAlertWindows":Z
    if-ne v0, v1, :cond_37

    .line 7781
    return-void

    .line 7784
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$nQHccAXNqWhpUTYdUQi4f3vYirA;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$nQHccAXNqWhpUTYdUQi4f3vYirA;-><init>(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 7787
    return-void
.end method

.method updatePointerIcon(Landroid/view/IWindow;)V
    .registers 11
    .param p1, "client"  # Landroid/view/IWindow;

    .line 6862
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    monitor-enter v0

    .line 6863
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1700(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6864
    monitor-exit v0

    return-void

    .line 6866
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1800(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v1

    .line 6867
    .local v1, "mouseX":F
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1900(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v2

    .line 6868
    .local v2, "mouseY":F
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_88

    .line 6870
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6871
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6873
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6875
    :cond_2d
    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_2f
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6876
    .local v0, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_50

    .line 6877
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6880
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 6881
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v4, :cond_5b

    .line 6882
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6884
    :cond_5b
    nop

    .line 6885
    :try_start_5c
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 6886
    .local v5, "windowUnderPointer":Lcom/android/server/wm/WindowState;
    if-eq v5, v0, :cond_67

    .line 6887
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6890
    :cond_67
    :try_start_67
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 6891
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v7

    .line 6892
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v8

    .line 6890
    invoke-interface {v6, v7, v8}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_74} :catch_75
    .catchall {:try_start_67 .. :try_end_74} :catchall_82

    .line 6895
    goto :goto_7d

    .line 6893
    :catch_75
    move-exception v6

    .line 6894
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_76
    const-string v7, "WindowManager"

    const-string v8, "unable to update pointer icon"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6896
    .end local v0  # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5  # "windowUnderPointer":Lcom/android/server/wm/WindowState;
    .end local v6  # "e":Landroid/os/RemoteException;
    :goto_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6897
    return-void

    .line 6896
    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 6868
    .end local v1  # "mouseX":F
    .end local v2  # "mouseY":F
    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method public updateRotation(ZZ)V
    .registers 3
    .param p1, "alwaysSendConfiguration"  # Z
    .param p2, "forceRelayout"  # Z

    .line 3810
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3811
    return-void
.end method

.method updateTapExcludeRegion(Landroid/view/IWindow;ILandroid/graphics/Region;)V
    .registers 9
    .param p1, "client"  # Landroid/view/IWindow;
    .param p2, "regionId"  # I
    .param p3, "region"  # Landroid/graphics/Region;

    .line 6984
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6985
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 6986
    .local v1, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_29

    .line 6987
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad requesting window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6990
    :cond_29
    :try_start_29
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowState;->updateTapExcludeRegion(ILandroid/graphics/Region;)V

    .line 6991
    .end local v1  # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6992
    return-void

    .line 6991
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 9
    .param p1, "client"  # Ljava/net/Socket;

    .line 4193
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4194
    const/4 v0, 0x0

    return v0

    .line 4197
    :cond_8
    const/4 v0, 0x1

    .line 4199
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4201
    .local v1, "focusedWindow":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 4205
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 4206
    .local v3, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v2, v4

    .line 4208
    if-eqz v1, :cond_3a

    .line 4209
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4210
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4211
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4213
    :cond_3a
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4214
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_42} :catch_51
    .catchall {:try_start_e .. :try_end_42} :catchall_47

    .line 4218
    .end local v3  # "clientStream":Ljava/io/OutputStream;
    nop

    .line 4220
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_59

    goto :goto_5b

    .line 4218
    :catchall_47
    move-exception v3

    if-eqz v2, :cond_50

    .line 4220
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 4223
    goto :goto_50

    .line 4221
    :catch_4e
    move-exception v4

    .line 4222
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4223
    .end local v4  # "e":Ljava/io/IOException;
    :cond_50
    :goto_50
    throw v3

    .line 4215
    :catch_51
    move-exception v3

    .line 4216
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 4218
    .end local v3  # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5b

    .line 4220
    :try_start_55
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5b

    .line 4221
    :catch_59
    move-exception v3

    .line 4222
    .local v3, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4227
    .end local v3  # "e":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    return v0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 10
    .param p1, "client"  # Ljava/net/Socket;

    .line 4138
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4139
    return v1

    .line 4142
    :cond_8
    const/4 v0, 0x1

    .line 4144
    .local v0, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4145
    .local v2, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4146
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Yf21B7QM1fRVFGIQy6MImYjka28;

    invoke-direct {v5, v2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Yf21B7QM1fRVFGIQy6MImYjka28;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4149
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_84

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4151
    const/4 v1, 0x0

    .line 4155
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_23
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 4156
    .local v3, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v4

    .line 4158
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4159
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    if-ge v5, v4, :cond_62

    .line 4160
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4161
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4162
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 4163
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4164
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 4159
    .end local v6  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 4167
    .end local v5  # "i":I
    :cond_62
    const-string v5, "DONE.\n"

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_6a} :catch_79
    .catchall {:try_start_23 .. :try_end_6a} :catchall_6f

    .line 4172
    .end local v3  # "clientStream":Ljava/io/OutputStream;
    .end local v4  # "count":I
    nop

    .line 4174
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_81

    goto :goto_83

    .line 4172
    :catchall_6f
    move-exception v3

    if-eqz v1, :cond_78

    .line 4174
    :try_start_72
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 4177
    goto :goto_78

    .line 4175
    :catch_76
    move-exception v4

    .line 4176
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4177
    .end local v4  # "e":Ljava/io/IOException;
    :cond_78
    :goto_78
    throw v3

    .line 4169
    :catch_79
    move-exception v3

    .line 4170
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 4172
    .end local v3  # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_83

    .line 4174
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_83

    .line 4175
    :catch_81
    move-exception v3

    .line 4176
    .local v3, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4181
    .end local v3  # "e":Ljava/io/IOException;
    :cond_83
    :goto_83
    return v0

    .line 4149
    .end local v1  # "out":Ljava/io/BufferedWriter;
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "client"  # Ljava/net/Socket;
    .param p2, "command"  # Ljava/lang/String;
    .param p3, "parameters"  # Ljava/lang/String;

    .line 4251
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4252
    return v1

    .line 4255
    :cond_8
    const/4 v0, 0x1

    .line 4256
    .local v0, "success":Z
    const/4 v2, 0x0

    .line 4257
    .local v2, "data":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 4259
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 4264
    .local v4, "out":Ljava/io/BufferedWriter;
    const/16 v5, 0x20

    :try_start_e
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 4265
    .local v5, "index":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1a

    .line 4266
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 4268
    :cond_1a
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4269
    .local v6, "code":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 4272
    .local v7, "hashCode":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_33

    .line 4273
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object p3, v8

    goto :goto_36

    .line 4275
    :cond_33
    const-string v8, ""

    move-object p3, v8

    .line 4278
    :goto_36
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v8
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_aa
    .catchall {:try_start_e .. :try_end_3a} :catchall_a8

    .line 4279
    .local v8, "window":Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_4f

    .line 4280
    nop

    .line 4308
    if-eqz v2, :cond_42

    .line 4309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4311
    :cond_42
    if-eqz v3, :cond_47

    .line 4312
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4314
    :cond_47
    if-eqz v4, :cond_4e

    .line 4316
    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 4319
    goto :goto_4e

    .line 4317
    :catch_4d
    move-exception v9

    .line 4280
    :cond_4e
    :goto_4e
    return v1

    .line 4283
    :cond_4f
    :try_start_4f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v2, v9

    .line 4284
    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4285
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4287
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4288
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    move-object v3, v10

    .line 4292
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 4294
    .local v10, "binder":Landroid/os/IBinder;
    invoke-interface {v10, v9, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4296
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 4298
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_98

    .line 4299
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v1

    .line 4300
    const-string v1, "DONE\n"

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_98} :catch_aa
    .catchall {:try_start_4f .. :try_end_98} :catchall_a8

    .line 4308
    .end local v5  # "index":I
    .end local v6  # "code":Ljava/lang/String;
    .end local v7  # "hashCode":I
    .end local v8  # "window":Lcom/android/server/wm/WindowState;
    .end local v10  # "binder":Landroid/os/IBinder;
    :cond_98
    nop

    .line 4309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4311
    nop

    .line 4312
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4314
    if-eqz v4, :cond_da

    .line 4316
    :try_start_a2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    .line 4319
    :goto_a5
    goto :goto_da

    .line 4317
    :catch_a6
    move-exception v1

    goto :goto_a5

    .line 4308
    :catchall_a8
    move-exception v1

    goto :goto_db

    .line 4304
    :catch_aa
    move-exception v1

    .line 4305
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ab
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not send command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with parameters "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_a8

    .line 4306
    const/4 v0, 0x0

    .line 4308
    .end local v1  # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_cf

    .line 4309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4311
    :cond_cf
    if-eqz v3, :cond_d4

    .line 4312
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4314
    :cond_d4
    if-eqz v4, :cond_da

    .line 4316
    :try_start_d6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_a6

    goto :goto_a5

    .line 4323
    :cond_da
    :goto_da
    return v0

    .line 4308
    :goto_db
    if-eqz v2, :cond_e0

    .line 4309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4311
    :cond_e0
    if-eqz v3, :cond_e5

    .line 4312
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4314
    :cond_e5
    if-eqz v4, :cond_ec

    .line 4316
    :try_start_e7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    .line 4319
    goto :goto_ec

    .line 4317
    :catch_eb
    move-exception v5

    .line 4319
    :cond_ec
    :goto_ec
    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .registers 9
    .param p1, "watcher"  # Landroid/view/IRotationWatcher;
    .param p2, "displayId"  # I

    .line 3864
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3865
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3866
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3867
    if-eqz v1, :cond_45

    .line 3872
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3873
    .local v0, "watcherBinder":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/wm/WindowManagerService$10;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/WindowManagerService$10;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 3891
    .local v2, "dr":Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3893
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3894
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    invoke-direct {v5, p0, p1, v2, p2}, Lcom/android/server/wm/WindowManagerService$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_36
    .catchall {:try_start_1e .. :try_end_33} :catchall_34

    .line 3897
    goto :goto_37

    .line 3900
    :catchall_34
    move-exception v4

    goto :goto_40

    .line 3895
    :catch_36
    move-exception v4

    .line 3899
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3900
    :goto_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 3868
    .end local v0  # "watcherBinder":Landroid/os/IBinder;
    .end local v2  # "dr":Landroid/os/IBinder$DeathRecipient;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to register rotation event for invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3866
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 11
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/os/IBinder;
    .param p3, "throwOnError"  # Z

    .line 5424
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 5425
    .local v0, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up client "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    :cond_2a
    const-string v1, "Requested window "

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "Failed looking up window callers="

    if-nez v0, :cond_65

    .line 5427
    if-nez p3, :cond_4b

    .line 5431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    return-object v3

    .line 5428
    :cond_4b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5434
    :cond_65
    if-eqz p1, :cond_ab

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v6, p1, :cond_ab

    .line 5435
    if-nez p3, :cond_84

    .line 5439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    return-object v3

    .line 5436
    :cond_84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is in session "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", not "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5443
    :cond_ab
    return-object v0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "session"  # Lcom/android/server/wm/Session;
    .param p2, "client"  # Landroid/view/IWindow;
    .param p3, "throwOnError"  # Z

    .line 5420
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "logLevel"  # I

    .line 6115
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-wide v1, 0x10b00000001L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6116
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6117
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6118
    .local v0, "topFocusedDisplayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_28

    .line 6119
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6121
    :cond_28
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_36

    .line 6122
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const-wide v2, 0x10900000004L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6124
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 6125
    .local v1, "imeWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_46

    .line 6126
    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6128
    :cond_46
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 6130
    .local v2, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v3, 0x10500000007L

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6131
    const-wide v3, 0x10500000008L

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6132
    return-void
.end method
