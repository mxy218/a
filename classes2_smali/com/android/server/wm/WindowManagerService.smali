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

.field static final localLOGV:Z = false

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

.field public mSystemGestureExclusionLogDebounceTimeoutMillis:J

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 876
    new-instance v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V
    .registers 18

    .line 1013
    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 399
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    .line 400
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 402
    new-instance v3, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 413
    new-instance v3, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    new-instance v3, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 455
    new-array v3, v2, [I

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 490
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 495
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 498
    new-instance v4, Lcom/android/server/wm/WindowHashMap;

    invoke-direct {v4}, Lcom/android/server/wm/WindowHashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    .line 507
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    .line 514
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 524
    const/16 v4, 0x14

    new-array v4, v4, [Lcom/android/server/wm/WindowState;

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 528
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mProcessConfigurations:Landroid/util/SparseArray;

    .line 533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 540
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    .line 546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 558
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 568
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 569
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 570
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    .line 571
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    .line 572
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    .line 574
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    .line 578
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 579
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 580
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 581
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 582
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 583
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    .line 586
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 587
    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 596
    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 631
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 632
    new-instance v5, Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-direct {v5}, Lcom/android/server/wm/WallpaperVisibilityListeners;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 635
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 636
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 637
    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 638
    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 639
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 644
    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 646
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 647
    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 664
    new-instance v5, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 671
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 683
    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 688
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 791
    const/high16 v5, 0x3f800000  # 1.0f

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 792
    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 793
    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 794
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 795
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 833
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 846
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 847
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 867
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 879
    sget-object v5, Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    .line 880
    sget-object v5, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 881
    sget-object v5, Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

    .line 920
    new-instance v5, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 963
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    .line 4388
    new-instance v5, Lcom/android/server/wm/InputManagerCallback;

    invoke-direct {v5, p0}, Lcom/android/server/wm/InputManagerCallback;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    .line 6709
    new-instance v5, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-direct {v5, v4}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>(Lcom/android/server/wm/WindowManagerService$1;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 1014
    const/4 v5, 0x5

    invoke-static {p0, v5}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1015
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1016
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1017
    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1018
    move v5, p3

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 1019
    move v5, p4

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    .line 1020
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11100bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 1022
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    .line 1024
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 1026
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    .line 1028
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    .line 1030
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    .line 1032
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    .line 1036
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111009b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowRamTaskSnapshotsAndRecents:Z

    .line 1038
    move-object v5, p2

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1039
    const-class v5, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1040
    new-instance v5, Lcom/android/server/wm/DisplayWindowSettings;

    invoke-direct {v5, p0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 1042
    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 1043
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v5}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1044
    move-object v5, p5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1045
    new-instance v5, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1046
    new-instance v5, Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v5, p0}, Lcom/android/server/wm/RootWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1048
    new-instance v5, Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowSurfacePlacer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1049
    new-instance v5, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1051
    nop

    .line 1052
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v5

    .line 1051
    invoke-static {p0, v5}, Lcom/android/server/wm/WindowTracing;->createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 1054
    const-class v5, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1056
    const-string v5, "display"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1058
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/KeyguardDisableHandler;->create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 1060
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1061
    const-class v5, Landroid/os/PowerManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1063
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_259

    .line 1064
    new-instance v6, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1082
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x3

    .line 1083
    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v5

    iget-boolean v5, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 1085
    :cond_259
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "SCREEN_FROZEN"

    invoke-virtual {v5, v3, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 1087
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1089
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1090
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 1091
    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1092
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1093
    const-string v5, "appops"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1094
    new-instance v5, Lcom/android/server/wm/WindowManagerService$7;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 1100
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7, v4, v5}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1101
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x2d

    invoke-virtual {v6, v7, v4, v5}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1103
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1104
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1105
    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    const-string v6, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    new-instance v6, Lcom/android/server/wm/WindowManagerService$8;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowManagerService$8;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object p2, p1

    move-object p3, v6

    move-object p4, v7

    move-object p5, v5

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1121
    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const-string v7, "window_animation_scale"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 1123
    nop

    .line 1125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1123
    const-string v7, "transition_animation_scale"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 1128
    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const-string v7, "animator_duration_scale"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    .line 1131
    const-string v6, "force_desktop_mode_on_external_displays"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_308

    goto :goto_309

    :cond_308
    move v3, v2

    :goto_309
    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 1134
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1136
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object p2, v5

    move-object p3, v6

    move-object p4, v7

    move-object p5, v3

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1139
    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 1141
    new-instance v3, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    .line 1143
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v5, 0x2000000a

    const-string v6, "WindowManager"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1145
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1147
    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-direct {v3, v5}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/os/PowerManagerInternal;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x111001e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    .line 1152
    new-instance v3, Lcom/android/server/wm/TaskPositioningController;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1153
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/server/wm/TaskPositioningController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Landroid/app/IActivityTaskManager;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 1154
    new-instance v3, Lcom/android/server/wm/DragDropController;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/server/wm/DragDropController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 1156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->create(Landroid/content/res/Resources;)Lcom/android/server/wm/HighRefreshRateBlacklist;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 1158
    const/16 v1, 0xc8

    .line 1159
    const-string v3, "android:window_manager"

    const-string v5, "system_gesture_exclusion_limit_dp"

    invoke-static {v3, v5, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1158
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    .line 1161
    nop

    .line 1162
    const-string v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 1164
    nop

    .line 1165
    const-string v1, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 1167
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$vZ2iP62NKu_V2W-h0-abrxnOgoI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$vZ2iP62NKu_V2W-h0-abrxnOgoI;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1189
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$LocalService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1190
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 288
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService;)F
    .registers 1

    .line 288
    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2

    .line 288
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 3

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->onPointerDownOutsideFocusLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 1

    .line 288
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2

    .line 288
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateAppOpsState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;Landroid/util/ArraySet;Z)V
    .registers 3

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)F
    .registers 1

    .line 288
    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p0
.end method

.method static synthetic access$802(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2

    .line 288
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/WindowManagerService;)F
    .registers 1

    .line 288
    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2

    .line 288
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method private applyForcedPropertiesForDefaultDisplay()Z
    .registers 9

    .line 5088
    nop

    .line 5089
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5091
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5093
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_20

    .line 5094
    :cond_19
    const/4 v1, 0x0

    const-string v2, "ro.config.size_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5096
    :cond_20
    const-string v2, "WindowManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7a

    .line 5097
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5098
    if-lez v6, :cond_7a

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_7a

    .line 5101
    :try_start_3a
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5102
    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5103
    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v6, v5, :cond_56

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v6, v1, :cond_54

    goto :goto_56

    :cond_54
    move v1, v3

    goto :goto_78

    .line 5105
    :cond_56
    :goto_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FORCED DISPLAY SIZE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_77} :catch_79

    .line 5108
    move v1, v4

    .line 5111
    :goto_78
    goto :goto_7b

    .line 5110
    :catch_79
    move-exception v1

    .line 5116
    :cond_7a
    move v1, v3

    :goto_7b
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v5

    .line 5117
    if-eqz v5, :cond_8a

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_8a

    .line 5118
    iput v5, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5119
    move v1, v4

    .line 5123
    :cond_8a
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_scaling_force"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 5125
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v5, :cond_9b

    move v3, v4

    :cond_9b
    if-eq v6, v3, :cond_a5

    .line 5126
    const-string v1, "FORCED DISPLAY SCALING DISABLED"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 5128
    move v1, v4

    .line 5130
    :cond_a5
    return v1
.end method

.method static boostPriorityForLockedSection()V
    .registers 1

    .line 886
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->boost()V

    .line 887
    return-void
.end method

.method private checkBootAnimationCompleteLocked()Z
    .registers 5

    .line 3372
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3373
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3374
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3377
    const/4 v0, 0x0

    return v0

    .line 3380
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private checkCallerOwnsDisplay(I)V
    .registers 5

    .line 6796
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 6797
    if-eqz v0, :cond_1b

    .line 6802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 6803
    invoke-virtual {v0}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    .line 6804
    if-ne p1, v0, :cond_13

    .line 6807
    return-void

    .line 6805
    :cond_13
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "The caller doesn\'t own the display."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6798
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find display for non-existent displayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    .registers 4

    .line 4363
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_6

    .line 4364
    const/4 p1, 0x0

    return-object p1

    .line 4366
    :cond_6
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4367
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 4368
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 4369
    return-object v0
.end method

.method private createSurfaceControl(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 9

    .line 2382
    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_6

    .line 2383
    or-int/lit8 p2, p2, 0x4

    .line 2388
    :cond_6
    const-wide/16 v0, 0x20

    :try_start_8
    const-string v2, "createSurfaceControl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2389
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p4, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;

    move-result-object p4
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_3b

    .line 2391
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2392
    nop

    .line 2393
    if-eqz p4, :cond_21

    .line 2394
    invoke-virtual {p4, p1}, Lcom/android/server/wm/WindowSurfaceController;->getSurfaceControl(Landroid/view/SurfaceControl;)V

    goto :goto_3a

    .line 2399
    :cond_21
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create surface control for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "WindowManager"

    invoke-static {p4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 2403
    :goto_3a
    return p2

    .line 2391
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .registers 3

    .line 6629
    int-to-float p0, p0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 13

    .line 6269
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WindowManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6270
    :cond_b
    nop

    .line 6272
    const/4 v0, 0x0

    move v1, v0

    move v7, v1

    .line 6273
    :goto_f
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_bc

    .line 6274
    aget-object v2, p3, v1

    .line 6275
    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_bc

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_27

    .line 6276
    goto/16 :goto_bc

    .line 6278
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 6279
    const-string v4, "-a"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 6280
    move v7, v3

    goto/16 :goto_ba

    .line 6281
    :cond_34
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 6282
    const-string p1, "Window manager dump options:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6283
    const-string p1, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6284
    const-string p1, "  cmd may be one of:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6285
    const-string p1, "    l[astanr]: last ANR information"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6286
    const-string p1, "    p[policy]: policy state"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6287
    const-string p1, "    a[animator]: animator state"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6288
    const-string p1, "    s[essions]: active sessions"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6289
    const-string p1, "    surfaces: active surfaces (debugging enabled only)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6290
    const-string p1, "    d[isplays]: active display contents"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6291
    const-string p1, "    t[okens]: token list"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6292
    const-string p1, "    w[indows]: window list"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6293
    const-string p1, "    trace: print trace status and write Winscope trace to file"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6294
    const-string p1, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6295
    const-string p1, "    be a partial substring in a window name, a"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6296
    const-string p1, "    Window hex object identifier, or"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6297
    const-string p1, "    \"all\" for all windows, or"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6298
    const-string p1, "    \"visible\" for the visible windows."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6299
    const-string p1, "    \"visible-apps\" for the visible app windows."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6300
    const-string p1, "  -a: include all available server state."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6301
    const-string p1, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6302
    return-void

    .line 6304
    :cond_a1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; use -h for help"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6306
    :goto_ba
    goto/16 :goto_f

    .line 6308
    :cond_bc
    :goto_bc
    if-eqz p4, :cond_da

    .line 6309
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6310
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6311
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 6312
    monitor-exit p1
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6313
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 6314
    return-void

    .line 6312
    :catchall_d4
    move-exception p2

    :try_start_d5
    monitor-exit p1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6317
    :cond_da
    array-length p1, p3

    const/4 p4, 0x0

    if-ge v1, p1, :cond_275

    .line 6318
    aget-object p1, p3, v1

    .line 6319
    add-int/lit8 v6, v1, 0x1

    .line 6320
    const-string v0, "lastanr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_261

    const-string v0, "l"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    goto/16 :goto_261

    .line 6325
    :cond_f4
    const-string v0, "policy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24d

    const-string v0, "p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    goto/16 :goto_24d

    .line 6330
    :cond_106
    const-string v0, "animator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_239

    const-string v0, "a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_239

    .line 6335
    :cond_118
    const-string v0, "sessions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_225

    const-string v0, "s"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    goto/16 :goto_225

    .line 6340
    :cond_12a
    const-string v0, "displays"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20f

    const-string v0, "d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    goto/16 :goto_20f

    .line 6345
    :cond_13c
    const-string v0, "tokens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fb

    const-string v0, "t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    goto/16 :goto_1fb

    .line 6350
    :cond_14e
    const-string v0, "windows"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7

    const-string v0, "w"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    goto/16 :goto_1e7

    .line 6355
    :cond_160
    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 6356
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_16b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6357
    invoke-direct {p0, p2, v3, p4}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6358
    monitor-exit v0
    :try_end_172
    .catchall {:try_start_16b .. :try_end_172} :catchall_176

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6359
    return-void

    .line 6358
    :catchall_176
    move-exception p1

    :try_start_177
    monitor-exit v0
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6360
    :cond_17c
    const-string p4, "containers"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1ab

    .line 6361
    iget-object p4, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_187
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6362
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string p3, " "

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6363
    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6364
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance p3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LbJzcX6LZWc_oRhCOhY74zWzL7Y;

    invoke-direct {p3, p2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LbJzcX6LZWc_oRhCOhY74zWzL7Y;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p1, p3, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6365
    monitor-exit p4
    :try_end_1a1
    .catchall {:try_start_187 .. :try_end_1a1} :catchall_1a5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6366
    return-void

    .line 6365
    :catchall_1a5
    move-exception p1

    :try_start_1a6
    monitor-exit p4
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6367
    :cond_1ab
    const-string p4, "trace"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1b7

    .line 6368
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpTraceStatus(Ljava/io/PrintWriter;)V

    .line 6369
    return-void

    .line 6370
    :cond_1b7
    const-string p4, "refresh"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1c3

    .line 6371
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpHighRefreshRateBlacklist(Ljava/io/PrintWriter;)V

    .line 6372
    return-void

    .line 6375
    :cond_1c3
    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result p3

    if-nez p3, :cond_1e6

    .line 6376
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad window command, or no windows match: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6377
    const-string p1, "Use -h for help."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6379
    :cond_1e6
    return-void

    .line 6351
    :cond_1e7
    :goto_1e7
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1ea
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6352
    invoke-direct {p0, p2, v3, p4}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6353
    monitor-exit p1
    :try_end_1f1
    .catchall {:try_start_1ea .. :try_end_1f1} :catchall_1f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6354
    return-void

    .line 6353
    :catchall_1f5
    move-exception p2

    :try_start_1f6
    monitor-exit p1
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6346
    :cond_1fb
    :goto_1fb
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1fe
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6347
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 6348
    monitor-exit p1
    :try_end_205
    .catchall {:try_start_1fe .. :try_end_205} :catchall_209

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6349
    return-void

    .line 6348
    :catchall_209
    move-exception p2

    :try_start_20a
    monitor-exit p1
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_209

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6341
    :cond_20f
    :goto_20f
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_212
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6342
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6343
    monitor-exit p1
    :try_end_21b
    .catchall {:try_start_212 .. :try_end_21b} :catchall_21f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6344
    return-void

    .line 6343
    :catchall_21f
    move-exception p2

    :try_start_220
    monitor-exit p1
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6336
    :cond_225
    :goto_225
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_228
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6337
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 6338
    monitor-exit p1
    :try_end_22f
    .catchall {:try_start_228 .. :try_end_22f} :catchall_233

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6339
    return-void

    .line 6338
    :catchall_233
    move-exception p2

    :try_start_234
    monitor-exit p1
    :try_end_235
    .catchall {:try_start_234 .. :try_end_235} :catchall_233

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6331
    :cond_239
    :goto_239
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_23c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6332
    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6333
    monitor-exit p1
    :try_end_243
    .catchall {:try_start_23c .. :try_end_243} :catchall_247

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6334
    return-void

    .line 6333
    :catchall_247
    move-exception p2

    :try_start_248
    monitor-exit p1
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_247

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6326
    :cond_24d
    :goto_24d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_250
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6327
    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6328
    monitor-exit p1
    :try_end_257
    .catchall {:try_start_250 .. :try_end_257} :catchall_25b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6329
    return-void

    .line 6328
    :catchall_25b
    move-exception p2

    :try_start_25c
    monitor-exit p1
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_25b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6321
    :cond_261
    :goto_261
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_264
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6322
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 6323
    monitor-exit p1
    :try_end_26b
    .catchall {:try_start_264 .. :try_end_26b} :catchall_26f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6324
    return-void

    .line 6323
    :catchall_26f
    move-exception p2

    :try_start_270
    monitor-exit p1
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_26f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 6383
    :cond_275
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6384
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6387
    if-eqz v7, :cond_285

    .line 6388
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6390
    :cond_285
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 6391
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6392
    if-eqz v7, :cond_292

    .line 6393
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6395
    :cond_292
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6396
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6397
    if-eqz v7, :cond_29f

    .line 6398
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6400
    :cond_29f
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6401
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6402
    if-eqz v7, :cond_2ac

    .line 6403
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6405
    :cond_2ac
    invoke-direct {p0, p2, v7}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 6406
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6407
    if-eqz v7, :cond_2b9

    .line 6408
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6410
    :cond_2b9
    if-eqz v7, :cond_2c0

    .line 6411
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6413
    :cond_2c0
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6414
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6415
    if-eqz v7, :cond_2cf

    .line 6416
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6418
    :cond_2cf
    invoke-direct {p0, p2, v7}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 6419
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6420
    if-eqz v7, :cond_2dc

    .line 6421
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6423
    :cond_2dc
    invoke-direct {p0, p2, v7, p4}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6424
    if-eqz v7, :cond_2e6

    .line 6425
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6427
    :cond_2e6
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpTraceStatus(Ljava/io/PrintWriter;)V

    .line 6428
    if-eqz v7, :cond_2f0

    .line 6429
    const-string p3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6431
    :cond_2f0
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpHighRefreshRateBlacklist(Ljava/io/PrintWriter;)V

    .line 6432
    monitor-exit p1
    :try_end_2f4
    .catchall {:try_start_278 .. :try_end_2f4} :catchall_2f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6433
    return-void

    .line 6432
    :catchall_2f8
    move-exception p2

    :try_start_2f9
    monitor-exit p1
    :try_end_2fa
    .catchall {:try_start_2f9 .. :try_end_2fa} :catchall_2f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2
.end method

.method private doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z
    .registers 8

    .line 1688
    const/4 v0, 0x1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eqz p3, :cond_13

    .line 1689
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_11

    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget p1, p1, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    if-lt p1, v1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    return v0

    .line 1694
    :cond_13
    :try_start_13
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 1696
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1695
    invoke-virtual {p3, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 1697
    iget v3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_2b

    .line 1701
    iget p1, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p1, v1, :cond_2a

    .line 1702
    return v0

    .line 1706
    :cond_2a
    goto :goto_4b

    .line 1698
    :cond_2b
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in UID "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_4a} :catch_4a

    .line 1704
    :catch_4a
    move-exception p1

    .line 1708
    :goto_4b
    return v2
.end method

.method private dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 5956
    const-string p2, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5957
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v0, "    "

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 5958
    return-void
.end method

.method private dumpHighRefreshRateBlacklist(Ljava/io/PrintWriter;)V
    .registers 3

    .line 5967
    const-string v0, "WINDOW MANAGER HIGH REFRESH RATE BLACKLIST (dumpsys window refresh)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5968
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->dump(Ljava/io/PrintWriter;)V

    .line 5969
    return-void
.end method

.method private dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3

    .line 6209
    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6210
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 6211
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 6213
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6215
    :goto_12
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 5951
    const-string p3, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5952
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v0, "    "

    invoke-interface {p3, v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5953
    return-void
.end method

.method private dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .registers 5

    .line 5977
    const-string p2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5978
    const/4 p2, 0x0

    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p2, v0, :cond_2b

    .line 5979
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Session;

    .line 5980
    const-string v1, "  Session "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 5981
    const-string v1, "    "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5978
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 5983
    :cond_2b
    return-void
.end method

.method private dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .registers 4

    .line 5961
    const-string v0, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5962
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 5963
    return-void
.end method

.method private dumpTraceStatus(Ljava/io/PrintWriter;)V
    .registers 4

    .line 5972
    const-string v0, "WINDOW MANAGER TRACE (dumpsys window trace)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5973
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

    .line 5974
    return-void
.end method

.method private dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 10

    .line 6176
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 6177
    const-string p4, "apps"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_35

    const-string p4, "visible"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_35

    const-string p4, "visible-apps"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1f

    goto :goto_35

    .line 6193
    :cond_1f
    iget-object p4, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6194
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6195
    monitor-exit p4
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5d

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6178
    :cond_35
    :goto_35
    const-string p4, "apps"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    .line 6179
    const-string v1, "visible"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 6180
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6181
    if-eqz p4, :cond_4e

    .line 6182
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6185
    :cond_4e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$C4RecYWtrllidEGWyvVvRsY6lno;

    invoke-direct {v3, p2, p4, p3}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$C4RecYWtrllidEGWyvVvRsY6lno;-><init>(ZZLjava/util/ArrayList;)V

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6191
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6192
    nop

    .line 6198
    :goto_5d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_65

    .line 6199
    const/4 p1, 0x0

    return p1

    .line 6202
    :cond_65
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6203
    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6204
    monitor-exit p2
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6205
    return v0

    .line 6204
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit p2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6191
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 5
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

    .line 6014
    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6015
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6016
    return-void
.end method

.method private dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 11
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

    .line 6020
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6022
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ":"

    const-string v2, "    "

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-nez v0, :cond_4a

    .line 6023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6024
    const-string v0, "  Hiding System Alert Windows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6025
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_23
    if-ltz v0, :cond_4a

    .line 6026
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6027
    const-string v6, "  #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6028
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6029
    if-eqz p2, :cond_44

    .line 6030
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6031
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_47

    .line 6033
    :cond_44
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6025
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 6037
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 6038
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6039
    const-string v0, "  Remove pending for:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6040
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_61
    if-ltz v0, :cond_90

    .line 6041
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6042
    if-eqz p3, :cond_73

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 6043
    :cond_73
    const-string v6, "  Remove #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6044
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6045
    if-eqz p2, :cond_8a

    .line 6046
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6047
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_8d

    .line 6049
    :cond_8a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6040
    :cond_8d
    :goto_8d
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    .line 6054
    :cond_90
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v0, :cond_d0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 6055
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6056
    const-string v0, "  Windows force removing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6057
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_a9
    if-ltz v0, :cond_d0

    .line 6058
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6059
    const-string v6, "  Removing #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6060
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6061
    if-eqz p2, :cond_ca

    .line 6062
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6063
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_cd

    .line 6065
    :cond_ca
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6057
    :goto_cd
    add-int/lit8 v0, v0, -0x1

    goto :goto_a9

    .line 6069
    :cond_d0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_116

    .line 6070
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6071
    const-string v0, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6072
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_e7
    if-ltz v0, :cond_116

    .line 6073
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6074
    if-eqz p3, :cond_f9

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    .line 6075
    :cond_f9
    const-string v6, "  Destroy #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6076
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6077
    if-eqz p2, :cond_110

    .line 6078
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6079
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_113

    .line 6081
    :cond_110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6072
    :cond_113
    :goto_113
    add-int/lit8 v0, v0, -0x1

    goto :goto_e7

    .line 6086
    :cond_116
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15c

    .line 6087
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6088
    const-string v0, "  Windows waiting to resize:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6089
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_12d
    if-ltz v0, :cond_15c

    .line 6090
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 6091
    if-eqz p3, :cond_13f

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 6092
    :cond_13f
    const-string v6, "  Resizing #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6093
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6094
    if-eqz p2, :cond_156

    .line 6095
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6096
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_159

    .line 6098
    :cond_156
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6089
    :cond_159
    :goto_159
    add-int/lit8 v0, v0, -0x1

    goto :goto_12d

    .line 6103
    :cond_15c
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_18e

    .line 6104
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6105
    const-string p3, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6106
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v4

    :goto_173
    if-ltz p3, :cond_18e

    .line 6107
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 6108
    const-string v1, "  Waiting #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6106
    add-int/lit8 p3, p3, -0x1

    goto :goto_173

    .line 6111
    :cond_18e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6112
    const-string p3, "  mGlobalConfiguration="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6113
    const-string p3, "  mHasPermanentDpad="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6114
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V

    .line 6115
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$pgbw_FPqeLJMP83kqiaVcOei-Ds;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$pgbw_FPqeLJMP83kqiaVcOei-Ds;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p3, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 6122
    const-string p3, "  mInTouchMode="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6123
    const-string p3, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6124
    iget p3, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v0, p3

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6125
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz p3, :cond_1db

    .line 6126
    const-string p3, " due to "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6127
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6129
    :cond_1db
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6130
    const-string p3, "  mLastWakeLockHoldingWindow="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6131
    const-string p3, " mLastWakeLockObscuringWindow="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6132
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6134
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    const-string v0, "  "

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wm/InputManagerCallback;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6135
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6137
    if-eqz p2, :cond_2d3

    .line 6138
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object p2

    .line 6139
    if-eqz p2, :cond_213

    .line 6140
    const-string p3, "  mInputMethodWindow="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6142
    :cond_213
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6143
    const-string p2, "  mSystemBooted="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 6144
    const-string p2, " mDisplayEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 6146
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V

    .line 6148
    const-string p2, "  mTransactionSequence="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 6149
    const-string p2, "  mDisplayFrozen="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 6150
    const-string p2, " windows="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 6151
    const-string p2, " client="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 6152
    const-string p2, " apps="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 6153
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 6154
    const-string p3, "  mRotation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6155
    const-string p3, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6156
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getLastWindowForcedOrientation()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6157
    const-string p3, " mLastOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6158
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 6159
    const-string p3, " waitingForConfig="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6160
    iget-boolean p2, p2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 6162
    const-string p2, "  Animation settings: disabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 6163
    const-string p2, " window="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 6164
    const-string p2, " transition="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 6165
    const-string p2, " animator="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    .line 6166
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz p2, :cond_2d0

    .line 6167
    const-string p2, "  mRecentsAnimationController="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6168
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p2, p1, v2}, Lcom/android/server/wm/RecentsAnimationController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6170
    :cond_2d0
    invoke-static {v0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6172
    :cond_2d3
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .registers 2

    .line 1232
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_e

    .line 1238
    const/4 p0, 0x0

    return p0

    .line 1236
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 5

    .line 4318
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 4320
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    return-object p1

    .line 4323
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4324
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tOeHm8ndyhv8iLNQ_GHuZ7HhJdw;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tOeHm8ndyhv8iLNQ_GHuZ7HhJdw;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 4325
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method static fixScale(F)F
    .registers 4

    .line 2998
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x41a00000  # 20.0f

    if-gez v1, :cond_9

    move p0, v0

    goto :goto_e

    .line 2999
    :cond_9
    cmpl-float v0, p0, v2

    if-lez v0, :cond_e

    move p0, v2

    .line 3000
    :cond_e
    :goto_e
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;
    .registers 4

    .line 1663
    if-eqz p2, :cond_f

    .line 1664
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object p2

    .line 1665
    if-eqz p2, :cond_f

    .line 1666
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    return-object p1

    .line 1670
    :cond_f
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 1674
    if-nez p2, :cond_26

    .line 1675
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 1677
    if-eqz p1, :cond_26

    .line 1678
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 1682
    :cond_26
    return-object p2
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 4406
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4407
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4408
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

    .line 4413
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getForcedDisplayDensityForUserLocked(I)I
    .registers 4

    .line 5229
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5231
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 5232
    :cond_14
    const/4 p1, 0x0

    const-string v0, "ro.config.density_override"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5234
    :cond_1b
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    .line 5236
    :try_start_23
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_27} :catch_28

    return p1

    .line 5237
    :catch_28
    move-exception p1

    .line 5240
    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method static getInstance()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 971
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 6

    .line 5614
    array-length v0, p0

    if-ge p1, v0, :cond_13

    .line 5615
    aget-object p0, p0, p1

    .line 5616
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_13

    .line 5618
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    .line 5619
    return p0

    .line 5620
    :catch_12
    move-exception p0

    .line 5624
    :cond_13
    if-nez p2, :cond_16

    .line 5625
    return p3

    .line 5627
    :cond_16
    int-to-float p0, p3

    invoke-static {p2, p0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    .line 5628
    return p0
.end method

.method private handleDisplayFocusChange(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 7806
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7807
    if-nez v0, :cond_7

    .line 7808
    return-void

    .line 7811
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p1

    if-nez p1, :cond_e

    .line 7814
    return-void

    .line 7817
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 7818
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, v0, :cond_28

    .line 7819
    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7828
    iget-object p1, v0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 7831
    :cond_28
    return-void
.end method

.method private handleTaskFocusChange(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 7787
    if-nez p1, :cond_3

    .line 7788
    return-void

    .line 7791
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 7795
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7796
    return-void

    .line 7800
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 7802
    goto :goto_15

    .line 7801
    :catch_14
    move-exception p1

    .line 7803
    :goto_15
    return-void
.end method

.method private hasStatusBarPermission(II)Z
    .registers 5

    .line 1995
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

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

.method private initPolicy()V
    .registers 5

    .line 996
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1003
    return-void
.end method

.method private isSystemSecure()Z
    .registers 3

    .line 4030
    const-string v0, "1"

    const-string v1, "ro.secure"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4031
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

    .line 4030
    :goto_1f
    return v0
.end method

.method static synthetic lambda$doDump$9(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 6364
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dumpWindows$8(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 6186
    if-eqz p0, :cond_a

    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_a
    if-eqz p1, :cond_10

    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p0, :cond_13

    .line 6188
    :cond_10
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6190
    :cond_13
    return-void
.end method

.method static synthetic lambda$dumpWindowsNoHeaderLocked$7(Ljava/io/PrintWriter;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 6116
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 6117
    if-eqz v0, :cond_18

    .line 6118
    const-string v1, "  mInputMethodTarget in display# "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 6119
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6121
    :cond_18
    return-void
.end method

.method static synthetic lambda$findWindow$5(ILcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 4324
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V
    .registers 16

    .line 990
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

    .line 6451
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->onOverlayChangedLw()V

    .line 6452
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6453
    return-void
.end method

.method static synthetic lambda$requestAssistScreenshot$3(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 3617
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 3619
    goto :goto_5

    .line 3618
    :catch_4
    move-exception p0

    .line 3620
    :goto_5
    return-void
.end method

.method static synthetic lambda$setCurrentUser$2(ILcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 3207
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    return-void
.end method

.method static synthetic lambda$syncInputTransactions$12(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 7747
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsImmediately()V

    return-void
.end method

.method static synthetic lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$11(ZLcom/android/server/wm/WindowState;)V
    .registers 2

    .line 7648
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 7649
    return-void
.end method

.method static synthetic lambda$viewServerListWindows$4(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 4096
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4097
    return-void
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1884
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    .registers 5

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1875
    const-string p1, "WindowManager"

    if-eqz p2, :cond_21

    .line 1876
    invoke-static {p1, p0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 1878
    :cond_21
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :goto_24
    return-void
.end method

.method static logWithStack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1888
    nop

    .line 1893
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1894
    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;
    .registers 13

    .line 977
    sget-object v6, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)Lcom/android/server/wm/WindowManagerService;
    .registers 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 989
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

    .line 992
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private notifyFocusChanged()V
    .registers 5

    .line 4304
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4305
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4306
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4308
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4309
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4310
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4311
    array-length v0, v1

    .line 4312
    const/4 v2, 0x0

    :goto_29
    if-ge v2, v0, :cond_33

    .line 4313
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 4312
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 4315
    :cond_33
    return-void

    .line 4310
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyWindowsChanged()V
    .registers 5

    .line 4289
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4290
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4291
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4293
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4294
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4295
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4296
    array-length v0, v1

    .line 4297
    const/4 v2, 0x0

    :goto_29
    if-ge v2, v0, :cond_33

    .line 4298
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 4297
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 4300
    :cond_33
    return-void

    .line 4295
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private onPointerDownOutsideFocusLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 7777
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 7778
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1a

    .line 7782
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->handleTaskFocusChange(Lcom/android/server/wm/Task;)V

    .line 7783
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayFocusChange(Lcom/android/server/wm/WindowState;)V

    .line 7784
    return-void

    .line 7779
    :cond_1a
    :goto_1a
    return-void
.end method

.method private performEnableScreen()V
    .registers 9

    .line 3298
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3305
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_f

    .line 3306
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3308
    :cond_f
    :try_start_f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_1c

    .line 3309
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3312
    :cond_1c
    :try_start_1c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->canDismissBootAnimation()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 3313
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3317
    :cond_2d
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_40

    .line 3319
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->checkWaitingForWindows()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3320
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3323
    :cond_40
    :try_start_40
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_56

    .line 3324
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3328
    const-string v1, "service.bootanim.exit"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 3332
    :cond_56
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_65

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v1

    if-nez v1, :cond_65

    .line 3334
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3338
    :cond_65
    :try_start_65
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3339
    if-eqz v1, :cond_84

    .line 3340
    const-string v6, "WindowManager"

    const-string v7, "******* TELLING SURFACE FLINGER WE ARE BOOTED!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 3342
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3343
    const/4 v7, 0x0

    invoke-interface {v1, v4, v6, v7, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3345
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_84} :catch_85
    .catchall {:try_start_65 .. :try_end_84} :catchall_b8

    .line 3349
    :cond_84
    goto :goto_8d

    .line 3347
    :catch_85
    move-exception v1

    .line 3348
    :try_start_86
    const-string v1, "WindowManager"

    const-string v6, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :goto_8d
    const/16 v1, 0x791f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3352
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 3353
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 3357
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputManagerCallback;->setEventDispatchingLw(Z)V

    .line 3358
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_86 .. :try_end_a5} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3361
    :try_start_a8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->bootAnimationComplete()V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ad} :catch_ae

    .line 3363
    goto :goto_af

    .line 3362
    :catch_ae
    move-exception v0

    .line 3365
    :goto_af
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 3368
    invoke-direct {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3369
    return-void

    .line 3358
    :catchall_b8
    move-exception v1

    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    .line 1742
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1743
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1744
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1745
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1747
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1749
    :cond_22
    return-void
.end method

.method private prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 8

    .line 1715
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1716
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1717
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1720
    return v1

    .line 1724
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 1727
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1728
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1729
    const/16 p1, 0x12

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1731
    iget-object p1, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 1732
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1731
    invoke-virtual {p1, v1, v4, v5, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1733
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1734
    return v3
.end method

.method private static queryHdrSupport()Z
    .registers 1

    .line 4539
    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    .line 4540
    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 4541
    if-eqz v0, :cond_d

    .line 4542
    iget-boolean v0, v0, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 4546
    :cond_d
    goto :goto_f

    .line 4544
    :catch_e
    move-exception v0

    .line 4547
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private static queryWideColorGamutSupport()Z
    .registers 1

    .line 4526
    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    .line 4527
    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 4528
    if-eqz v0, :cond_d

    .line 4529
    iget-boolean v0, v0, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 4533
    :cond_d
    goto :goto_f

    .line 4531
    :catch_e
    move-exception v0

    .line 4534
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method static resetPriorityAfterLockedSection()V
    .registers 1

    .line 890
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->reset()V

    .line 891
    return-void
.end method

.method private setAnimatorDurationScale(F)V
    .registers 2

    .line 3046
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3047
    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 3048
    return-void
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .registers 12

    .line 5287
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 5288
    iput p2, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 5289
    iput p3, v1, Landroid/view/DisplayInfo;->overscanTop:I

    .line 5290
    iput p4, v1, Landroid/view/DisplayInfo;->overscanRight:I

    .line 5291
    iput p5, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 5293
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayWindowSettings;->setOverscanLocked(Landroid/view/DisplayInfo;IIII)V

    .line 5295
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5296
    return-void
.end method

.method private setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    .registers 4

    .line 2670
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 2671
    if-eqz p1, :cond_21

    .line 2672
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 2673
    if-nez p1, :cond_f

    .line 2674
    return-void

    .line 2676
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr p2, v0

    .line 2677
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2679
    :cond_21
    return-void
.end method

.method private showStrictModeViolation(II)V
    .registers 5

    .line 3540
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 3541
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3544
    if-eqz p1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->canShowStrictModeViolation(I)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 3545
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3552
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3f

    .line 3555
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez p2, :cond_2c

    .line 3556
    new-instance p2, Lcom/android/server/wm/StrictModeFlash;

    .line 3557
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/server/wm/StrictModeFlash;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 3559
    :cond_2c
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_3a

    .line 3561
    :try_start_31
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 3564
    nop

    .line 3565
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3566
    return-void

    .line 3561
    :catchall_3a
    move-exception p1

    :try_start_3b
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw p1

    .line 3565
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;Z)Z
    .registers 9

    .line 2337
    nop

    .line 2338
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2339
    const/4 v0, 0x5

    goto :goto_b

    .line 2338
    :cond_a
    const/4 v0, 0x2

    .line 2341
    :goto_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2342
    nop

    .line 2343
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    move p3, v3

    goto :goto_51

    .line 2344
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2347
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_51

    .line 2348
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2352
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_51

    .line 2354
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2355
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_42

    .line 2356
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2358
    :cond_42
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4b

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    goto :goto_4c

    :cond_4b
    move v1, v3

    .line 2362
    :goto_4c
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2363
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    .line 2365
    :goto_51
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_58

    .line 2366
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2373
    :cond_58
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2374
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2375
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2377
    return p3
.end method

.method private updateAppOpsState()V
    .registers 3

    .line 1868
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1869
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->updateAppOpsState()V

    .line 1870
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1871
    return-void

    .line 1870
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
    .registers 5

    .line 3437
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3438
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3441
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3442
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3443
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3447
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3449
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    move v1, v2

    .line 3450
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3451
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3452
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_52

    .line 3443
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3454
    :cond_52
    :goto_52
    return-void
.end method

.method private updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1862
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1863
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    .line 1864
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1865
    return-void

    .line 1864
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private updateRotationUnchecked(ZZ)V
    .registers 13

    .line 3767
    const-wide/16 v0, 0x20

    const-string v2, "updateRotation"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3772
    :try_start_b
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_67

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3773
    nop

    .line 3774
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 3775
    const/4 v6, 0x0

    move v7, v6

    :goto_1c
    if-ge v6, v5, :cond_46

    .line 3776
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v8, v8, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 3777
    const-string v9, "updateRotation: display"

    invoke-static {v0, v1, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3778
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v9

    .line 3779
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3781
    if-eqz v9, :cond_38

    if-eqz p2, :cond_3c

    .line 3782
    :cond_38
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3783
    const/4 v7, 0x1

    .line 3785
    :cond_3c
    if-nez v9, :cond_40

    if-eqz p1, :cond_43

    .line 3786
    :cond_40
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 3775
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 3790
    :cond_46
    if-eqz v7, :cond_55

    .line 3791
    const-string p1, "updateRotation: performSurfacePlacement"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3793
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3794
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3796
    :cond_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_e .. :try_end_56} :catchall_61

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_67

    .line 3798
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3799
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3800
    nop

    .line 3801
    return-void

    .line 3796
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 3798
    :catchall_67
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3799
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private waitForAnimationsToComplete()V
    .registers 8

    .line 7753
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7754
    const-wide/16 v1, 0x1388

    .line 7755
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isSelfOrChildAnimating()Z

    move-result v3

    if-eqz v3, :cond_28

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_28

    .line 7756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3c

    .line 7758
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_3c

    .line 7760
    goto :goto_21

    .line 7759
    :catch_20
    move-exception v5

    .line 7761
    :goto_21
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 7762
    goto :goto_8

    .line 7764
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->isSelfOrChildAnimating()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 7765
    const-string v1, "WindowManager"

    const-string v2, "Timed out waiting for animations to complete."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7767
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7768
    return-void

    .line 7767
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
    .registers 45

    .line 1246
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v13, p4

    move/from16 v14, p6

    move-object/from16 v15, p12

    const/4 v12, 0x1

    new-array v10, v12, [I

    .line 1247
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v13, v10}, Lcom/android/server/policy/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v1

    .line 1248
    if-eqz v1, :cond_16

    .line 1249
    return v1

    .line 1252
    :cond_16
    nop

    .line 1253
    nop

    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1256
    iget v8, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1258
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1259
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_799

    .line 1263
    iget-object v1, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-direct {v0, v14, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 1265
    const/16 v16, -0x9

    if-nez v6, :cond_52

    .line 1266
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1270
    :cond_52
    :try_start_52
    iget v1, v9, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 1271
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1276
    :cond_7a
    :try_start_7a
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v17, -0x5

    if-eqz v1, :cond_aa

    .line 1277
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    monitor-exit v7
    :try_end_a6
    .catchall {:try_start_7a .. :try_end_a6} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v17

    .line 1281
    :cond_aa
    move-object/from16 v5, p2

    const/16 v1, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-lt v8, v1, :cond_114

    const/16 v2, 0x7cf

    if-gt v8, v2, :cond_114

    .line 1282
    :try_start_b6
    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1283
    if-nez v2, :cond_e1

    .line 1284
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add window with token that is not a window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, -0x2

    monitor-exit v7
    :try_end_dd
    .catchall {:try_start_b6 .. :try_end_dd} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1288
    :cond_e1
    :try_start_e1
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v1, :cond_112

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v1, v3, :cond_112

    .line 1290
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v0, -0x2

    monitor-exit v7
    :try_end_10e
    .catchall {:try_start_e1 .. :try_end_10e} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1296
    :cond_112
    move-object v3, v2

    goto :goto_115

    :cond_114
    move-object v3, v4

    :goto_115
    const/16 v1, 0x7ee

    if-ne v8, v1, :cond_12c

    :try_start_119
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_12c

    .line 1297
    const-string v0, "WindowManager"

    const-string v1, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v0, -0x8

    monitor-exit v7
    :try_end_128
    .catchall {:try_start_119 .. :try_end_128} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1301
    :cond_12c
    const/16 v1, 0x7f5

    if-ne v8, v1, :cond_146

    :try_start_130
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isPublicPresentation()Z

    move-result v1

    if-nez v1, :cond_146

    .line 1302
    const-string v0, "WindowManager"

    const-string v1, "Attempted to add presentation window to a non-suitable display.  Aborting."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    monitor-exit v7
    :try_end_142
    .catchall {:try_start_130 .. :try_end_142} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1308
    :cond_146
    nop

    .line 1309
    if-eqz v3, :cond_14b

    move v1, v12

    goto :goto_14c

    :cond_14b
    const/4 v1, 0x0

    .line 1312
    :goto_14c
    nop

    .line 1313
    if-eqz v1, :cond_154

    :try_start_14f
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_156

    :cond_154
    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1312
    :goto_156
    invoke-virtual {v6, v2}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    .line 1316
    if-eqz v1, :cond_161

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_162

    :cond_161
    move v1, v8

    .line 1318
    :goto_162
    nop

    .line 1320
    const/16 v4, 0x7ef

    const/16 v5, 0x7db

    const/16 v25, -0x1

    if-nez v2, :cond_2ee

    .line 1321
    if-lt v1, v12, :cond_193

    const/16 v2, 0x63

    if-gt v1, v2, :cond_193

    .line 1322
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add application window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    monitor-exit v7
    :try_end_18f
    .catchall {:try_start_14f .. :try_end_18f} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1326
    :cond_193
    if-ne v1, v5, :cond_1b7

    .line 1327
    :try_start_195
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add input method window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    monitor-exit v7
    :try_end_1b3
    .catchall {:try_start_195 .. :try_end_1b3} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1331
    :cond_1b7
    if-ne v1, v4, :cond_1db

    .line 1332
    :try_start_1b9
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add voice interaction window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    monitor-exit v7
    :try_end_1d7
    .catchall {:try_start_1b9 .. :try_end_1d7} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1336
    :cond_1db
    const/16 v4, 0x7dd

    if-ne v1, v4, :cond_201

    .line 1337
    :try_start_1df
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    monitor-exit v7
    :try_end_1fd
    .catchall {:try_start_1df .. :try_end_1fd} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1341
    :cond_201
    const/16 v2, 0x7e7

    if-ne v1, v2, :cond_227

    .line 1342
    :try_start_205
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add Dream window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    monitor-exit v7
    :try_end_223
    .catchall {:try_start_205 .. :try_end_223} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1346
    :cond_227
    const/16 v2, 0x7f3

    if-ne v1, v2, :cond_24d

    .line 1347
    :try_start_22b
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add QS dialog window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    monitor-exit v7
    :try_end_249
    .catchall {:try_start_22b .. :try_end_249} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1351
    :cond_24d
    const/16 v2, 0x7f0

    if-ne v1, v2, :cond_273

    .line 1352
    :try_start_251
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add Accessibility overlay window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    monitor-exit v7
    :try_end_26f
    .catchall {:try_start_251 .. :try_end_26f} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1356
    :cond_273
    const/16 v2, 0x7d5

    if-ne v8, v2, :cond_2a1

    .line 1358
    :try_start_277
    iget-object v1, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v3}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2a1

    .line 1360
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a toast window with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    monitor-exit v7
    :try_end_29d
    .catchall {:try_start_277 .. :try_end_29d} :catchall_7a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1365
    :cond_2a1
    :try_start_2a1
    iget-object v1, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_2a8

    iget-object v1, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2ac

    :cond_2a8
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2ac
    move-object/from16 v20, v1

    .line 1366
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v21, 0x100000

    and-int v1, v1, v21

    if-eqz v1, :cond_2b9

    move/from16 v21, v12

    goto :goto_2bb

    :cond_2b9
    const/16 v21, 0x0

    .line 1368
    :goto_2bb
    new-instance v22, Lcom/android/server/wm/WindowToken;

    const/16 v23, 0x0

    iget-boolean v1, v9, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_2c1
    .catchall {:try_start_2a1 .. :try_end_2c1} :catchall_7a3

    move/from16 v24, v1

    move-object/from16 v1, v22

    move/from16 v25, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    move-object/from16 v3, v20

    move/from16 v18, v4

    move v4, v8

    move/from16 v5, v23

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v7, v24

    move/from16 v27, v8

    move/from16 v8, v21

    :try_start_2dc
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    .line 1370
    move-object/from16 v20, v22

    move-object/from16 v23, v26

    move/from16 v8, v27

    const/4 v7, 0x0

    const/16 v14, 0x7d5

    const/16 v21, 0x0

    const/16 v24, 0x0

    goto/16 :goto_523

    :cond_2ee
    move-object/from16 v26, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v27, v8

    if-lt v1, v12, :cond_36a

    const/16 v3, 0x63

    if-gt v1, v3, :cond_36a

    .line 1371
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 1372
    if-nez v4, :cond_323

    .line 1373
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with non-application token "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const/4 v0, -0x3

    monitor-exit v19
    :try_end_31f
    .catchall {:try_start_2dc .. :try_end_31f} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1376
    :cond_323
    :try_start_323
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v1, :cond_348

    .line 1377
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with exiting application token "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v0, -0x4

    monitor-exit v19
    :try_end_344
    .catchall {:try_start_323 .. :try_end_344} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1380
    :cond_348
    const/4 v1, 0x3

    move/from16 v8, v27

    if-ne v8, v1, :cond_35d

    :try_start_34d
    iget-object v1, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_35d

    .line 1381
    const-string v0, "WindowManager"

    const-string v1, "Attempted to add starting window to token with already existing starting window"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    monitor-exit v19
    :try_end_359
    .catchall {:try_start_34d .. :try_end_359} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v17

    .line 1439
    :cond_35d
    move-object/from16 v20, v2

    move-object v7, v4

    move-object/from16 v23, v26

    const/16 v14, 0x7d5

    const/16 v21, 0x0

    :goto_366
    const/16 v24, 0x0

    goto/16 :goto_523

    .line 1370
    :cond_36a
    move/from16 v8, v27

    .line 1385
    const/16 v7, 0x7db

    if-ne v1, v7, :cond_39e

    .line 1386
    :try_start_370
    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v7, :cond_396

    .line 1387
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add input method window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    monitor-exit v19
    :try_end_392
    .catchall {:try_start_370 .. :try_end_392} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1386
    :cond_396
    move-object/from16 v23, v26

    const/16 v14, 0x7d5

    const/16 v24, 0x0

    goto/16 :goto_51d

    .line 1391
    :cond_39e
    if-ne v1, v4, :cond_3ce

    .line 1392
    :try_start_3a0
    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v4, :cond_3c6

    .line 1393
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add voice interaction window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    monitor-exit v19
    :try_end_3c2
    .catchall {:try_start_3a0 .. :try_end_3c2} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1392
    :cond_3c6
    move-object/from16 v23, v26

    const/16 v14, 0x7d5

    const/16 v24, 0x0

    goto/16 :goto_51d

    .line 1397
    :cond_3ce
    const/16 v6, 0x7dd

    if-ne v1, v6, :cond_400

    .line 1398
    :try_start_3d2
    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v6, :cond_3f8

    .line 1399
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    monitor-exit v19
    :try_end_3f4
    .catchall {:try_start_3d2 .. :try_end_3f4} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1398
    :cond_3f8
    move-object/from16 v23, v26

    const/16 v14, 0x7d5

    const/16 v24, 0x0

    goto/16 :goto_51d

    .line 1403
    :cond_400
    const/16 v3, 0x7e7

    if-ne v1, v3, :cond_432

    .line 1404
    :try_start_404
    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v3, :cond_42a

    .line 1405
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add Dream window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    monitor-exit v19
    :try_end_426
    .catchall {:try_start_404 .. :try_end_426} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1404
    :cond_42a
    move-object/from16 v23, v26

    const/16 v14, 0x7d5

    const/16 v24, 0x0

    goto/16 :goto_51d

    .line 1409
    :cond_432
    const/16 v3, 0x7f0

    if-ne v1, v3, :cond_464

    .line 1410
    :try_start_436
    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v3, :cond_45c

    .line 1411
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add Accessibility overlay window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    monitor-exit v19
    :try_end_458
    .catchall {:try_start_436 .. :try_end_458} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1410
    :cond_45c
    move-object/from16 v23, v26

    const/16 v14, 0x7d5

    const/16 v24, 0x0

    goto/16 :goto_51d

    .line 1415
    :cond_464
    const/16 v5, 0x7d5

    if-ne v8, v5, :cond_4a2

    .line 1417
    :try_start_468
    iget-object v1, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v11, v4}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v3

    .line 1419
    if-eqz v3, :cond_498

    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v5, :cond_498

    .line 1420
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a toast window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    monitor-exit v19
    :try_end_494
    .catchall {:try_start_468 .. :try_end_494} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1439
    :cond_498
    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v23, v4

    move v14, v5

    const/4 v7, 0x0

    goto/16 :goto_366

    .line 1424
    :cond_4a2
    move-object/from16 v4, v26

    const/16 v3, 0x7f3

    if-ne v8, v3, :cond_4d4

    .line 1425
    :try_start_4a8
    iget v1, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v3, :cond_4ce

    .line 1426
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add QS dialog window with bad token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    monitor-exit v19
    :try_end_4ca
    .catchall {:try_start_4a8 .. :try_end_4ca} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v25

    .line 1425
    :cond_4ce
    move-object/from16 v23, v4

    move v14, v5

    const/16 v24, 0x0

    goto :goto_51d

    .line 1430
    :cond_4d4
    :try_start_4d4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_518

    .line 1431
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-null appWindowToken for system window of rootType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v5, 0x0

    iput-object v5, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1435
    new-instance v20, Lcom/android/server/wm/WindowToken;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/16 v21, 0x0

    iget-boolean v2, v9, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    move-object/from16 v1, v20

    move/from16 v22, v2

    move-object/from16 v2, p0

    move-object/from16 v23, v4

    move v4, v8

    move-object/from16 v24, v5

    const/16 v14, 0x7d5

    move/from16 v5, v21

    move-object/from16 v6, v18

    move/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    move-object/from16 v7, v24

    const/16 v21, 0x0

    goto :goto_523

    .line 1430
    :cond_518
    move-object/from16 v23, v4

    move v14, v5

    const/16 v24, 0x0

    .line 1439
    :goto_51d
    move-object/from16 v20, v2

    move-object/from16 v7, v24

    const/16 v21, 0x0

    :goto_523
    new-instance v6, Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    aget v10, v10, v5

    iget v4, v9, Lcom/android/server/wm/Session;->mUid:I

    iget-boolean v3, v9, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v22, v3

    move-object/from16 v3, p1

    move/from16 v25, v4

    move-object/from16 v4, p2

    move v9, v5

    move-object/from16 v5, v20

    move-object v14, v6

    move-object/from16 v6, v23

    move-object/from16 v28, v7

    move v7, v10

    move v10, v8

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v29, v10

    move/from16 v10, p5

    move/from16 v30, v11

    move/from16 v11, v25

    move/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V

    .line 1442
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v1, :cond_57b

    .line 1445
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding window client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that is dead, aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v0, -0x4

    monitor-exit v19
    :try_end_577
    .catchall {:try_start_4d4 .. :try_end_577} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1450
    :cond_57b
    :try_start_57b
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_58d

    .line 1451
    const-string v0, "WindowManager"

    const-string v1, "Adding window to Display that has been removed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    monitor-exit v19
    :try_end_589
    .catchall {:try_start_57b .. :try_end_589} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1455
    :cond_58d
    :try_start_58d
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    .line 1456
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1456
    invoke-virtual {v2, v14, v1, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1458
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v13}, Lcom/android/server/policy/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    invoke-virtual {v14, v1}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    .line 1460
    invoke-virtual {v2, v14, v13}, Lcom/android/server/wm/DisplayPolicy;->prepareAddWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 1461
    if-eqz v1, :cond_5b2

    .line 1462
    monitor-exit v19
    :try_end_5ae
    .catchall {:try_start_58d .. :try_end_5ae} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1465
    :cond_5b2
    if-eqz v15, :cond_5bc

    :try_start_5b4
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5bc

    const/4 v1, 0x1

    goto :goto_5bd

    :cond_5bc
    const/4 v1, 0x0

    .line 1467
    :goto_5bd
    if-eqz v1, :cond_5c2

    .line 1468
    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    .line 1481
    :cond_5c2
    move/from16 v1, v29

    const/16 v3, 0x7d5

    if-ne v1, v3, :cond_602

    .line 1482
    move-object/from16 v12, v18

    move/from16 v3, v30

    invoke-virtual {v12, v3}, Lcom/android/server/wm/DisplayContent;->canAddToastWindowForUid(I)Z

    move-result v4

    if-nez v4, :cond_5de

    .line 1483
    const-string v0, "WindowManager"

    const-string v1, "Adding more than one toast window for UID at a time."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    monitor-exit v19
    :try_end_5da
    .catchall {:try_start_5b4 .. :try_end_5da} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v17

    .line 1491
    :cond_5de
    if-nez v21, :cond_5f0

    :try_start_5e0
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5f0

    iget-object v4, v12, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_5f0

    iget-object v4, v12, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v4, v3, :cond_604

    .line 1495
    :cond_5f0
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x34

    .line 1496
    invoke-virtual {v4, v5, v14}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1495
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_604

    .line 1481
    :cond_602
    move-object/from16 v12, v18

    .line 1503
    :cond_604
    :goto_604
    nop

    .line 1504
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_60e

    .line 1505
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    :cond_60e
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_619

    .line 1509
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    :cond_619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1514
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->attach()V

    .line 1515
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v14}, Lcom/android/server/wm/WindowHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->initAppOpsState()V

    .line 1519
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    .line 1520
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1519
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v3

    .line 1521
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 1523
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_64b

    const/4 v3, 0x1

    goto :goto_64c

    :cond_64b
    const/4 v3, 0x0

    .line 1524
    :goto_64c
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 1526
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 1527
    const/4 v4, 0x3

    if-ne v1, v4, :cond_65a

    if-eqz v3, :cond_65a

    .line 1528
    iput-object v14, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1533
    :cond_65a
    nop

    .line 1535
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3, v14}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1536
    const/16 v17, 0x4

    const/16 v3, 0x7db

    if-ne v1, v3, :cond_66c

    .line 1537
    invoke-virtual {v12, v14}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1538
    const/4 v11, 0x1

    const/4 v13, 0x0

    goto :goto_6a4

    .line 1539
    :cond_66c
    const/16 v3, 0x7dc

    if-ne v1, v3, :cond_676

    .line 1540
    const/4 v11, 0x1

    invoke-virtual {v12, v11}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1541
    const/4 v13, 0x0

    goto :goto_6a4

    .line 1543
    :cond_676
    const/4 v11, 0x1

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_687

    .line 1544
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1545
    iget v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_6a3

    .line 1546
    :cond_687
    iget v3, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_695

    .line 1547
    iget v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_6a3

    .line 1548
    :cond_695
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v14}, Lcom/android/server/wm/WallpaperController;->isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_6a3

    .line 1554
    iget v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1560
    :cond_6a3
    :goto_6a3
    move v13, v11

    :goto_6a4
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->applyAdjustForImeIfNeeded()V

    .line 1562
    const/16 v3, 0x7f2

    if-ne v1, v3, :cond_6bb

    .line 1563
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v10, p6

    invoke-virtual {v1, v10}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DockedStackDividerController;->setWindow(Lcom/android/server/wm/WindowState;)V

    goto :goto_6bd

    .line 1562
    :cond_6bb
    move/from16 v10, p6

    .line 1566
    :goto_6bd
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1567
    iput-boolean v11, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1568
    iput-boolean v11, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 1570
    move-object/from16 v4, v28

    if-eqz v4, :cond_6d6

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6d6

    .line 1571
    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowManagerService;->prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-nez v1, :cond_6d6

    .line 1575
    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowManagerService;->prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V

    .line 1578
    :cond_6d6
    iget-object v5, v12, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1580
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1581
    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 1582
    invoke-virtual {v12, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v3

    .line 1581
    invoke-virtual {v5, v1, v3}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1585
    if-eqz v4, :cond_703

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_703

    .line 1586
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 1587
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1588
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v3

    move-object v4, v1

    move v6, v3

    goto :goto_707

    .line 1590
    :cond_703
    nop

    .line 1591
    move-object/from16 v4, v24

    const/4 v6, 0x0

    .line 1593
    :goto_707
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move v1, v10

    move-object/from16 v10, p10

    move/from16 p1, v13

    move v13, v11

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/DisplayPolicy;->getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z

    move-result v2

    if-eqz v2, :cond_71e

    .line 1595
    goto :goto_720

    .line 1593
    :cond_71e
    const/16 v17, 0x0

    .line 1597
    :goto_720
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    move-object/from16 v3, p13

    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 1599
    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v2, :cond_733

    .line 1600
    or-int/lit8 v17, v17, 0x1

    .line 1602
    :cond_733
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_73f

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    if-nez v2, :cond_741

    .line 1603
    :cond_73f
    or-int/lit8 v17, v17, 0x2

    .line 1606
    :cond_741
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1608
    nop

    .line 1609
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    if-eqz v2, :cond_75d

    .line 1610
    const/4 v2, 0x0

    invoke-virtual {v0, v13, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v3

    .line 1612
    if-eqz v3, :cond_759

    .line 1613
    move v4, v3

    move v3, v2

    goto :goto_761

    .line 1612
    :cond_759
    move v4, v3

    move/from16 v3, p1

    goto :goto_761

    .line 1609
    :cond_75d
    const/4 v2, 0x0

    move/from16 v3, p1

    move v4, v2

    .line 1617
    :goto_761
    if-eqz v3, :cond_766

    .line 1618
    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1623
    :cond_766
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1625
    if-eqz v4, :cond_778

    .line 1626
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 1629
    :cond_778
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1634
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_78c

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v3

    if-eqz v3, :cond_78c

    .line 1635
    move v2, v13

    .line 1637
    :cond_78c
    monitor-exit v19
    :try_end_78d
    .catchall {:try_start_5e0 .. :try_end_78d} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1639
    if-eqz v2, :cond_795

    .line 1640
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 1643
    :cond_795
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1645
    return v17

    .line 1260
    :cond_799
    move-object/from16 v19, v7

    :try_start_79b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display has not been initialialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1637
    :catchall_7a3
    move-exception v0

    move-object/from16 v19, v7

    :goto_7a6
    monitor-exit v19
    :try_end_7a7
    .catchall {:try_start_79b .. :try_end_7a7} :catchall_7ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7ab
    move-exception v0

    goto :goto_7a6
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4

    .line 4276
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4277
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4278
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4279
    return-void

    .line 4278
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .registers 13

    .line 2461
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "addWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2465
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2466
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 2467
    if-nez v7, :cond_3a

    .line 2468
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWindowToken: Attempted to add token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for non-exiting displayId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2473
    :cond_3a
    :try_start_3a
    invoke-virtual {v7, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 2474
    if-eqz v1, :cond_6b

    .line 2475
    const-string p2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindowToken: Attempted to add binder token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for already created window token: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " displayId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2480
    :cond_6b
    const/16 p3, 0x7dd

    if-ne p2, p3, :cond_7b

    .line 2481
    :try_start_6f
    new-instance v2, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v5, 0x1

    const/4 p2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v7

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V

    goto :goto_85

    .line 2484
    :cond_7b
    new-instance v2, Lcom/android/server/wm/WindowToken;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 2486
    :goto_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2487
    return-void

    .line 2486
    :catchall_8a
    move-exception p1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2462
    :cond_90
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V
    .registers 4

    .line 7654
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 7655
    if-eqz p1, :cond_b

    .line 7656
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 7658
    :cond_b
    return-void
.end method

.method public canStartRecentsAnimation()Z
    .registers 3

    .line 2617
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2619
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2620
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2622
    :cond_18
    const/4 v1, 0x1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2623
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
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 2633
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v0, :cond_7

    .line 2636
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationSynchronously(ILjava/lang/String;)V

    .line 2638
    :cond_7
    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 2445
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 2446
    return v2

    .line 2449
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 2451
    return v2

    .line 2453
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2455
    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    const/4 p1, 0x0

    return p1
.end method

.method checkDrawnWindowsLocked()V
    .registers 4

    .line 5364
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_d

    goto :goto_59

    .line 5367
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_42

    .line 5368
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5373
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_3a

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_3a

    .line 5377
    :cond_2e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 5380
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 5376
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5367
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 5383
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 5385
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5386
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5388
    :cond_58
    return-void

    .line 5365
    :cond_59
    :goto_59
    return-void
.end method

.method public checkSplitScreenMinimizedChanged(Z)V
    .registers 4

    .line 2693
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2695
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 2696
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2697
    return-void

    .line 2696
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public cleanupRecentsAnimation(I)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 2641
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2642
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_1b

    .line 2643
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2644
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2645
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->cleanupAnimation(I)V

    .line 2647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 2649
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2650
    return-void

    .line 2649
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .registers 11

    .line 5201
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 5206
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 5206
    const-string v6, "clearForcedDisplayDensityForUser"

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 5209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5211
    :try_start_20
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_42

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5212
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5213
    if-eqz p1, :cond_33

    .line 5214
    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v3, p2}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    .line 5217
    :cond_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_3c

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    .line 5219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5220
    nop

    .line 5221
    return-void

    .line 5217
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 5219
    :catchall_42
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5203
    :cond_47
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearForcedDisplaySize(I)V
    .registers 7

    .line 5135
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    .line 5140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5142
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_32

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5143
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5144
    if-eqz p1, :cond_23

    .line 5145
    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->setForcedSize(II)V

    .line 5148
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_2c

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32

    .line 5150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5151
    nop

    .line 5152
    return-void

    .line 5148
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 5150
    :catchall_32
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5137
    :cond_37
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .registers 4

    .line 5858
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "clearWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5862
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5863
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 5864
    const/4 v1, 0x0

    if-nez p1, :cond_20

    .line 5865
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 5867
    :cond_20
    :try_start_20
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 5868
    if-nez p1, :cond_2b

    .line 5869
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 5871
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->clearWindowContentFrameStats()Z

    move-result p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5872
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 5860
    :cond_3a
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires FRAME_STATS permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method closeSurfaceTransaction(Ljava/lang/String;)V
    .registers 6

    .line 910
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "closeSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 911
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_24

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 912
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 913
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowTracing;->logState(Ljava/lang/String;)V

    .line 914
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 916
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 917
    nop

    .line 918
    return-void

    .line 914
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 916
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 4

    .line 2992
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2993
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2994
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2995
    return-void

    .line 2994
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public computeNewConfiguration(I)Landroid/content/res/Configuration;
    .registers 3

    .line 4357
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4358
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 4359
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method continueSurfaceLayout()V
    .registers 2

    .line 2788
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout()V

    .line 2789
    return-void
.end method

.method public createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 7

    .line 5776
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5777
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p4

    .line 5778
    if-eqz p4, :cond_1b

    .line 5779
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 5782
    :cond_1b
    const/4 p1, 0x0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 5784
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    .registers 12

    .line 5790
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5791
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    .line 5792
    if-eqz p3, :cond_20

    .line 5793
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    .line 5794
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 5793
    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V

    .line 5796
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5797
    return-void

    .line 5796
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method createWatermarkInTransaction()V
    .registers 8

    .line 5632
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_5

    .line 5633
    return-void

    .line 5636
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/setup.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5637
    nop

    .line 5638
    nop

    .line 5640
    const/4 v1, 0x0

    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_71
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_62
    .catchall {:try_start_f .. :try_end_14} :catchall_4d

    .line 5641
    :try_start_14
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_4a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_47
    .catchall {:try_start_14 .. :try_end_19} :catchall_42

    .line 5642
    :try_start_19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 5643
    if-eqz v1, :cond_37

    .line 5644
    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5645
    if-eqz v1, :cond_37

    array-length v3, v1

    if-lez v3, :cond_37

    .line 5647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5648
    new-instance v4, Lcom/android/server/wm/Watermark;

    iget-object v5, v3, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v4, v3, v5, v1}, Lcom/android/server/wm/Watermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_37} :catch_40
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_37} :catch_3e
    .catchall {:try_start_19 .. :try_end_37} :catchall_3c

    .line 5655
    :cond_37
    nop

    .line 5657
    :try_start_38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_7a

    goto :goto_79

    .line 5655
    :catchall_3c
    move-exception v1

    goto :goto_51

    .line 5653
    :catch_3e
    move-exception v1

    goto :goto_65

    .line 5652
    :catch_40
    move-exception v1

    goto :goto_74

    .line 5655
    :catchall_42
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_51

    .line 5653
    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_65

    .line 5652
    :catch_4a
    move-exception v0

    move-object v0, v1

    goto :goto_74

    .line 5655
    :catchall_4d
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_51
    if-nez v0, :cond_5b

    .line 5660
    if-eqz v2, :cond_61

    .line 5662
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 5664
    goto :goto_61

    .line 5663
    :catch_59
    move-exception v0

    goto :goto_61

    .line 5657
    :cond_5b
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 5659
    :goto_5e
    goto :goto_61

    .line 5658
    :catch_5f
    move-exception v0

    goto :goto_5e

    .line 5664
    :cond_61
    :goto_61
    throw v1

    .line 5653
    :catch_62
    move-exception v0

    move-object v0, v1

    move-object v2, v0

    .line 5655
    :goto_65
    if-eqz v0, :cond_6b

    .line 5657
    :try_start_67
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_7a

    goto :goto_79

    .line 5660
    :cond_6b
    if-eqz v2, :cond_84

    .line 5662
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_82

    goto :goto_81

    .line 5652
    :catch_71
    move-exception v0

    move-object v0, v1

    move-object v2, v0

    .line 5655
    :goto_74
    if-eqz v0, :cond_7c

    .line 5657
    :try_start_76
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 5659
    :goto_79
    goto :goto_84

    .line 5658
    :catch_7a
    move-exception v0

    goto :goto_79

    .line 5660
    :cond_7c
    if-eqz v2, :cond_84

    .line 5662
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 5664
    :goto_81
    goto :goto_84

    .line 5663
    :catch_82
    move-exception v0

    goto :goto_81

    .line 5667
    :cond_84
    :goto_84
    return-void
.end method

.method deferSurfaceLayout()V
    .registers 2

    .line 2783
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 2784
    return-void
.end method

.method public destroyInputConsumer(Ljava/lang/String;I)Z
    .registers 5

    .line 5801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5802
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 5803
    if-eqz p2, :cond_1b

    .line 5804
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5806
    :cond_1b
    const/4 p1, 0x0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5807
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 3

    .line 5008
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 5009
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5010
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 5008
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5012
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5013
    return-void
.end method

.method public detectSafeMode()Z
    .registers 13

    .line 4429
    const-string v0, "persist.sys.safemode"

    const-string v1, "ro.sys.safemode"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/InputManagerCallback;->waitForInputDevicesReady(J)Z

    move-result v2

    const-string v3, "WindowManager"

    if-nez v2, :cond_15

    .line 4431
    const-string v2, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4437
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4436
    const/4 v4, 0x0

    const-string v5, "safe_boot_disallowed"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_25

    .line 4438
    return v4

    .line 4441
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x52

    const/16 v6, -0x100

    const/4 v7, -0x1

    invoke-virtual {v2, v7, v6, v5}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v2

    .line 4443
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x2f

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v5

    .line 4444
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v9, 0x201

    const/16 v10, 0x17

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v8

    .line 4446
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v10, 0x10004

    const/16 v11, 0x110

    invoke-virtual {v9, v7, v10, v11}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v9

    .line 4448
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v11, 0x19

    invoke-virtual {v10, v7, v6, v11}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v6

    .line 4450
    const/4 v7, 0x1

    if-gtz v2, :cond_63

    if-gtz v5, :cond_63

    if-gtz v8, :cond_63

    if-gtz v9, :cond_63

    if-lez v6, :cond_61

    goto :goto_63

    :cond_61
    move v6, v4

    goto :goto_64

    :cond_63
    :goto_63
    move v6, v7

    :goto_64
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4453
    :try_start_66
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_72

    .line 4454
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_79

    .line 4455
    :cond_72
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4456
    const-string v6, ""

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_79} :catch_7a

    .line 4459
    :cond_79
    goto :goto_7b

    .line 4458
    :catch_7a
    move-exception v0

    .line 4460
    :goto_7b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v0, :cond_bc

    .line 4461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAFE MODE ENABLED (menu="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dpad="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trackball="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c1

    .line 4465
    const-string v0, "1"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 4468
    :cond_bc
    const-string v0, "SAFE MODE not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setSafeMode(Z)V

    .line 4471
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12

    .line 2867
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

    .line 2869
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    .line 2873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2876
    :try_start_26
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v3, p1, p2, v0, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_30

    .line 2878
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2879
    nop

    .line 2880
    return-void

    .line 2878
    :catchall_30
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2871
    :cond_35
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disableNonVrUi(Z)V
    .registers 5

    .line 7603
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7605
    const/4 v1, 0x1

    if-nez p1, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 7606
    :goto_c
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    if-ne p1, v2, :cond_15

    .line 7607
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7609
    :cond_15
    :try_start_15
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 7611
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1e
    if-ltz p1, :cond_30

    .line 7612
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 7613
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Session;->setShowingAlertWindowNotificationAllowed(Z)V

    .line 7611
    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    .line 7615
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7616
    return-void

    .line 7615
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 5

    .line 2960
    const-string v0, "android.permission.CONTROL_KEYGUARD"

    const-string v1, "dismissKeyguard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2963
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2964
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2965
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2966
    return-void

    .line 2965
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2961
    :cond_20
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires CONTROL_KEYGUARD permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    .registers 4

    .line 3082
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3083
    return-void
.end method

.method public displayReady()V
    .registers 4

    .line 4475
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4476
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    if-lez v1, :cond_14

    .line 4477
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 4479
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->applyForcedPropertiesForDefaultDisplay()Z

    move-result v1

    .line 4480
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->ready()V

    .line 4481
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    .line 4482
    if-eqz v1, :cond_29

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 4485
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    .line 4487
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4490
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_41} :catch_42

    .line 4492
    goto :goto_43

    .line 4491
    :catch_42
    move-exception v0

    .line 4494
    :goto_43
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    .line 4495
    return-void

    .line 4487
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

    .line 6873
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6875
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_30

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6876
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 6877
    if-eqz v4, :cond_22

    .line 6885
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 6886
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, p1, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 6888
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_2a

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_30

    .line 6890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6891
    nop

    .line 6892
    return-void

    .line 6878
    :cond_22
    :try_start_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to configure a non existent display."

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6888
    :catchall_2a
    move-exception p1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .line 6890
    :catchall_30
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 6265
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6266
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    .line 3230
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3239
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_f

    .line 3240
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3242
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 3243
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 3246
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x17

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3247
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3249
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemBooted()V

    .line 3251
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3252
    return-void

    .line 3247
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enableScreenIfNeeded()V
    .registers 3

    .line 3256
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3257
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 3258
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3259
    return-void

    .line 3258
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
    .registers 3

    .line 3270
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 3271
    return-void

    .line 3273
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v0, :cond_e

    .line 3274
    return-void

    .line 3276
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3277
    return-void
.end method

.method public endProlongedAnimations()V
    .registers 1

    .line 2579
    return-void
.end method

.method public executeAppTransition()V
    .registers 3

    .line 2585
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "executeAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2589
    return-void

    .line 2586
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4

    .line 2905
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 2910
    if-eqz p1, :cond_17

    .line 2914
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$9;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2924
    return-void

    .line 2911
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2907
    :cond_1f
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 7

    .line 2423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2425
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_43

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2426
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 2429
    if-eqz p1, :cond_34

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 2430
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr p2, v3

    if-eqz p2, :cond_2c

    .line 2431
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    iget v3, p2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2434
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2435
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2437
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_3d

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_43

    .line 2439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2440
    nop

    .line 2441
    return-void

    .line 2437
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .line 2439
    :catchall_43
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method finishSeamlessRotation()V
    .registers 2

    .line 7677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 7678
    return-void
.end method

.method public freezeDisplayRotation(II)V
    .registers 7

    .line 3671
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3675
    const/4 v0, -0x1

    if-lt p2, v0, :cond_50

    const/4 v0, 0x3

    if-gt p2, v0, :cond_50

    .line 3680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3682
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_4b

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3683
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 3684
    if-nez p1, :cond_31

    .line 3685
    const-string p1, "WindowManager"

    const-string p2, "Trying to freeze rotation for a missing display."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_45

    .line 3691
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3686
    return-void

    .line 3688
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayRotation;->freezeRotation(I)V

    .line 3689
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_45

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4b

    .line 3691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3692
    nop

    .line 3694
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3695
    return-void

    .line 3689
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    .line 3691
    :catchall_4b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3676
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3673
    :cond_58
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires SET_ORIENTATION permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public freezeRotation(I)V
    .registers 3

    .line 3659
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V

    .line 3660
    return-void
.end method

.method public getAnimationScale(I)F
    .registers 3

    .line 3060
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    .line 3065
    const/4 p1, 0x0

    return p1

    .line 3063
    :cond_a
    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1

    .line 3062
    :cond_d
    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1

    .line 3061
    :cond_10
    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method public getAnimationScales()[F
    .registers 4

    .line 3070
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
    .registers 4

    .line 5167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5168
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5169
    if-eqz p1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5170
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5172
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5173
    const/4 p1, -0x1

    return p1

    .line 5172
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .registers 5

    .line 5037
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5038
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5039
    if-eqz p1, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5040
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 5041
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 5043
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5044
    return-void

    .line 5043
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getCameraLensCoverState()I
    .registers 5

    .line 3131
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3133
    if-lez v0, :cond_f

    .line 3135
    const/4 v0, 0x1

    return v0

    .line 3136
    :cond_f
    if-nez v0, :cond_13

    .line 3138
    const/4 v0, 0x0

    return v0

    .line 3141
    :cond_13
    return v1
.end method

.method public getCurrentAnimatorScale()F
    .registers 3

    .line 3076
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3077
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

    .line 3078
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

    .line 5812
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 5815
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5816
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 5820
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1f
    if-ltz v2, :cond_3c

    .line 5821
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 5822
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_39

    .line 5823
    iget-object v2, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 5824
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5820
    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 5827
    :cond_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5828
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5813
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getCurrentImeTouchRegion is restricted to VR services"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 6445
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayRotation()I
    .registers 3

    .line 3805
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3806
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3807
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
    .registers 3

    .line 6567
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6568
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6569
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 6570
    if-nez v1, :cond_12

    const/4 v1, -0x1

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 6571
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

    .line 616
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

    .line 3964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3966
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3967
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    .line 3970
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3967
    return-object v3

    .line 3968
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 3970
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 4422
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4423
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 4424
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 4425
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 4424
    :goto_18
    return-object v0
.end method

.method public getInitialDisplayDensity(I)I
    .registers 4

    .line 5156
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5157
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5158
    if-eqz p1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5159
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5161
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5162
    const/4 p1, -0x1

    return p1

    .line 5161
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .registers 5

    .line 5026
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5027
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5028
    if-eqz p1, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5029
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 5030
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 5032
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5033
    return-void

    .line 5032
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;
    .registers 2

    .line 1213
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    return-object v0
.end method

.method public getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 2

    .line 2727
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getLidState()I
    .registers 5

    .line 3108
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3110
    if-lez v0, :cond_d

    .line 3112
    return v1

    .line 3113
    :cond_d
    if-nez v0, :cond_11

    .line 3115
    const/4 v0, 0x1

    return v0

    .line 3118
    :cond_11
    return v2
.end method

.method public getNavBarPosition(I)I
    .registers 6

    .line 5758
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5761
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5762
    if-nez v1, :cond_37

    .line 5763
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNavBarPosition with invalid displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callers="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 5764
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5763
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    const/4 p1, -0x1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5767
    :cond_37
    const/4 p1, 0x0

    :try_start_38
    invoke-virtual {v1, p1, p1}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 5769
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5770
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getPreferredOptionsPanelGravity(I)I
    .registers 4

    .line 3976
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3977
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 3978
    if-nez p1, :cond_15

    .line 3979
    const/16 p1, 0x51

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3981
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPreferredOptionsPanelGravity()I

    move-result p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3982
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;
    .registers 2

    .line 2609
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method public getRemoveContentMode(I)I
    .registers 6
    .annotation build Landroid/view/WindowManager$RemoveContentMode;
    .end annotation

    .line 6950
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "getRemoveContentMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6954
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6955
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6956
    if-nez v1, :cond_34

    .line 6957
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to get remove mode of a display that does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6959
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 6961
    :cond_34
    :try_start_34
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 6962
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6951
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6671
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6672
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 6673
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6674
    return-void

    .line 6673
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getStableInsetsLocked(ILandroid/graphics/Rect;)V
    .registers 10

    .line 6677
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6678
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 6679
    if-eqz p1, :cond_1f

    .line 6680
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 6681
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 6684
    :cond_1f
    return-void
.end method

.method public getStackBounds(IILandroid/graphics/Rect;)V
    .registers 6

    .line 2707
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2708
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 2709
    if-eqz p1, :cond_16

    .line 2710
    invoke-virtual {p1, p3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2711
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2713
    :cond_16
    :try_start_16
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2714
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2715
    return-void

    .line 2714
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6

    .line 3627
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public getTransitionAnimationScaleLocked()F
    .registers 2

    .line 3055
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    :goto_8
    return v0
.end method

.method public getWindowAnimationScaleLocked()F
    .registers 2

    .line 3051
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    :goto_8
    return v0
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .registers 5

    .line 5877
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "getWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 5881
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5882
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 5883
    const/4 v1, 0x0

    if-nez p1, :cond_20

    .line 5884
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5886
    :cond_20
    :try_start_20
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 5887
    if-nez p1, :cond_2b

    .line 5888
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5890
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    if-nez v2, :cond_36

    .line 5891
    new-instance v2, Landroid/view/WindowContentFrameStats;

    invoke-direct {v2}, Landroid/view/WindowContentFrameStats;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 5893
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 5894
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowSurfaceController;->getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 5895
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5897
    :cond_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 5898
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 5879
    :cond_4e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires FRAME_STATS permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 6

    .line 1953
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1954
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1955
    if-nez p1, :cond_15

    .line 1956
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1957
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1959
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1960
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1961
    iget p1, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 1963
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1964
    return-void

    .line 1963
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 4

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1980
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 1981
    if-eqz p1, :cond_13

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 1982
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .registers 2

    .line 6470
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method public getWindowingMode(I)I
    .registers 6

    .line 6896
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "getWindowingMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6900
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6901
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6902
    if-nez v1, :cond_34

    .line 6903
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to get windowing mode of a display that does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6905
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 6907
    :cond_34
    :try_start_34
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 6908
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6897
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method hasHdrSupport()Z
    .registers 2

    .line 7624
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
    .registers 4

    .line 5833
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5834
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5835
    if-nez p1, :cond_14

    .line 5836
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5838
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 5839
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method hasWideColorGamutSupport()Z
    .registers 4

    .line 7619
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 7620
    const-string v0, "persist.sys.sf.native_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    .line 7619
    :goto_10
    return v1
.end method

.method public hideBootMessagesLocked()V
    .registers 2

    .line 3423
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_c

    .line 3424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3425
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hideBootMessages()V

    .line 3427
    :cond_c
    return-void
.end method

.method inSurfaceTransaction(Ljava/lang/Runnable;)V
    .registers 2

    .line 7593
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 7595
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 7597
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 7598
    nop

    .line 7599
    return-void

    .line 7597
    :catchall_b
    move-exception p1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw p1
.end method

.method public initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V
    .registers 8

    .line 2595
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2596
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/wm/RecentsAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2598
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p2}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 2599
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p2, p1, p5}, Lcom/android/server/wm/RecentsAnimationController;->initialize(ILandroid/util/SparseBooleanArray;)V

    .line 2600
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2601
    return-void

    .line 2600
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public injectInputAfterTransactionsApplied(Landroid/view/InputEvent;I)Z
    .registers 9

    .line 7715
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 7716
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 7717
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    .line 7718
    :goto_12
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 7719
    :goto_1b
    goto :goto_31

    .line 7720
    :cond_1c
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 7721
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_27

    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v1

    .line 7722
    :goto_28
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_30

    move v0, v2

    goto :goto_31

    :cond_30
    move v0, v1

    .line 7724
    :goto_31
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    const/16 v5, 0x2002

    if-ne v4, v5, :cond_3a

    move v1, v2

    .line 7729
    :cond_3a
    if-nez v3, :cond_3e

    if-eqz v1, :cond_41

    .line 7730
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->syncInputTransactions()V

    .line 7732
    :cond_41
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    .line 7733
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p1

    .line 7734
    if-eqz v0, :cond_52

    .line 7735
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->syncInputTransactions()V

    .line 7737
    :cond_52
    return p1
.end method

.method intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 6704
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6705
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 6706
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6707
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .registers 7

    .line 3222
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 3223
    :cond_6
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    array-length v4, v3

    if-ge v2, v4, :cond_15

    .line 3224
    aget v3, v3, v2

    if-ne v3, p1, :cond_12

    return v1

    .line 3223
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3226
    :cond_15
    return v0
.end method

.method public isDisplayRotationFrozen(I)Z
    .registers 4

    .line 3740
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3741
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 3742
    if-nez p1, :cond_1b

    .line 3743
    const-string p1, "WindowManager"

    const-string v1, "Trying to thaw rotation for a missing display."

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3746
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->isRotationFrozen()Z

    move-result p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3747
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 2928
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .registers 5

    .line 2937
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_19

    .line 2938
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const-string v1, "isKeyguardSecure"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 2940
    :cond_11
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERACT_ACROSS_USERS permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2943
    :cond_19
    :goto_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2945
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 2947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2945
    return p1

    .line 2947
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 2

    .line 2932
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardTrusted()Z
    .registers 3

    .line 2801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2802
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2803
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

    .line 7673
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    return v0
.end method

.method public isRotationFrozen()Z
    .registers 2

    .line 3735
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    move-result v0

    return v0
.end method

.method public isSafeModeEnabled()Z
    .registers 2

    .line 5853
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 1752
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1753
    return v1

    .line 1755
    :cond_a
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget p1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 1756
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1755
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1757
    return v1

    .line 1759
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public isShowingDream()Z
    .registers 3

    .line 2952
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2954
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

    .line 2955
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isValidPictureInPictureAspectRatio(IF)Z
    .registers 4

    .line 2700
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 2701
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result p1

    return p1
.end method

.method public isViewServerRunning()Z
    .registers 4

    .line 4067
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4068
    return v1

    .line 4071
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4072
    return v1

    .line 4075
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

    .line 5310
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$displayReady$6$WindowManagerService(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 4477
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setMaxUiWidth(I)V

    return-void
.end method

.method public synthetic lambda$new$1$WindowManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 1169
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1170
    const/16 v0, 0xc8

    const-string v1, "android:window_manager"

    const-string v2, "system_gesture_exclusion_limit_dp"

    .line 1171
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1170
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1173
    const-string v1, "android:window_manager"

    const-string v2, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1176
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-ne v2, v1, :cond_25

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    if-eq v2, v0, :cond_30

    .line 1178
    :cond_25
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    .line 1179
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 1180
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1183
    :cond_30
    const-string v0, "android:window_manager"

    const-string v1, "system_gesture_exclusion_log_debounce_millis"

    .line 1184
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 1186
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1187
    return-void

    .line 1186
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public lockDeviceNow()V
    .registers 2

    .line 3125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 3126
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 3

    .line 5844
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 5845
    return-void
.end method

.method makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 7661
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceBuilderFactory;->make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 5348
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 5350
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 5351
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 5352
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 5353
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v1, :cond_2b

    .line 5354
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5357
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xb

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 5361
    :cond_2b
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    .line 7133
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eq p2, v0, :cond_29

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_9

    goto :goto_29

    .line 7136
    :cond_9
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 7137
    if-eqz p2, :cond_14

    .line 7138
    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto :goto_1a

    .line 7140
    :cond_14
    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 7142
    :goto_1a
    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    if-nez p2, :cond_28

    .line 7146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->finishSeamlessRotation()V

    .line 7148
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    .line 7150
    :cond_28
    return-void

    .line 7134
    :cond_29
    :goto_29
    return-void
.end method

.method public monitor()V
    .registers 3

    .line 6438
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6439
    return-void

    .line 6438
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
    .registers 6

    .line 2767
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2768
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 2769
    if-eqz p1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, p1, :cond_1f

    .line 2770
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    .line 2773
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2774
    return-void

    .line 2773
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyAppRelaunchesCleared(Landroid/os/IBinder;)V
    .registers 4

    .line 5920
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5921
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 5922
    if-eqz p1, :cond_11

    .line 5923
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearRelaunching()V

    .line 5925
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5926
    return-void

    .line 5925
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyAppRelaunching(Landroid/os/IBinder;)V
    .registers 4

    .line 5902
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5903
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 5904
    if-eqz p1, :cond_11

    .line 5905
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->startRelaunching()V

    .line 5907
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5908
    return-void

    .line 5907
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyAppRelaunchingFinished(Landroid/os/IBinder;)V
    .registers 4

    .line 5911
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5912
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 5913
    if-eqz p1, :cond_11

    .line 5914
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->finishRelaunching()V

    .line 5916
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5917
    return-void

    .line 5916
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyAppResumedFinished(Landroid/os/IBinder;)V
    .registers 4

    .line 5929
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5930
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 5931
    if-eqz p1, :cond_17

    .line 5932
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 5933
    invoke-virtual {v1, p1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 5935
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5936
    return-void

    .line 5935
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 4

    .line 4375
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4376
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .line 4377
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 4378
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4379
    if-eqz v1, :cond_13

    .line 4380
    invoke-interface {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    .line 4382
    :cond_13
    return-void

    .line 4378
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

    .line 2797
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2798
    return-void
.end method

.method public notifyKeyguardTrustedChanged()V
    .registers 2

    .line 2732
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyKeyguardTrustedChanged()V

    .line 2733
    return-void
.end method

.method public notifyShowingDreamChanged()V
    .registers 3

    .line 2722
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2723
    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .registers 5

    .line 5945
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5946
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 5947
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5948
    return-void

    .line 5947
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method onAnimationFinished()V
    .registers 3

    .line 7771
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7772
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7773
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7774
    return-void

    .line 7773
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
    .registers 4

    .line 6459
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6460
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 6461
    if-eqz p1, :cond_11

    .line 6462
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6464
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 6465
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6466
    return-void

    .line 6465
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onInitReady()V
    .registers 3

    .line 1197
    const-string v0, "createWatermarkInTransaction"

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initPolicy()V

    .line 1200
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1204
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 1206
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1207
    nop

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlayIfNeeded()V

    .line 1210
    return-void

    .line 1206
    :catchall_1a
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method public onKeyguardOccludedChanged(Z)V
    .registers 4

    .line 2969
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2970
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 2971
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2972
    return-void

    .line 2971
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onKeyguardShowingAndNotOccludedChanged()V
    .registers 3

    .line 2747
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2748
    return-void
.end method

.method onLockTaskStateChanged(I)V
    .registers 6

    .line 7691
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7692
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$5zz5Ugt4wxIXoNE3lZS6NA9z_Jk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$5zz5Ugt4wxIXoNE3lZS6NA9z_Jk;

    .line 7693
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7692
    invoke-static {v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 7694
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7695
    return-void

    .line 7694
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onOverlayChanged()V
    .registers 4

    .line 6449
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6450
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 6454
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 6455
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6456
    return-void

    .line 6455
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
    .registers 5

    .line 2752
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$99XNq73vh8e4HVH9BuxFhbLxKVY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$99XNq73vh8e4HVH9BuxFhbLxKVY;

    .line 2753
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2752
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 2754
    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 5

    .line 1967
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1968
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1d

    .line 1969
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 1970
    if-eqz p1, :cond_1d

    .line 1971
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1972
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    .line 1971
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController;->onRectangleOnScreenRequestedLocked(ILandroid/graphics/Rect;)V

    .line 1975
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1976
    return-void

    .line 1975
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1008
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

    .line 1009
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 2

    .line 3294
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onSystemUiStarted()V

    .line 3295
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 1221
    :catch_5
    move-exception p1

    .line 1224
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 1225
    const-string p2, "WindowManager"

    const-string p3, "Window Manager Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    :cond_11
    throw p1
.end method

.method public onUserSwitched()V
    .registers 4

    .line 2758
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings()V

    .line 2759
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2761
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 2762
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2763
    return-void

    .line 2762
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

    .line 5021
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;)V

    return-object v0
.end method

.method openSurfaceTransaction()V
    .registers 5

    .line 895
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "openSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 896
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1f

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 897
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 898
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_19

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1f

    .line 900
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 901
    nop

    .line 902
    return-void

    .line 898
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .line 900
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 8

    .line 2407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2410
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_31

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2411
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 2412
    if-nez p1, :cond_19

    .line 2413
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2b

    .line 2418
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2413
    return v3

    .line 2415
    :cond_19
    :try_start_19
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v4, "from-client"

    invoke-virtual {p2, p1, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_2b

    .line 2418
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2415
    return p1

    .line 2416
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 2418
    :catchall_31
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    .registers 7

    .line 2544
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2545
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2546
    if-nez v1, :cond_2e

    .line 2547
    const-string p1, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to call overridePendingAppTransitionMultiThumbFuture for the display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " that does not exist."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2551
    :cond_2e
    :try_start_2e
    iget-object p4, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 2553
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2554
    return-void

    .line 2553
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    .registers 6

    .line 2559
    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v1, "overridePendingAppTransitionRemote()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2564
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2565
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2566
    if-nez v1, :cond_38

    .line 2567
    const-string p1, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to call overridePendingAppTransitionRemote for the display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " that does not exist."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2571
    :cond_38
    :try_start_38
    iget-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 2573
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2574
    return-void

    .line 2573
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2561
    :cond_48
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performBootTimeout()V
    .registers 4

    .line 3280
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3281
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_f

    .line 3282
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3284
    :cond_f
    :try_start_f
    const-string v1, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 3286
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3287
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3288
    return-void

    .line 3286
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
    .registers 6

    .line 1986
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1987
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1988
    if-eqz p1, :cond_12

    .line 1989
    iget-wide v1, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowState;->pokeDrawLockLw(J)V

    .line 1991
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1992
    return-void

    .line 1991
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V
    .registers 8

    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1803
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetAppOpsState()V

    .line 1805
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1806
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1f

    .line 1807
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1810
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1811
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 1812
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1815
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1816
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_3b

    .line 1817
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1820
    :cond_3b
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1821
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1824
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1825
    iget-boolean v5, v3, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    if-nez v5, :cond_4d

    .line 1826
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    goto :goto_5f

    .line 1827
    :cond_4d
    if-eqz v4, :cond_5f

    .line 1830
    iput-boolean v0, v4, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1831
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1832
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1833
    if-eqz v0, :cond_5f

    .line 1834
    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1839
    :cond_5f
    :goto_5f
    if-eqz v4, :cond_64

    .line 1840
    invoke-virtual {v4, p1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1843
    :cond_64
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v0, v3, :cond_78

    .line 1844
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1845
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_87

    .line 1846
    :cond_78
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_87

    .line 1847
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1850
    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 1851
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1852
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1853
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_a0

    .line 1854
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1858
    :cond_a0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1859
    return-void
.end method

.method public prepareAppTransition(IZ)V
    .registers 5

    .line 2533
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2538
    return-void

    .line 2534
    :cond_13
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reboot(Z)V
    .registers 4

    .line 3163
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3165
    return-void
.end method

.method public reboot(ZLjava/lang/String;)V
    .registers 4

    .line 3171
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/power/ShutdownThread;->rebootCustom(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3173
    return-void
.end method

.method public rebootSafeMode(Z)V
    .registers 3

    .line 3179
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    .line 3181
    return-void
.end method

.method reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 5244
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5245
    return-void

    .line 5247
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 5248
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5250
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v0

    .line 5251
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5252
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5253
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 5254
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    or-int/2addr v0, v1

    .line 5256
    if-eqz v0, :cond_37

    .line 5257
    iput-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 5258
    invoke-virtual {p0, v3, v3, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 5260
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 5263
    :cond_37
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5264
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;I)V
    .registers 11

    .line 2884
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

    .line 2886
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3a

    .line 2890
    const-string v0, "token is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2894
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->reenableKeyguard(Landroid/os/IBinder;II)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_35

    .line 2896
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2897
    nop

    .line 2898
    return-void

    .line 2896
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2888
    :cond_3a
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public refreshScreenCaptureDisabled(I)V
    .registers 5

    .line 1768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1769
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_26

    .line 1773
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1775
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1776
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v2

    .line 1775
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->setSecureSurfaceState(IZ)V

    .line 1777
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1778
    return-void

    .line 1777
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 1770
    :cond_26
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Only system can call refreshScreenCaptureDisabled."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3

    .line 7559
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 7560
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7562
    :cond_d
    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    .line 3931
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3932
    return-void
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 5

    .line 6634
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v2, "registerDockedStackListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6636
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6638
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 6640
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6641
    return-void

    .line 6640
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    .registers 5

    .line 6645
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v1, "registerPinnedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6647
    return-void

    .line 6649
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_10

    .line 6650
    return-void

    .line 6652
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6653
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 6654
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/PinnedStackController;->registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 6655
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6656
    return-void

    .line 6655
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    .registers 5

    .line 3087
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3088
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 3089
    if-eqz p2, :cond_11

    .line 3090
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3092
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3093
    return-void

    .line 3092
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7116
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string v1, "registerShortcutKey"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7120
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 7121
    return-void

    .line 7117
    :cond_10
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .registers 6

    .line 3896
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3897
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3898
    if-eqz v1, :cond_16

    .line 3902
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V

    .line 3903
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3904
    return-void

    .line 3899
    :cond_16
    :try_start_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to register visibility event for invalid display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3903
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .registers 6

    .line 3873
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3874
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3875
    if-eqz v1, :cond_1e

    .line 3879
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 3880
    iget-object p1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3876
    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to register visibility event for invalid display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3881
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I
    .registers 44

    .line 2005
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p7

    move-object/from16 v4, p19

    move-object/from16 v5, p20

    .line 2007
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2011
    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2012
    const/4 v11, 0x0

    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v1, v11}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 2013
    if-nez v12, :cond_2c

    .line 2014
    monitor-exit v10
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_3a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v11

    .line 2016
    :cond_2c
    :try_start_2c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v13

    .line 2017
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    .line 2018
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v15

    .line 2020
    iget-object v11, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2021
    move/from16 v16, v13

    const/16 v13, 0x8

    if-eq v3, v13, :cond_47

    .line 2022
    move/from16 v13, p5

    move/from16 v4, p6

    invoke-virtual {v12, v13, v4}, Lcom/android/server/wm/WindowState;->setRequestedSize(II)V

    .line 2025
    :cond_47
    move-wide/from16 v17, v8

    move-wide/from16 v8, p9

    invoke-virtual {v12, v8, v9}, Lcom/android/server/wm/WindowState;->setFrameNumber(J)V

    .line 2027
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 2028
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-nez v4, :cond_5a

    .line 2029
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    .line 2032
    :cond_5a
    nop

    .line 2033
    nop

    .line 2034
    nop

    .line 2035
    const/4 v4, 0x1

    if-eqz v2, :cond_11c

    .line 2036
    invoke-virtual {v15, v12, v2, v6, v7}, Lcom/android/server/wm/DisplayPolicy;->adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2038
    iget v8, v12, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v9, p3

    if-ne v9, v8, :cond_7f

    .line 2039
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v8, v9

    .line 2041
    const/high16 v9, 0x3ff0000

    and-int/2addr v9, v8

    if-eqz v9, :cond_7d

    .line 2042
    invoke-direct {v0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->hasStatusBarPermission(II)Z

    move-result v6

    if-nez v6, :cond_7d

    .line 2043
    const v6, -0x3ff0001

    and-int/2addr v8, v6

    .line 2046
    :cond_7d
    iput v8, v12, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2048
    :cond_7f
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v7, :cond_114

    .line 2054
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_a5

    .line 2056
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2057
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2058
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2059
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2062
    :cond_a5
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2063
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/2addr v6, v8

    .line 2064
    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    .line 2065
    and-int/lit16 v9, v8, 0x4001

    if-eqz v9, :cond_c1

    .line 2067
    iput-boolean v4, v12, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2069
    :cond_c1
    iget-object v9, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/high16 v13, 0x80000

    if-eqz v9, :cond_d5

    and-int v9, v7, v13

    if-nez v9, :cond_d0

    const/high16 v9, 0x400000

    and-int/2addr v9, v7

    if-eqz v9, :cond_d5

    .line 2071
    :cond_d0
    iget-object v9, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 2073
    :cond_d5
    const/high16 v9, 0x2000000

    and-int/2addr v9, v8

    if-eqz v9, :cond_f3

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v9, :cond_f3

    .line 2075
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    if-eqz v9, :cond_ee

    .line 2076
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_f3

    .line 2078
    :cond_ee
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v9}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2081
    :cond_f3
    and-int/2addr v6, v13

    if-eqz v6, :cond_ff

    .line 2082
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2083
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v6

    .line 2082
    invoke-virtual {v0, v12, v6}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 2085
    :cond_ff
    const/high16 v6, 0x20000

    and-int/2addr v6, v8

    if-eqz v6, :cond_11e

    .line 2086
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_10f

    move v6, v4

    goto :goto_110

    :cond_10f
    const/4 v6, 0x0

    :goto_110
    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowStateAnimator;->setColorSpaceAgnosticLocked(Z)V

    goto :goto_11e

    .line 2049
    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window type can not be changed after the window is added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2035
    :cond_11c
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2093
    :cond_11e
    :goto_11e
    and-int/lit8 v6, p8, 0x2

    if-eqz v6, :cond_124

    move v6, v4

    goto :goto_125

    :cond_124
    const/4 v6, 0x0

    :goto_125
    iput-boolean v6, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 2094
    and-int/lit16 v6, v8, 0x80

    if-eqz v6, :cond_12f

    .line 2095
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 2097
    :cond_12f
    iget v2, v12, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v6, v12, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v12, v2, v6}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    .line 2099
    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_156

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_156

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_156

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_15a

    .line 2103
    :cond_156
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2106
    :cond_15a
    iget v2, v12, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2110
    const/4 v6, 0x4

    if-eq v2, v6, :cond_163

    const/16 v9, 0x8

    if-ne v2, v9, :cond_167

    :cond_163
    if-nez v3, :cond_167

    move v2, v4

    goto :goto_168

    :cond_167
    const/4 v2, 0x0

    .line 2113
    :goto_168
    const v9, 0x20008

    and-int/2addr v9, v7

    if-nez v9, :cond_173

    if-eqz v2, :cond_171

    goto :goto_173

    :cond_171
    const/4 v2, 0x0

    goto :goto_174

    :cond_173
    :goto_173
    move v2, v4

    .line 2115
    :goto_174
    iget v9, v12, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-ne v9, v3, :cond_183

    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_183

    iget-boolean v9, v12, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_181

    goto :goto_183

    :cond_181
    const/4 v9, 0x0

    goto :goto_184

    :cond_183
    :goto_183
    move v9, v4

    .line 2119
    :goto_184
    iget v13, v12, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/high16 v19, 0x100000

    if-eq v13, v3, :cond_194

    iget-object v13, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v13, v13, v19

    if-eqz v13, :cond_194

    move v13, v4

    goto :goto_195

    :cond_194
    const/4 v13, 0x0

    .line 2121
    :goto_195
    and-int v19, v7, v19

    if-eqz v19, :cond_19c

    move/from16 v19, v4

    goto :goto_19e

    :cond_19c
    const/16 v19, 0x0

    :goto_19e
    or-int v13, v13, v19

    .line 2122
    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_1b1

    iget-object v7, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v7, :cond_1b1

    .line 2123
    iget-object v7, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 2126
    :cond_1b1
    iput-boolean v4, v12, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2127
    iput-boolean v4, v12, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2129
    iput v3, v12, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2137
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2138
    and-int/lit8 v6, p8, 0x1

    if-eqz v6, :cond_1c0

    move v6, v4

    goto :goto_1c1

    :cond_1c0
    const/4 v6, 0x0

    :goto_1c1
    iput-boolean v6, v12, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2142
    if-nez v3, :cond_1da

    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_1d8

    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1d8

    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2144
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v6

    if-nez v6, :cond_1da

    :cond_1d8
    move v6, v4

    goto :goto_1db

    :cond_1da
    const/4 v6, 0x0

    .line 2155
    :goto_1db
    if-nez v6, :cond_1f5

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v7

    if-eqz v7, :cond_1f5

    iget-boolean v7, v12, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v7, :cond_1f5

    .line 2160
    nop

    .line 2161
    iget-boolean v7, v12, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v7, :cond_1f3

    .line 2162
    invoke-direct {v0, v12, v11, v9}, Lcom/android/server/wm/WindowManagerService;->tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;Z)Z

    move-result v7

    move v9, v7

    const/4 v7, 0x4

    goto :goto_1f6

    .line 2161
    :cond_1f3
    const/4 v7, 0x4

    goto :goto_1f6

    .line 2168
    :cond_1f5
    const/4 v7, 0x0

    :goto_1f6
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move/from16 p3, v2

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 2170
    const-wide/16 v2, 0x20

    if-eqz v6, :cond_271

    .line 2171
    const-string v4, "relayoutWindow: viewVisibility_1"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2173
    invoke-virtual {v12, v7, v8}, Lcom/android/server/wm/WindowState;->relayoutVisibleWindow(II)I

    move-result v4
    :try_end_20b
    .catchall {:try_start_2c .. :try_end_20b} :catchall_3a2

    .line 2176
    :try_start_20b
    invoke-direct {v0, v5, v4, v12, v11}, Lcom/android/server/wm/WindowManagerService;->createSurfaceControl(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v7
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20f} :catch_235
    .catchall {:try_start_20b .. :try_end_20f} :catchall_3a2

    .line 2185
    nop

    .line 2186
    and-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_215

    .line 2187
    const/4 v9, 0x1

    .line 2189
    :cond_215
    :try_start_215
    iget-object v1, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v1, v4, :cond_226

    iget-object v1, v14, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_226

    .line 2191
    invoke-virtual {v14, v12}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2192
    const/4 v1, 0x1

    goto :goto_228

    .line 2194
    :cond_226
    move/from16 v1, p3

    :goto_228
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->adjustStartingWindowFlags()V

    .line 2195
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    move-wide/from16 v20, v2

    move v3, v1

    move-wide/from16 v1, v20

    goto/16 :goto_2b8

    .line 2177
    :catch_235
    move-exception v0

    move-object v2, v0

    .line 2178
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2180
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown when creating surface for client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2181
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2180
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2183
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2184
    monitor-exit v10
    :try_end_26c
    .catchall {:try_start_215 .. :try_end_26c} :catchall_3a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return v1

    .line 2197
    :cond_271
    :try_start_271
    const-string v1, "relayoutWindow: viewVisibility_2"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2199
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 2200
    iput-boolean v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 2202
    move-wide v1, v2

    if-nez p7, :cond_292

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    if-eqz v3, :cond_292

    .line 2206
    const-string v3, "relayoutWindow: getSurface"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2207
    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowSurfaceController;->getSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2208
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_291
    .catchall {:try_start_271 .. :try_end_291} :catchall_3a2

    goto :goto_2b3

    .line 2213
    :cond_292
    :try_start_292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wmReleaseOutSurface_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2214
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2213
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2215
    invoke-virtual/range {p20 .. p20}, Landroid/view/SurfaceControl;->release()V
    :try_end_2af
    .catchall {:try_start_292 .. :try_end_2af} :catchall_39d

    .line 2217
    :try_start_2af
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2218
    nop

    .line 2221
    :goto_2b3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v3, p3

    .line 2224
    :goto_2b8
    if-eqz v9, :cond_2c3

    .line 2225
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v8

    if-eqz v8, :cond_2c3

    .line 2226
    const/4 v3, 0x0

    .line 2232
    :cond_2c3
    and-int/lit8 v4, v7, 0x2

    if-eqz v4, :cond_2c9

    const/4 v4, 0x1

    goto :goto_2ca

    :cond_2c9
    const/4 v4, 0x0

    .line 2233
    :goto_2ca
    if-eqz v3, :cond_2d7

    .line 2234
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2235
    if-eqz v4, :cond_2d8

    .line 2240
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_2d8

    .line 2233
    :cond_2d7
    const/4 v3, 0x1

    .line 2244
    :cond_2d8
    :goto_2d8
    if-eqz v13, :cond_2e0

    .line 2245
    iget v5, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v8, 0x4

    or-int/2addr v5, v8

    iput v5, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2249
    :cond_2e0
    iget-object v5, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_2eb

    .line 2250
    iget-object v5, v14, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V

    .line 2253
    :cond_2eb
    const-string v5, "relayoutWindow: updateOrientationFromAppTokens"

    invoke-static {v1, v2, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2255
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v5

    .line 2256
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2258
    if-eqz v4, :cond_30b

    iget-boolean v4, v12, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v4, :cond_30b

    .line 2259
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 2260
    iget-object v8, v14, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget v9, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v9, v4, v13}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2263
    :cond_30b
    iget-object v4, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_314

    .line 2264
    iget-object v4, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2266
    :cond_314
    iget-boolean v4, v11, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    if-eqz v4, :cond_31d

    .line 2267
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 2268
    or-int/lit8 v7, v7, 0x20

    .line 2270
    :cond_31d
    invoke-virtual {v15, v12}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_325

    .line 2271
    or-int/lit8 v7, v7, 0x40

    .line 2273
    :cond_325
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    if-nez v4, :cond_32e

    .line 2274
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 2287
    :cond_32e
    if-eqz v6, :cond_336

    .line 2288
    move-object/from16 v4, p19

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V

    goto :goto_33b

    .line 2290
    :cond_336
    move-object/from16 v4, p19

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2293
    :goto_33b
    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2297
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 2299
    move-object/from16 v4, p11

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->getCompatFrame(Landroid/graphics/Rect;)V

    .line 2300
    move-object/from16 p1, v12

    move-object/from16 p2, p12

    move-object/from16 p3, p13

    move-object/from16 p4, p14

    move-object/from16 p5, p15

    move-object/from16 p6, p16

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/wm/WindowState;->getInsetsForRelayout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2302
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    move-object/from16 v6, p18

    invoke-virtual {v6, v4}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 2303
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v6, p17

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2304
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v4

    move-object/from16 v6, p21

    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 2316
    iget-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v4, :cond_381

    goto :goto_382

    :cond_381
    const/4 v3, 0x0

    :goto_382
    or-int/2addr v3, v7

    .line 2321
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2322
    monitor-exit v10
    :try_end_387
    .catchall {:try_start_2af .. :try_end_387} :catchall_3a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2324
    if-eqz v5, :cond_399

    .line 2325
    const-string v4, "relayoutWindow: sendNewConfiguration"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2326
    move/from16 v4, v16

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 2327
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2329
    :cond_399
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2330
    return v3

    .line 2217
    :catchall_39d
    move-exception v0

    :try_start_39e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 2322
    :catchall_3a2
    move-exception v0

    monitor-exit v10
    :try_end_3a4
    .catchall {:try_start_39e .. :try_end_3a4} :catchall_3a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 3640
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3641
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 3642
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3643
    return-void

    .line 3642
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .registers 7

    .line 3854
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3855
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3856
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 3857
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 3858
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v3}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne p1, v3, :cond_3b

    .line 3859
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 3860
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3861
    if-eqz v4, :cond_39

    .line 3862
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3864
    :cond_39
    add-int/lit8 v2, v2, -0x1

    .line 3856
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3867
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3868
    return-void

    .line 3867
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 5

    .line 1781
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1782
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1783
    if-nez p1, :cond_12

    .line 1784
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1786
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1787
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1788
    return-void

    .line 1787
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4

    .line 4282
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4283
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4284
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4285
    return-void

    .line 4284
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .registers 9

    .line 2491
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "removeWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2497
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_7d

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2498
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2499
    if-nez v3, :cond_42

    .line 2500
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for non-exiting displayId="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_77

    .line 2515
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2502
    return-void

    .line 2505
    :cond_42
    :try_start_42
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object p2

    .line 2506
    if-nez p2, :cond_66

    .line 2507
    const-string p2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_42 .. :try_end_5f} :catchall_77

    .line 2515
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2509
    return-void

    .line 2512
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2513
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_77

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    .line 2515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2516
    nop

    .line 2517
    return-void

    .line 2513
    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 2515
    :catchall_7d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2492
    :cond_82
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V
    .registers 9

    .line 6811
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->checkCallerOwnsDisplay(I)V

    .line 6813
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_48

    .line 6816
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 6817
    if-nez v3, :cond_33

    .line 6818
    const-string p2, "WindowManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad requesting window "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_43

    .line 6823
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_48

    .line 6819
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6821
    :cond_33
    :try_start_33
    invoke-direct {p0, p3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Lcom/android/server/wm/DisplayContent;->reparentDisplayContent(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    .line 6823
    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6824
    nop

    .line 6825
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6826
    return-void

    .line 6823
    :catchall_43
    move-exception p1

    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6825
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    .registers 6
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

    .line 3921
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3922
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 3923
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->setSystemGestureExclusion(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 3924
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 3926
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3927
    return-void

    .line 3926
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 4

    .line 6661
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6662
    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v0, :cond_13

    .line 6663
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindow;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 6666
    :cond_13
    goto :goto_15

    .line 6665
    :catch_14
    move-exception p1

    .line 6667
    :goto_15
    return-void
.end method

.method public requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .registers 5

    .line 3597
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "requestAssistScreenshot()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3602
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3603
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3604
    if-nez v1, :cond_1b

    .line 3609
    const/4 v1, 0x0

    goto :goto_21

    .line 3611
    :cond_1b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3613
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3615
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Zv37mcLTUXyG89YznyHzluaKNE0;-><init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3622
    const/4 p1, 0x1

    return p1

    .line 3613
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 3598
    :cond_39
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method requestTraversal()V
    .registers 3

    .line 5423
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5424
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5425
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5426
    return-void

    .line 5425
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

    .line 7125
    const-string v0, "android.permission.USER_ACTIVITY"

    const-string v1, "requestUserActivityNotification()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7129
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->requestUserActivityNotification()V

    .line 7130
    return-void

    .line 7127
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires USER_ACTIVITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V
    .registers 5

    .line 6778
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    .line 6780
    nop

    .line 6781
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 6782
    if-eqz p1, :cond_23

    .line 6784
    :try_start_c
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 6785
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result p2

    .line 6786
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result p1

    .line 6784
    invoke-interface {v0, p2, p1}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_22

    .line 6787
    :catch_1a
    move-exception p1

    .line 6788
    const-string p1, "WindowManager"

    const-string p2, "unable to restore pointer icon"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    :goto_22
    goto :goto_2c

    .line 6791
    :cond_23
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 6793
    :goto_2c
    return-void
.end method

.method saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 10

    .line 6227
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6228
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 6229
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

    .line 6230
    if-eqz p1, :cond_46

    .line 6231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6233
    :cond_46
    if-eqz p2, :cond_62

    .line 6234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Window at fault: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6236
    :cond_62
    if-eqz p3, :cond_78

    .line 6237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6239
    :cond_78
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    :goto_80
    if-ltz p1, :cond_db

    .line 6240
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/DisplayContent;

    .line 6241
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 6242
    iget-object v3, p3, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v4, " since null focus: "

    if-nez v3, :cond_b4

    .line 6243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Windows added in display #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6246
    :cond_b4
    iget-object v3, p3, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d8

    .line 6247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Windows removed in display #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6239
    :cond_d8
    add-int/lit8 p1, p1, -0x1

    goto :goto_80

    .line 6251
    :cond_db
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 6252
    const/4 p1, 0x0

    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6253
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 6254
    const-string p1, "Last ANR continued"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6255
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6256
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6257
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 6259
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p2, 0x26

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6260
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/32 v0, 0x6ddd00

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6261
    return-void
.end method

.method scheduleAnimationLocked()V
    .registers 2

    .line 5430
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_7

    .line 5431
    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 5433
    :cond_7
    return-void
.end method

.method public scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 6

    .line 6541
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6542
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6543
    if-nez v1, :cond_29

    .line 6544
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to reset replacing window on non-existing app token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6546
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6548
    :cond_29
    if-eqz p2, :cond_2f

    .line 6549
    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_32

    .line 6551
    :cond_2f
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearWillReplaceWindows()V

    .line 6553
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6554
    return-void

    .line 6553
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    .line 6557
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6558
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6560
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6561
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6563
    return-void
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3

    .line 2737
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2738
    return-void
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .registers 6

    .line 3575
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "screenshotWallpaper()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3579
    const-wide/16 v0, 0x20

    :try_start_c
    const-string v2, "screenshotWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3580
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_32

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3582
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3583
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2c

    .line 3586
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3583
    return-object v3

    .line 3584
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 3586
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 3576
    :cond_37
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendNewConfiguration(I)V
    .registers 4

    .line 4335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    .line 4337
    if-nez v0, :cond_35

    .line 4342
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_36

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4343
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 4344
    if-eqz p1, :cond_2a

    iget-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v1, :cond_2a

    .line 4345
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 4346
    const-string v1, "config-unchanged"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 4347
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4348
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4350
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2f

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_36

    goto :goto_35

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_35} :catch_36

    .line 4353
    :cond_35
    :goto_35
    goto :goto_37

    .line 4352
    :catch_36
    move-exception p1

    .line 4354
    :goto_37
    return-void
.end method

.method public setAnimationScale(IF)V
    .registers 5

    .line 3005
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3010
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    .line 3011
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    goto :goto_1f

    .line 3014
    :cond_17
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_1f

    .line 3013
    :cond_1a
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_1f

    .line 3012
    :cond_1d
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3018
    :goto_1f
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3019
    return-void

    .line 3007
    :cond_27
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAnimationScales([F)V
    .registers 5

    .line 3023
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3028
    if-eqz p1, :cond_35

    .line 3029
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    .line 3030
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3032
    :cond_19
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_25

    .line 3033
    aget v0, p1, v1

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 3035
    :cond_25
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_35

    .line 3036
    aget p1, p1, v2

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3037
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 3042
    :cond_35
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3043
    return-void

    .line 3025
    :cond_3d
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAodShowing(Z)V
    .registers 4

    .line 7703
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7704
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setAodShowing(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 7705
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 7707
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7708
    return-void

    .line 7707
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .registers 5

    .line 2653
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2654
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2655
    if-eqz v1, :cond_19

    .line 2656
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setFillsParent(Z)V

    .line 2657
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 2658
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2660
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2661
    return-void

    .line 2660
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setCurrentProfileIds([I)V
    .registers 3

    .line 3184
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3185
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3186
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3187
    return-void

    .line 3186
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setCurrentUser(I[I)V
    .registers 6

    .line 3190
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3191
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3192
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3193
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p2, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentUserLw(I)V

    .line 3194
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->setCurrentUser(I)V

    .line 3197
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->switchUser()V

    .line 3198
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 3202
    nop

    .line 3203
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 3204
    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    if-eqz v1, :cond_33

    .line 3205
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->hasTaskForUser(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    .line 3204
    :goto_34
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 3207
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 3211
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_52

    .line 3212
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result p1

    .line 3213
    if-eqz p1, :cond_4c

    goto :goto_4e

    .line 3214
    :cond_4c
    iget p1, p2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3215
    :goto_4e
    const/4 v1, -0x2

    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    .line 3217
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3218
    return-void

    .line 3217
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setDockedStackCreateState(ILandroid/graphics/Rect;)V
    .registers 4

    .line 2682
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2683
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 2684
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2685
    return-void

    .line 2684
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    .registers 3

    .line 2688
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 2689
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 2690
    return-void
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .registers 5

    .line 6583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6584
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6585
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 6586
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 6587
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6588
    return-void

    .line 6587
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setDockedStackResizing(Z)V
    .registers 4

    .line 6575
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6576
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    .line 6577
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 6578
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6579
    return-void

    .line 6578
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setEventDispatching(Z)V
    .registers 4

    .line 4393
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4397
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4398
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    .line 4399
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_1b

    .line 4400
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputManagerCallback;->setEventDispatchingLw(Z)V

    .line 4402
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4403
    return-void

    .line 4402
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4394
    :cond_26
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setForceDesktopModeOnExternalDisplays(Z)V
    .registers 3

    .line 6617
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6618
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 6619
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6620
    return-void

    .line 6619
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setForceResizableTasks(Z)V
    .registers 3

    .line 6599
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6600
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 6601
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6602
    return-void

    .line 6601
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setForceShowSystemBars(Z)V
    .registers 6

    .line 5721
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 5723
    if-eqz v0, :cond_44

    .line 5727
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 5732
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5733
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$XcHmyRxMY5ULhjLiV-sIKnPtvOM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$XcHmyRxMY5ULhjLiV-sIKnPtvOM;

    .line 5734
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 5733
    invoke-static {v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 5735
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5736
    return-void

    .line 5735
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 5729
    :cond_3c
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5724
    :cond_44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Force showing system bars is only supportedfor Automotive use cases."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForcedDisplayDensityForUser(III)V
    .registers 12

    .line 5178
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_45

    .line 5183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 5183
    const-string v6, "setForcedDisplayDensityForUser"

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 5186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5188
    :try_start_20
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_40

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5189
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5190
    if-eqz p1, :cond_31

    .line 5191
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    .line 5193
    :cond_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 5195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5196
    nop

    .line 5197
    return-void

    .line 5193
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 5195
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5180
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForcedDisplayScalingMode(II)V
    .registers 7

    .line 5068
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    .line 5073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5075
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2e

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5076
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5077
    if-eqz p1, :cond_1f

    .line 5078
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setForcedScalingMode(I)V

    .line 5080
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_28

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 5082
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5083
    nop

    .line 5084
    return-void

    .line 5080
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 5082
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5070
    :cond_33
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForcedDisplaySize(III)V
    .registers 8

    .line 5048
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    .line 5053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5055
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2e

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5056
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5057
    if-eqz p1, :cond_1f

    .line 5058
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->setForcedSize(II)V

    .line 5060
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_28

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 5062
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5063
    nop

    .line 5064
    return-void

    .line 5060
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 5062
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5050
    :cond_33
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForwardedInsets(ILandroid/graphics/Insets;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6688
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6689
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 6690
    if-nez p1, :cond_13

    .line 6691
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6693
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6694
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerUid()I

    move-result v2

    .line 6695
    if-ne v1, v2, :cond_29

    .line 6699
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setForwardedInsets(Landroid/graphics/Insets;)V

    .line 6700
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6701
    return-void

    .line 6696
    :cond_29
    :try_start_29
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only owner of the display can set ForwardedInsets to it."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6700
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .registers 6

    .line 5391
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 5393
    :goto_5
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_17

    .line 5394
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 5396
    :cond_17
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 5398
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    .line 5399
    if-eq v0, p1, :cond_49

    .line 5400
    const/4 p1, 0x0

    if-eqz v0, :cond_37

    .line 5405
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 5406
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 5407
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5408
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStartedLw()V

    goto :goto_49

    .line 5414
    :cond_37
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 5415
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 5416
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    .line 5417
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5420
    :cond_49
    :goto_49
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 3

    .line 3431
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3432
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 3433
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3434
    return-void

    .line 3433
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 11

    .line 1915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1917
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_75

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1918
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1924
    if-eqz p1, :cond_66

    .line 1925
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 1926
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1927
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1928
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1929
    iput p3, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 1930
    iget p2, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 p3, 0x3f800000  # 1.0f

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_41

    .line 1931
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget p3, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->scale(F)V

    .line 1932
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget p3, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->scale(F)V

    .line 1933
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget p3, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p2, p3}, Landroid/graphics/Region;->scale(F)V

    .line 1935
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1936
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1939
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz p2, :cond_66

    .line 1940
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    if-eqz p2, :cond_61

    .line 1941
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 1942
    :cond_61
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1945
    :cond_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_6f

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_75

    .line 1947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1948
    nop

    .line 1949
    return-void

    .line 1945
    :catchall_6f
    move-exception p1

    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_75

    .line 1947
    :catchall_75
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setIsPc(Z)V
    .registers 3

    .line 6623
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6624
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    .line 6625
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6626
    return-void

    .line 6625
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setKeyguardGoingAway(Z)V
    .registers 3

    .line 2807
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2808
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    .line 2809
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2810
    return-void

    .line 2809
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setKeyguardOrAodShowingOnDefaultDisplay(Z)V
    .registers 3

    .line 2813
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2814
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    .line 2815
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2816
    return-void

    .line 2815
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .registers 4

    .line 5739
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 5745
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5746
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V

    .line 5747
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5748
    return-void

    .line 5747
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 5741
    :cond_20
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 2521
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_b

    .line 2522
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 2523
    const-string v0, "new-config"

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 2526
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    .line 2527
    return-void
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 6

    .line 3945
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 3950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3952
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_28

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3953
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 3954
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 3956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3957
    nop

    .line 3958
    return-void

    .line 3954
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 3956
    :catchall_28
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3947
    :cond_2d
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverscan(IIIII)V
    .registers 16

    .line 5268
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_38

    .line 5272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5274
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_33

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5275
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 5276
    if-eqz v5, :cond_24

    .line 5277
    move-object v4, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V

    .line 5279
    :cond_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_2d

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    .line 5281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5282
    nop

    .line 5283
    return-void

    .line 5279
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .line 5281
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5270
    :cond_38
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPipVisibility(Z)V
    .registers 4

    .line 5680
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 5686
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5687
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    .line 5688
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5689
    return-void

    .line 5688
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 5682
    :cond_20
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setRecentsAnimationController(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2605
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 2606
    return-void
.end method

.method public setRecentsVisibility(Z)V
    .registers 5

    .line 5671
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "setRecentsVisibility()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5673
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5674
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setRecentsVisibilityLw(Z)V

    .line 5675
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5676
    return-void

    .line 5675
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setRemoveContentMode(II)V
    .registers 6
    .param p2  # I
        .annotation build Landroid/view/WindowManager$RemoveContentMode;
        .end annotation
    .end param

    .line 6967
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setRemoveContentMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6971
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6972
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6973
    if-nez v1, :cond_32

    .line 6974
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set remove mode to a display that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6976
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6979
    :cond_32
    :try_start_32
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 6981
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 6982
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6983
    return-void

    .line 6982
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6968
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResizeDimLayer(ZIF)V
    .registers 6

    .line 6592
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6593
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 6595
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6596
    return-void

    .line 6595
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setRotateForApp(II)V
    .registers 5

    .line 3647
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3648
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 3649
    if-nez p1, :cond_1a

    .line 3650
    const-string p1, "WindowManager"

    const-string p2, "Trying to set rotate for app for a missing display."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3653
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayRotation;->setFixedToUserRotation(I)V

    .line 3654
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3655
    return-void

    .line 3654
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setShelfHeight(ZI)V
    .registers 6

    .line 5693
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "setShelfHeight()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5695
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5696
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForShelf(ZI)V

    .line 5698
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5699
    return-void

    .line 5698
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setShouldShowIme(IZ)V
    .registers 6

    .line 7091
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setShouldShowIme()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7095
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7096
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7097
    if-nez v1, :cond_32

    .line 7098
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set IME flag to a display that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7100
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7102
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v2

    if-nez v2, :cond_45

    .line 7107
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 7109
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7110
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7111
    return-void

    .line 7103
    :cond_45
    :try_start_45
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set IME flag to an untrusted virtual display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7110
    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 7092
    :cond_62
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShouldShowSystemDecors(IZ)V
    .registers 6

    .line 7046
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setShouldShowSystemDecors()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7050
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7051
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7052
    if-nez v1, :cond_32

    .line 7053
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set system decors flag to a display that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7055
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7057
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v2

    if-nez v2, :cond_45

    .line 7062
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 7064
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7065
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7066
    return-void

    .line 7058
    :cond_45
    :try_start_45
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set system decors flag to an untrusted virtual display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7065
    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 7047
    :cond_62
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .registers 6

    .line 7004
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setShouldShowWithInsecureKeyguard()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7009
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7010
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7011
    if-nez v1, :cond_32

    .line 7012
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set flag to a display that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7014
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7017
    :cond_32
    :try_start_32
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 7020
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 7021
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7022
    return-void

    .line 7021
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 7006
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3

    .line 3570
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    return-void
.end method

.method public setSupportsFreeformWindowManagement(Z)V
    .registers 3

    .line 6611
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6612
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    .line 6613
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6614
    return-void

    .line 6613
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setSupportsPictureInPicture(Z)V
    .registers 3

    .line 6605
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6606
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    .line 6607
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6608
    return-void

    .line 6607
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setSwitchingUser(Z)V
    .registers 4

    .line 2976
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "setSwitchingUser()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2980
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setSwitchingUser(Z)V

    .line 2981
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2982
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 2983
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2984
    return-void

    .line 2983
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2978
    :cond_22
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 8

    .line 1897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1899
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_29

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1900
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1904
    if-eqz p1, :cond_1a

    iget-boolean p2, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz p2, :cond_1a

    .line 1905
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V

    .line 1907
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 1909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1910
    nop

    .line 1911
    return-void

    .line 1907
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 1909
    :catchall_29
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setWillReplaceWindow(Landroid/os/IBinder;Z)V
    .registers 6

    .line 6479
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6480
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6481
    if-nez v1, :cond_29

    .line 6482
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6484
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6486
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 6487
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6489
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6491
    :cond_4a
    :try_start_4a
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 6492
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6493
    return-void

    .line 6492
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 6

    .line 6508
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6509
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6510
    if-nez v1, :cond_29

    .line 6511
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6515
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 6516
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6518
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6521
    :cond_4a
    if-eqz p2, :cond_50

    .line 6522
    :try_start_4c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceChildWindows()V

    goto :goto_54

    .line 6524
    :cond_50
    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 6527
    :goto_54
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 6528
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6529
    return-void

    .line 6528
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setWindowOpaque(Landroid/os/IBinder;Z)V
    .registers 4

    .line 2664
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2665
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 2666
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2667
    return-void

    .line 2666
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setWindowingMode(II)V
    .registers 7

    .line 6913
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "setWindowingMode()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 6917
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6918
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6919
    if-nez v1, :cond_32

    .line 6920
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set windowing mode to a display that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6922
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6925
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v2

    .line 6926
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 6928
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 6930
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result p2

    if-eq v2, p2, :cond_5f

    .line 6933
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_64

    .line 6938
    :try_start_4f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 6940
    :try_start_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6941
    nop

    .line 6943
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_5f

    .line 6940
    :catchall_5a
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6945
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6946
    return-void

    .line 6945
    :catchall_64
    move-exception p1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6914
    :cond_6a
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldShowIme(I)Z
    .registers 7

    .line 7070
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "shouldShowIme()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 7074
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7075
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7076
    const/4 v2, 0x0

    if-nez v1, :cond_34

    .line 7077
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to get IME flag of a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7079
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7081
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 7082
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7084
    :cond_3f
    :try_start_3f
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-nez p1, :cond_4b

    iget-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz p1, :cond_4c

    :cond_4b
    const/4 v2, 0x1

    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7086
    :catchall_51
    move-exception p1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 7071
    :cond_57
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldShowSystemDecors(I)Z
    .registers 7

    .line 7026
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "shouldShowSystemDecors()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 7030
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7031
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7032
    const/4 v2, 0x0

    if-nez v1, :cond_34

    .line 7033
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to get system decors flag of a display that does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7035
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7037
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 7038
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7040
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7041
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 7027
    :cond_4e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldShowWithInsecureKeyguard(I)Z
    .registers 6

    .line 6987
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "shouldShowWithInsecureKeyguard()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6991
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6992
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6993
    if-nez v1, :cond_34

    .line 6994
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to get flag of a display that does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6996
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 6998
    :cond_34
    :try_start_34
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 6999
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6988
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 7

    .line 3384
    nop

    .line 3385
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3394
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_10

    .line 3395
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3397
    :cond_10
    :try_start_10
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 3398
    if-nez p2, :cond_1c

    .line 3399
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3401
    :cond_1c
    move v1, v2

    goto :goto_1f

    .line 3397
    :cond_1e
    const/4 v1, 0x0

    .line 3403
    :goto_1f
    :try_start_1f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v3, :cond_28

    .line 3404
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3406
    :cond_28
    :try_start_28
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3407
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 3408
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3409
    if-eqz v1, :cond_38

    .line 3410
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3412
    :cond_38
    return-void

    .line 3408
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public showCircularMask(Z)V
    .registers 8

    .line 3466
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3470
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_66

    .line 3472
    if-eqz p1, :cond_47

    .line 3474
    :try_start_b
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-nez p1, :cond_40

    .line 3475
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e00f0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 3477
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3480
    new-instance v2, Lcom/android/server/wm/CircularDisplayMask;

    .line 3481
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x7e2

    .line 3482
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/android/server/wm/CircularDisplayMask;-><init>(Lcom/android/server/wm/DisplayContent;III)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 3486
    :cond_40
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    goto :goto_54

    .line 3487
    :cond_47
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz p1, :cond_54

    .line 3488
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    .line 3489
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_5f

    .line 3492
    :cond_54
    :goto_54
    :try_start_54
    const-string p1, "showCircularMask"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3495
    nop

    .line 3496
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3497
    return-void

    .line 3492
    :catchall_5f
    move-exception p1

    :try_start_60
    const-string v1, "showCircularMask"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1

    .line 3496
    :catchall_66
    move-exception p1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public showEmulatorDisplayOverlay()V
    .registers 7

    .line 3500
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3504
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3e

    .line 3506
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-nez v1, :cond_26

    .line 3507
    new-instance v1, Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3509
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x7e2

    .line 3510
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 3514
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->setVisibility(Z)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_37

    .line 3516
    :try_start_2c
    const-string v1, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3519
    nop

    .line 3520
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3521
    return-void

    .line 3516
    :catchall_37
    move-exception v1

    :try_start_38
    const-string v2, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    .line 3520
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlayIfNeeded()V
    .registers 3

    .line 3457
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 3459
    const-string v1, "ro.emulator.circular"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_27

    .line 3461
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3463
    :cond_27
    return-void
.end method

.method showGlobalActions()V
    .registers 2

    .line 2987
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showGlobalActions()V

    .line 2988
    return-void
.end method

.method public showRecentApps()V
    .registers 2

    .line 5848
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showRecentApps()V

    .line 5849
    return-void
.end method

.method public showStrictModeViolation(Z)V
    .registers 6

    .line 3527
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3528
    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eqz p1, :cond_1f

    .line 3531
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3532
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_28

    .line 3535
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3537
    :goto_28
    return-void
.end method

.method public shutdown(Z)V
    .registers 4

    .line 3155
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3157
    return-void
.end method

.method startFreezingDisplayLocked(II)V
    .registers 4

    .line 5443
    nop

    .line 5444
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5443
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 5445
    return-void
.end method

.method startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 5449
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    if-eqz v0, :cond_a

    goto/16 :goto_81

    .line 5453
    :cond_a
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_80

    .line 5463
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 5466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 5467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5471
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5473
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManagerCallback;->freezeInputDispatchingLw()V

    .line 5475
    iget-object v0, p3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5476
    iget-object v0, p3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->freeze()V

    .line 5484
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 5486
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 5487
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 5488
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget p2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5489
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object p1

    .line 5490
    if-eqz p1, :cond_5f

    .line 5491
    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5495
    :cond_5f
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v4

    .line 5497
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 5498
    new-instance p1, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5499
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    move-object v0, p1

    move-object v2, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V

    .line 5501
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget p3, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 5504
    return-void

    .line 5456
    :cond_80
    :goto_80
    return-void

    .line 5450
    :cond_81
    :goto_81
    return-void
.end method

.method public startFreezingScreen(II)V
    .registers 8

    .line 2824
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string v1, "startFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2829
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2830
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_35

    .line 2831
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 2832
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_3a

    .line 2834
    :try_start_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(II)V

    .line 2835
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2836
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_30

    .line 2838
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2839
    goto :goto_35

    .line 2838
    :catchall_30
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2841
    :cond_35
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2842
    return-void

    .line 2841
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2826
    :cond_40
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires FREEZE_SCREEN permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startSeamlessRotation()V
    .registers 2

    .line 7667
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 7669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 7670
    return-void
.end method

.method public startViewServer(I)Z
    .registers 6

    .line 3997
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3998
    return v1

    .line 4001
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4002
    return v1

    .line 4005
    :cond_13
    const/16 v0, 0x400

    if-ge p1, v0, :cond_18

    .line 4006
    return v1

    .line 4009
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    const-string v2, "View server did not start"

    const-string v3, "WindowManager"

    if-eqz v0, :cond_32

    .line 4010
    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_31

    .line 4012
    :try_start_26
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {p1}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_2d

    return p1

    .line 4013
    :catch_2d
    move-exception p1

    .line 4014
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :cond_31
    return v1

    .line 4021
    :cond_32
    :try_start_32
    new-instance v0, Lcom/android/server/wm/ViewServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 4022
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {p1}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result p1
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_40

    return p1

    .line 4023
    :catch_40
    move-exception p1

    .line 4024
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    return v1
.end method

.method public startWindowTrace()V
    .registers 3

    .line 5300
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 5301
    return-void
.end method

.method public statusBarVisibilityChanged(II)V
    .registers 6

    .line 5703
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    .line 5709
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5710
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5711
    if-eqz v1, :cond_1c

    .line 5712
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    goto :goto_32

    .line 5714
    :cond_1c
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusBarVisibilityChanged with invalid displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5716
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5717
    return-void

    .line 5716
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 5705
    :cond_3d
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method stopFreezingDisplayLocked()V
    .registers 16

    .line 5507
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_5

    .line 5508
    return-void

    .line 5511
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5512
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    .line 5513
    :goto_18
    if-eqz v0, :cond_21

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    goto :goto_22

    :cond_21
    move v4, v2

    .line 5514
    :goto_22
    if-nez v3, :cond_111

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v3, :cond_111

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eq v3, v1, :cond_111

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v3, :cond_111

    if-lez v4, :cond_34

    goto/16 :goto_111

    .line 5533
    :cond_34
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5534
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 5535
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 5536
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v4}, Lcom/android/server/wm/InputManagerCallback;->thawInputDispatchingLw()V

    .line 5537
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 5538
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5539
    const-string v5, "Screen frozen for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5540
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 5541
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v5, :cond_6a

    .line 5542
    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5543
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5545
    :cond_6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5547
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5552
    nop

    .line 5554
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 5555
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v4

    .line 5556
    const/4 v14, 0x0

    if-eqz v4, :cond_d2

    .line 5557
    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 5559
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 5561
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 5562
    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/wm/DisplayPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v6

    if-nez v6, :cond_a7

    .line 5563
    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 5565
    :cond_a7
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v7, 0x2710

    .line 5566
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v9

    iget v10, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v12, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v13, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 5565
    move-object v5, v4

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 5568
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 5569
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    move v3, v2

    goto :goto_d1

    .line 5571
    :cond_c8
    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5572
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v4, v3, v14}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 5573
    move v3, v1

    .line 5575
    :goto_d1
    goto :goto_dd

    .line 5576
    :cond_d2
    if-eqz v4, :cond_dc

    .line 5577
    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 5578
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v4, v3, v14}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 5580
    :cond_dc
    move v3, v1

    .line 5589
    :goto_dd
    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v4

    if-eqz v4, :cond_e6

    goto :goto_e7

    :cond_e6
    move v1, v2

    .line 5596
    :goto_e7
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5597
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5599
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5601
    if-eqz v3, :cond_105

    if-eqz v0, :cond_105

    if-eqz v3, :cond_105

    .line 5603
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v2

    or-int/2addr v1, v2

    .line 5606
    :cond_105
    if-eqz v1, :cond_10a

    .line 5607
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 5609
    :cond_10a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 5610
    return-void

    .line 5523
    :cond_111
    :goto_111
    return-void
.end method

.method public stopFreezingScreen()V
    .registers 5

    .line 2846
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string v1, "stopFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2851
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2852
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_2b

    .line 2853
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 2854
    const-string v1, "client"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 2855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 2857
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_26

    .line 2859
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    goto :goto_2b

    .line 2859
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2862
    :cond_2b
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2863
    return-void

    .line 2862
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2848
    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopViewServer()Z
    .registers 4

    .line 4044
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4045
    return v1

    .line 4048
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4049
    return v1

    .line 4052
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_1c

    .line 4053
    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    return v0

    .line 4055
    :cond_1c
    return v1
.end method

.method public stopWindowTrace()V
    .registers 3

    .line 5305
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 5306
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 4

    .line 3148
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    .line 3149
    return-void
.end method

.method public syncInputTransactions()V
    .registers 4

    .line 7742
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->waitForAnimationsToComplete()V

    .line 7744
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7745
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementIfScheduled()V

    .line 7746
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 7748
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7749
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 7750
    return-void

    .line 7748
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

    .line 4498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    .line 4499
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemReady()V

    .line 4500
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 4501
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    .line 4502
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryWideColorGamutSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    .line 4503
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryHdrSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasHdrSupport:Z

    .line 4504
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$iQxeP_PsHHArcPSFabJ3FXyPKNc;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$iQxeP_PsHHArcPSFabJ3FXyPKNc;-><init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4505
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$B58NKEOrr2mhFWeS3bqpaZnd11o;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$B58NKEOrr2mhFWeS3bqpaZnd11o;-><init>(Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4506
    nop

    .line 4507
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4506
    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 4508
    if-eqz v0, :cond_73

    .line 4510
    :try_start_4f
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v1

    .line 4511
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_56} :catch_72

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4512
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 4513
    if-eqz v1, :cond_67

    .line 4514
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 4515
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V

    .line 4517
    :cond_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_6c

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_72

    .line 4520
    goto :goto_73

    .line 4517
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_72} :catch_72

    .line 4518
    :catch_72
    move-exception v0

    .line 4522
    :cond_73
    :goto_73
    return-void
.end method

.method public thawDisplayRotation(I)V
    .registers 6

    .line 3708
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3718
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_45

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3719
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 3720
    if-nez p1, :cond_2b

    .line 3721
    const-string p1, "WindowManager"

    const-string v3, "Trying to thaw rotation for a missing display."

    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_3f

    .line 3727
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3722
    return-void

    .line 3724
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->thawRotation()V

    .line 3725
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_3f

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_45

    .line 3727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3728
    nop

    .line 3730
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3731
    return-void

    .line 3725
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 3727
    :catchall_45
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3710
    :cond_4a
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires SET_ORIENTATION permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thawRotation()V
    .registers 2

    .line 3699
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 3700
    return-void
.end method

.method public triggerAnimationFailsafe()V
    .registers 3

    .line 2742
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2743
    return-void
.end method

.method unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3

    .line 7565
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7566
    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    .line 3936
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3937
    return-void
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    .registers 5

    .line 3097
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3098
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 3099
    if-eqz p2, :cond_11

    .line 3100
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3102
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3103
    return-void

    .line 3102
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .registers 6

    .line 3909
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3910
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3911
    if-eqz v1, :cond_16

    .line 3915
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V

    .line 3916
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3917
    return-void

    .line 3912
    :cond_16
    :try_start_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to register visibility event for invalid display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3916
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 5

    .line 3887
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3888
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 3889
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 3890
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3891
    return-void

    .line 3890
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method updateDisplayContentLocation(Landroid/view/IWindow;III)V
    .registers 10

    .line 6830
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowManagerService;->checkCallerOwnsDisplay(I)V

    .line 6832
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    .line 6835
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 6836
    if-nez v3, :cond_33

    .line 6837
    const-string p2, "WindowManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad requesting window "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_47

    .line 6845
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_4c

    .line 6838
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6840
    :cond_33
    :try_start_33
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 6841
    if-eqz p1, :cond_3e

    .line 6842
    invoke-virtual {p1, v3, p2, p3}, Lcom/android/server/wm/DisplayContent;->updateLocation(Lcom/android/server/wm/WindowState;II)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_47

    .line 6845
    :cond_3e
    :try_start_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6846
    nop

    .line 6847
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6848
    return-void

    .line 6845
    :catchall_47
    move-exception p1

    :try_start_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6847
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 6

    .line 5436
    const-wide/16 v0, 0x20

    const-string v2, "wmUpdateFocus"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5437
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateFocusedWindowLocked(IZ)Z

    move-result p1

    .line 5438
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5439
    return p1
.end method

.method updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    .line 7628
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 7629
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7630
    return-void

    .line 7632
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 7633
    xor-int/lit8 v0, v0, 0x1

    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 7634
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    .line 7635
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 7638
    :cond_2d
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7641
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 7643
    xor-int/lit8 p1, p1, 0x1

    if-ne v0, p1, :cond_3d

    .line 7644
    return-void

    .line 7647
    :cond_3d
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$nQHccAXNqWhpUTYdUQi4f3vYirA;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$nQHccAXNqWhpUTYdUQi4f3vYirA;-><init>(Z)V

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 7650
    return-void
.end method

.method updatePointerIcon(Landroid/view/IWindow;)V
    .registers 7

    .line 6739
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    monitor-enter v0

    .line 6740
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1800(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6741
    monitor-exit v0

    return-void

    .line 6743
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1900(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v1

    .line 6744
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$2000(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v2

    .line 6745
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_88

    .line 6747
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6748
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6750
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6752
    :cond_2d
    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_2f
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6753
    if-nez v0, :cond_50

    .line 6754
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requesting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6755
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6757
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 6758
    if-nez p1, :cond_5b

    .line 6759
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6761
    :cond_5b
    nop

    .line 6762
    :try_start_5c
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 6763
    if-eq p1, v0, :cond_67

    .line 6764
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6767
    :cond_67
    :try_start_67
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 6768
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v1

    .line 6769
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result p1

    .line 6767
    invoke-interface {v0, v1, p1}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_74} :catch_75
    .catchall {:try_start_67 .. :try_end_74} :catchall_82

    .line 6772
    goto :goto_7d

    .line 6770
    :catch_75
    move-exception p1

    .line 6771
    :try_start_76
    const-string p1, "WindowManager"

    const-string v0, "unable to update pointer icon"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6773
    :goto_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6774
    return-void

    .line 6773
    :catchall_82
    move-exception p1

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 6745
    :catchall_88
    move-exception p1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method public updateRotation(ZZ)V
    .registers 3

    .line 3759
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3760
    return-void
.end method

.method updateTapExcludeRegion(Landroid/view/IWindow;ILandroid/graphics/Region;)V
    .registers 7

    .line 6861
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6862
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 6863
    if-nez v1, :cond_29

    .line 6864
    const-string p2, "WindowManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad requesting window "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6865
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6867
    :cond_29
    :try_start_29
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowState;->updateTapExcludeRegion(ILandroid/graphics/Region;)V

    .line 6868
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6869
    return-void

    .line 6868
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 8

    .line 4142
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4143
    return v1

    .line 4146
    :cond_8
    const/4 v0, 0x1

    .line 4148
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4150
    const/4 v3, 0x0

    .line 4154
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 4155
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x2000

    invoke-direct {v4, v5, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_56
    .catchall {:try_start_e .. :try_end_1e} :catchall_4c

    .line 4157
    if-eqz v2, :cond_39

    .line 4158
    :try_start_20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4159
    const/16 p1, 0x20

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 4160
    iget-object p1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4162
    :cond_39
    const/16 p1, 0xa

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 4163
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_4a
    .catchall {:try_start_20 .. :try_end_41} :catchall_48

    .line 4167
    nop

    .line 4169
    :try_start_42
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_5f

    .line 4172
    nop

    .line 4176
    move v1, v0

    goto :goto_61

    .line 4167
    :catchall_48
    move-exception p1

    goto :goto_4e

    .line 4164
    :catch_4a
    move-exception p1

    goto :goto_58

    .line 4167
    :catchall_4c
    move-exception p1

    move-object v4, v3

    :goto_4e
    if-eqz v4, :cond_55

    .line 4169
    :try_start_50
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 4172
    goto :goto_55

    .line 4170
    :catch_54
    move-exception v0

    .line 4172
    :cond_55
    :goto_55
    throw p1

    .line 4164
    :catch_56
    move-exception p1

    move-object v4, v3

    .line 4165
    :goto_58
    nop

    .line 4167
    if-eqz v4, :cond_61

    .line 4169
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_61

    .line 4170
    :catch_5f
    move-exception p1

    .line 4171
    nop

    .line 4176
    :cond_61
    :goto_61
    return v1
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 8

    .line 4087
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4088
    return v1

    .line 4091
    :cond_8
    nop

    .line 4093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4094
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4095
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Yf21B7QM1fRVFGIQy6MImYjka28;

    invoke-direct {v4, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Yf21B7QM1fRVFGIQy6MImYjka28;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4098
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4100
    const/4 v2, 0x0

    .line 4104
    :try_start_23
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 4105
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x2000

    invoke-direct {v3, v4, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_7e
    .catchall {:try_start_23 .. :try_end_33} :catchall_74

    .line 4107
    :try_start_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 4108
    move v2, v1

    :goto_38
    if-ge v2, p1, :cond_61

    .line 4109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4110
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4111
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 4112
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4113
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4108
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 4116
    :cond_61
    const-string p1, "DONE.\n"

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4117
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_69} :catch_72
    .catchall {:try_start_33 .. :try_end_69} :catchall_70

    .line 4121
    nop

    .line 4123
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_87

    .line 4126
    nop

    .line 4130
    const/4 v1, 0x1

    goto :goto_89

    .line 4121
    :catchall_70
    move-exception p1

    goto :goto_76

    .line 4118
    :catch_72
    move-exception p1

    goto :goto_80

    .line 4121
    :catchall_74
    move-exception p1

    move-object v3, v2

    :goto_76
    if-eqz v3, :cond_7d

    .line 4123
    :try_start_78
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 4126
    goto :goto_7d

    .line 4124
    :catch_7c
    move-exception v0

    .line 4126
    :cond_7d
    :goto_7d
    throw p1

    .line 4118
    :catch_7e
    move-exception p1

    move-object v3, v2

    .line 4119
    :goto_80
    nop

    .line 4121
    if-eqz v3, :cond_89

    .line 4123
    :try_start_83
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_89

    .line 4124
    :catch_87
    move-exception p1

    .line 4125
    nop

    .line 4130
    :cond_89
    :goto_89
    return v1

    .line 4098
    :catchall_8a
    move-exception p1

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 4200
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4201
    return v1

    .line 4204
    :cond_8
    nop

    .line 4205
    nop

    .line 4206
    nop

    .line 4208
    nop

    .line 4213
    const/16 v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_10
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 4214
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    .line 4215
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 4217
    :cond_1b
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4218
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 4221
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_32

    .line 4222
    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_34

    .line 4224
    :cond_32
    const-string p3, ""

    .line 4227
    :goto_34
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4228
    if-nez v0, :cond_3f

    .line 4229
    nop

    .line 4257
    nop

    .line 4260
    nop

    .line 4263
    nop

    .line 4229
    return v1

    .line 4232
    :cond_3f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_ae
    .catchall {:try_start_10 .. :try_end_43} :catchall_aa

    .line 4233
    :try_start_43
    const-string v5, "android.view.IWindow"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {v4, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4237
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5c} :catch_a5
    .catchall {:try_start_43 .. :try_end_5c} :catchall_a2

    .line 4241
    :try_start_5c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4243
    invoke-interface {v0, v3, v4, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4245
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 4247
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 4248
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7c} :catch_9f
    .catchall {:try_start_5c .. :try_end_7c} :catchall_9d

    .line 4249
    :try_start_7c
    const-string p1, "DONE\n"

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4250
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_84} :catch_88
    .catchall {:try_start_7c .. :try_end_84} :catchall_85

    goto :goto_8b

    .line 4257
    :catchall_85
    move-exception p1

    goto/16 :goto_e5

    .line 4253
    :catch_88
    move-exception p1

    goto :goto_a8

    .line 4247
    :cond_8a
    move-object v0, v2

    .line 4257
    :goto_8b
    nop

    .line 4258
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4260
    nop

    .line 4261
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4263
    if-eqz v0, :cond_9b

    .line 4265
    :try_start_95
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    .line 4268
    :goto_98
    goto :goto_9b

    .line 4266
    :catch_99
    move-exception p1

    goto :goto_98

    .line 4272
    :cond_9b
    :goto_9b
    move v1, v3

    goto :goto_e2

    .line 4257
    :catchall_9d
    move-exception p1

    goto :goto_e6

    .line 4253
    :catch_9f
    move-exception p1

    move-object v0, v2

    goto :goto_a8

    .line 4257
    :catchall_a2
    move-exception p1

    move-object v5, v2

    goto :goto_e6

    .line 4253
    :catch_a5
    move-exception p1

    move-object v0, v2

    move-object v5, v0

    :goto_a8
    move-object v2, v4

    goto :goto_b1

    .line 4257
    :catchall_aa
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    goto :goto_e6

    .line 4253
    :catch_ae
    move-exception p1

    move-object v0, v2

    move-object v5, v0

    .line 4254
    :goto_b1
    :try_start_b1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not send command "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with parameters "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_b1 .. :try_end_cf} :catchall_e3

    .line 4255
    nop

    .line 4257
    if-eqz v2, :cond_d5

    .line 4258
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4260
    :cond_d5
    if-eqz v5, :cond_da

    .line 4261
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4263
    :cond_da
    if-eqz v0, :cond_e2

    .line 4265
    :try_start_dc
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    .line 4268
    :goto_df
    goto :goto_e2

    .line 4266
    :catch_e0
    move-exception p1

    goto :goto_df

    .line 4272
    :cond_e2
    :goto_e2
    return v1

    .line 4257
    :catchall_e3
    move-exception p1

    move-object v4, v2

    :goto_e5
    move-object v2, v0

    :goto_e6
    if-eqz v4, :cond_eb

    .line 4258
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4260
    :cond_eb
    if-eqz v5, :cond_f0

    .line 4261
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4263
    :cond_f0
    if-eqz v2, :cond_f7

    .line 4265
    :try_start_f2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    .line 4268
    goto :goto_f7

    .line 4266
    :catch_f6
    move-exception p2

    .line 4268
    :cond_f7
    :goto_f7
    throw p1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .registers 8

    .line 3813
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3814
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3815
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3816
    if-eqz v1, :cond_45

    .line 3821
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3822
    new-instance v2, Lcom/android/server/wm/WindowManagerService$10;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/WindowManagerService$10;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 3840
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3842
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3843
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    invoke-direct {v4, p0, p1, v2, p2}, Lcom/android/server/wm/WindowManagerService$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_36
    .catchall {:try_start_1e .. :try_end_33} :catchall_34

    .line 3846
    goto :goto_37

    .line 3849
    :catchall_34
    move-exception p1

    goto :goto_40

    .line 3844
    :catch_36
    move-exception p1

    .line 3848
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3849
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 3817
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to register rotation event for invalid display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3815
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 11

    .line 5322
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 5324
    const-string v1, "Requested window "

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "Failed looking up window callers="

    const-string v5, "WindowManager"

    if-nez v0, :cond_45

    .line 5325
    if-nez p3, :cond_2b

    .line 5329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    return-object v2

    .line 5326
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5332
    :cond_45
    if-eqz p1, :cond_8b

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v6, p1, :cond_8b

    .line 5333
    if-nez p3, :cond_64

    .line 5337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    return-object v2

    .line 5334
    :cond_64
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is in session "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", not "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 5341
    :cond_8b
    return-object v0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 4

    .line 5318
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    return-object p1
.end method

.method writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 6

    .line 5993
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-wide v1, 0x10b00000001L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5994
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 5995
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 5996
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_28

    .line 5997
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5999
    :cond_28
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_36

    .line 6000
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const-wide v0, 0x10900000004L

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6002
    :cond_36
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object p2

    .line 6003
    if-eqz p2, :cond_46

    .line 6004
    const-wide v0, 0x10b00000005L

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6006
    :cond_46
    const-wide v0, 0x10800000006L

    iget-boolean p2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6007
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 6008
    const-wide v0, 0x10500000007L

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6009
    const-wide v0, 0x10500000008L

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6010
    return-void
.end method
