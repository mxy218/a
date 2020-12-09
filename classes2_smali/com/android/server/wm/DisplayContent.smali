.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$TaskStackContainers;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;,
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;,
        Lcom/android/server/wm/DisplayContent$ForceScalingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
        ">;",
        "Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;"
    }
.end annotation


# static fields
.field static final FORCE_SCALING_MODE_AUTO:I = 0x0

.field static final FORCE_SCALING_MODE_DISABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field isDefaultDisplay:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

.field mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field final mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

.field final mChangingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCloseToSquareMaxAspectRatio:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field private mDeferUpdateImeTargetCount:I

.field private mDeferredRemoval:Z

.field mDeferredRotationPauseCount:I

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private mDisplayReady:Z

.field private mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field private mHaveApp:Z

.field private mHaveBootMsg:Z

.field private mHaveKeyguard:Z

.field private mHaveWallpaper:Z

.field private mIgnoreRotationForApps:Z

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field private mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field private mLastDispatchedSystemUiVisibility:I

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field private mLastHasContent:Z

.field private mLastKeyguardForcedOrientation:I

.field private mLastOrientation:I

.field private mLastStatusBarVisibility:I

.field private mLastWallpaperVisible:Z

.field private mLastWindowForcedOrientation:I

.field private mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mLocationInParentWindow:Landroid/graphics/Point;

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMaxUiWidth:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayLayer:Landroid/view/SurfaceControl;

.field private mParentSurfaceControl:Landroid/view/SurfaceControl;

.field private mParentWindow:Lcom/android/server/wm/WindowState;

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field private mPortalWindowHandle:Landroid/view/InputWindowHandle;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mRemovingDisplay:Z

.field private mRotation:I

.field private mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession:Landroid/view/SurfaceSession;

.field mShouldOverrideDisplayConfiguration:Z

.field mSkipAppTransitionAnimation:Z

.field private final mSystemGestureExclusion:Landroid/graphics/Region;

.field private mSystemGestureExclusionLimit:I

.field private final mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ISystemGestureExclusionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

.field private mSystemGestureExclusionWasRestricted:Z

.field final mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mTapExcludeProvidingWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpFloats:[F

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRecoveringMemory:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mUpdateImeTarget:Z

.field private final mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForConfig:Z

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field mWallpaperMayChange:Z

.field final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCornerRadius:F

.field private mWindowingLayer:Landroid/view/SurfaceControl;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityDisplay;)V
    .registers 10

    .line 896
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 254
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    .line 257
    new-instance v0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mAboveAppWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 261
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mBelowAppWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 267
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mImeWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 281
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 282
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 283
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 299
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 300
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 301
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 304
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v2}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 312
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 313
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 319
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 326
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 328
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 333
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 335
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 336
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 337
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    .line 344
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 347
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 353
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 364
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 372
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 380
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    .line 388
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    .line 407
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 409
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 442
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 445
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 446
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 447
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 448
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 449
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 452
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    .line 454
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 462
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 464
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 466
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 467
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 468
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 469
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 471
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 473
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 475
    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$1;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 480
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 483
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 487
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 489
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 495
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 500
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 506
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 513
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 519
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 538
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 546
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    .line 555
    new-instance v2, Lcom/android/server/wm/utils/DisplayRotationUtil;

    invoke-direct {v2}, Lcom/android/server/wm/utils/DisplayRotationUtil;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    .line 578
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    .line 583
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 585
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 590
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 606
    sget-object v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$GuCKVzKP141d6J0gfRAjKtuBJUU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$GuCKVzKP141d6J0gfRAjKtuBJUU;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    .line 627
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 638
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 688
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 743
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 775
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 781
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 785
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 897
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 898
    iget-object p3, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    if-nez p3, :cond_35f

    .line 904
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 905
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 906
    new-instance p3, Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p3, v2, p0}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 907
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, p3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 908
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 909
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget p1, p1, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr p1, p3

    div-int/lit16 p1, p1, 0xa0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 911
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez p1, :cond_1df

    move p1, v1

    goto :goto_1e0

    :cond_1df
    move p1, v0

    :goto_1e0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 912
    new-instance p1, Lcom/android/server/wm/DisplayFrames;

    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 913
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-direct {p1, p3, v2, v4}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 914
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 916
    new-instance p1, Lcom/android/server/wm/AppTransition;

    iget-object p3, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 917
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object p3, p2, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 918
    new-instance p1, Lcom/android/server/wm/AppTransitionController;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/AppTransitionController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 919
    new-instance p1, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 921
    new-instance p1, Landroid/animation/AnimationHandler;

    invoke-direct {p1}, Landroid/animation/AnimationHandler;-><init>()V

    .line 922
    new-instance p3, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 923
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {p3, v2, v4, v5, p1}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 925
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerEventDispatcher"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p3, v2}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p1

    .line 927
    new-instance p3, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {p3, p1}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 932
    new-instance p1, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p1, p3, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 933
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 934
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 935
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    if-eqz p1, :cond_27a

    .line 936
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 937
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object p1

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 940
    :cond_27a
    new-instance p1, Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 941
    new-instance p1, Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 942
    iget-object p1, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x105009d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 944
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_2a2

    .line 947
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 949
    :cond_2a2
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz p1, :cond_2ad

    .line 950
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 952
    :cond_2ad
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz p1, :cond_2b8

    .line 953
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 955
    :cond_2b8
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getWindowCornerRadius()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 956
    new-instance p1, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 957
    new-instance p1, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    .line 959
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 960
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 962
    const-string p3, "Display Root"

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 963
    const-string p3, "Display Overlays"

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 965
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 966
    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 967
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 968
    invoke-virtual {p1, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 969
    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 970
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 971
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 974
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, p1, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 975
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, p1, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 976
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-super {p0, p1, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 977
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, p1, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 980
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 984
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 986
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 987
    new-instance p1, Lcom/android/server/wm/InputMonitor;

    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {p1, p2, p3}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 988
    new-instance p1, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 989
    return-void

    .line 899
    :cond_35f
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display with ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " already exists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 900
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " new="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayContent;)I
    .registers 1

    .line 230
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayContent;)Z
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayContent;)I
    .registers 1

    .line 230
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayContent;)I
    .registers 1

    .line 230
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2

    .line 230
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2

    .line 230
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method private static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I
    .registers 9

    .line 5318
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p0

    .line 5319
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5321
    const/4 p2, 0x1

    new-array v0, p2, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 5322
    new-array p2, p2, [I

    aput v1, p2, v1

    .line 5323
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$8i4L6sPLH8SnoxAVdVHQUeZg5VM;

    invoke-direct {v2, v0, p2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$8i4L6sPLH8SnoxAVdVHQUeZg5VM;-><init>([I[ILandroid/graphics/Region;)V

    invoke-static {p0, v2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 5336
    aget p1, v0, v1

    sub-int/2addr p3, p1

    .line 5337
    aget p1, p2, v1

    invoke-virtual {p4, p5, p1, p3}, Lcom/android/server/wm/WindowState;->setLastExclusionHeights(III)V

    .line 5339
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    .line 5340
    aget p0, v0, v1

    return p0
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 7

    .line 1017
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1018
    const-string v1, " to display="

    const-string v2, "Can\'t map token="

    if-nez v0, :cond_7b

    .line 1026
    if-eqz p1, :cond_57

    .line 1030
    if-eqz p2, :cond_34

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1040
    iget p1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch p1, :pswitch_data_ac

    .line 1049
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_33

    .line 1042
    :pswitch_28  #0x7dd
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1043
    goto :goto_33

    .line 1046
    :pswitch_2e  #0x7db, 0x7dc
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1053
    :cond_33
    :goto_33
    return-void

    .line 1031
    :cond_34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t map null token to display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1027
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " binder is null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1023
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already mapped to display="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " tokens="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_ac
    .packed-switch 0x7db
        :pswitch_2e  #000007db
        :pswitch_2e  #000007dc
        :pswitch_28  #000007dd
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V
    .registers 13

    .line 1902
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 1903
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1904
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1906
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v1, v2, :cond_19

    .line 1907
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1909
    :cond_19
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v1, v2, :cond_1f

    .line 1910
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1912
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p2

    .line 1914
    iget p3, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge p2, p3, :cond_30

    .line 1915
    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1917
    :cond_30
    iget p3, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le p2, p3, :cond_36

    .line 1918
    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1920
    :cond_36
    return-void
.end method

.method private calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .registers 6

    .line 3802
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 3803
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 3804
    :cond_a
    :goto_a
    if-eqz v1, :cond_f

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_11

    :cond_f
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3805
    :goto_11
    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_18

    :cond_16
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3806
    :goto_18
    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3807
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 3808
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3809
    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 3810
    add-int/2addr v2, v0

    add-int/2addr p1, v1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3811
    return-void
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 7

    .line 1657
    if-eqz p1, :cond_4b

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v0, :cond_7

    goto :goto_4b

    .line 1660
    :cond_7
    if-nez p2, :cond_12

    .line 1661
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p1

    return-object p1

    .line 1664
    :cond_12
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    const/4 v1, 0x3

    if-ne p2, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1665
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1666
    invoke-static {p1, v2, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p1

    .line 1668
    invoke-virtual {p1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object p1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1665
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;

    move-result-object p1

    .line 1670
    invoke-static {p1}, Landroid/view/DisplayCutout;->fromBounds([Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p1

    .line 1671
    if-eqz v0, :cond_3d

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_3f

    :cond_3d
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1672
    :goto_3f
    if-eqz v0, :cond_44

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_46

    :cond_44
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1670
    :goto_46
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p1

    return-object p1

    .line 1658
    :cond_4b
    :goto_4b
    sget-object p1, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p1
.end method

.method private canUpdateImeTarget()Z
    .registers 2

    .line 4951
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private clearLayoutNeeded()V
    .registers 2

    .line 3449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3450
    return-void
.end method

.method private computeCompatSmallestWidth(ZIII)I
    .registers 15

    .line 1804
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1805
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1807
    if-eqz p1, :cond_10

    .line 1808
    nop

    .line 1809
    move v9, p4

    move p4, p3

    move p3, v9

    goto :goto_12

    .line 1811
    :cond_10
    nop

    .line 1812
    nop

    .line 1814
    :goto_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v3

    .line 1816
    const/4 v4, 0x1

    move v7, p4

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v3

    .line 1818
    const/4 v4, 0x2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v3

    .line 1820
    const/4 v4, 0x3

    move v7, p4

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result p1

    .line 1822
    return p1
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V
    .registers 16

    .line 1849
    if-eqz p2, :cond_7

    .line 1850
    nop

    .line 1851
    move v7, p5

    move p5, p4

    move p4, v7

    goto :goto_9

    .line 1853
    :cond_7
    nop

    .line 1854
    nop

    .line 1856
    :goto_9
    const/high16 p2, 0x40000000  # 2.0f

    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1857
    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1858
    const/4 p2, 0x0

    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1859
    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1860
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1861
    const/4 v2, 0x1

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1862
    const/4 v2, 0x2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1863
    const/4 v2, 0x3

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1865
    if-nez p7, :cond_32

    .line 1866
    return-void

    .line 1868
    :cond_32
    iget p2, p7, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p2}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 1869
    const/4 v2, 0x0

    move-object v0, p0

    move v3, p6

    move v4, p4

    move v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v1

    .line 1870
    const/4 v2, 0x1

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v1

    .line 1871
    const/4 v2, 0x2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v1

    .line 1872
    const/4 v2, 0x3

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result p2

    .line 1873
    iget p1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float p1, p1

    div-float/2addr p1, p6

    float-to-int p1, p1

    iput p1, p7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1874
    iput p2, p7, Landroid/content/res/Configuration;->screenLayout:I

    .line 1875
    return-void
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .registers 5

    .line 3953
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 3954
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 3955
    iget p3, p0, Landroid/graphics/Rect;->right:I

    sub-int p3, p2, p3

    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 3956
    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 3957
    iget p3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 3958
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 3959
    goto :goto_49

    :cond_17
    const/4 v0, 0x2

    if-ne p1, v0, :cond_31

    .line 3960
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 3961
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p3, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 3962
    sub-int/2addr p3, p1

    iput p3, p0, Landroid/graphics/Rect;->bottom:I

    .line 3963
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 3964
    iget p3, p0, Landroid/graphics/Rect;->left:I

    sub-int p3, p2, p3

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 3965
    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->left:I

    goto :goto_48

    .line 3966
    :cond_31
    const/4 p2, 0x3

    if-ne p1, p2, :cond_48

    .line 3967
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 3968
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 3969
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p3, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 3970
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 3971
    sub-int/2addr p3, p1

    iput p3, p0, Landroid/graphics/Rect;->right:I

    goto :goto_49

    .line 3966
    :cond_48
    :goto_48
    nop

    .line 3973
    :goto_49
    return-void
.end method

.method private createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;
    .registers 5

    .line 5380
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    .line 5382
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 5383
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 5384
    const p1, 0x800028

    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 5386
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 5387
    iget-object p1, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 5388
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 5389
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 5390
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 5391
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput p1, v0, Landroid/view/InputWindowHandle;->portalToDisplayId:I

    .line 5392
    return-object v0
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .registers 8

    .line 2756
    if-eqz p0, :cond_2a

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1d

    const/4 p1, 0x2

    if-eq p0, p1, :cond_19

    const/4 p1, 0x3

    if-eq p0, p1, :cond_d

    goto :goto_2e

    .line 2761
    :cond_d
    const/high16 p0, 0x43870000  # 270.0f

    invoke-virtual {p5, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2762
    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2763
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2764
    goto :goto_2e

    .line 2766
    :cond_19
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2767
    goto :goto_2e

    .line 2769
    :cond_1d
    const/high16 p0, 0x42b40000  # 90.0f

    invoke-virtual {p5, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2770
    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2771
    neg-float p0, p2

    invoke-virtual {p5, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2e

    .line 2758
    :cond_2a
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2759
    nop

    .line 2774
    :goto_2e
    return-void
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .registers 10

    .line 2750
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 2752
    return-void
.end method

.method static deltaRotation(II)I
    .registers 2

    .line 2742
    sub-int/2addr p1, p0

    .line 2743
    if-gez p1, :cond_5

    add-int/lit8 p1, p1, 0x4

    .line 2744
    :cond_5
    return p1
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .registers 6

    .line 3814
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 3817
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 3818
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p2

    .line 3819
    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2d

    .line 3820
    :cond_11
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 3821
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3822
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3823
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 3825
    :cond_2d
    return-void
.end method

.method private hasPinnedStack()Z
    .registers 2

    .line 2018
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isNonDecorDisplayCloseToSquare(III)Z
    .registers 13

    .line 1581
    nop

    .line 1582
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1583
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 1584
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v8

    .line 1586
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p1

    .line 1588
    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 1589
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    return p1
.end method

.method static synthetic lambda$addToGlobalAndConsumeLimit$28([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 7

    .line 5324
    const/4 v0, 0x0

    aget v1, p0, v0

    if-gtz v1, :cond_6

    .line 5325
    return-void

    .line 5327
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 5328
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    .line 5329
    aget p1, p0, v0

    if-le v1, p1, :cond_1a

    .line 5330
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    aget v2, p0, v0

    sub-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 5332
    :cond_1a
    aget p1, p0, v0

    sub-int/2addr p1, v1

    aput p1, p0, v0

    .line 5333
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5334
    return-void
.end method

.method static synthetic lambda$canAddToastWindowForUid$14(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 3004
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static synthetic lambda$canAddToastWindowForUid$15(ILcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 3009
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_16

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez p0, :cond_16

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method static synthetic lambda$dumpWindowAnimators$18(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 6

    .line 3493
    iget-object p3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Window #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3495
    aget p0, p2, p1

    add-int/lit8 p0, p0, 0x1

    aput p0, p2, p1

    .line 3496
    return-void
.end method

.method public static synthetic lambda$fiC19lMy-d_-rvza7hhOSw6bOM8(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$hasSecureWindowOnScreen$21(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 3611
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method static synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 608
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2e

    .line 613
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_18

    .line 614
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_1c

    .line 615
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    .line 616
    :goto_1c
    if-eqz v1, :cond_2d

    .line 617
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v1

    .line 618
    if-eqz v1, :cond_2d

    .line 619
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p0

    .line 620
    if-eqz p0, :cond_2d

    .line 621
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 625
    :cond_2d
    return-void

    .line 609
    :cond_2e
    :goto_2e
    return-void
.end method

.method static synthetic lambda$notifyLocationInParentDisplayChanged$26(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 5131
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V

    .line 5132
    return-void
.end method

.method static synthetic lambda$pointWithinAppWindow$12([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 7

    .line 2452
    const/4 p4, 0x0

    aget v0, p0, p4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 2453
    return-void

    .line 2456
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2457
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput p1, p0, p4

    .line 2458
    return-void

    .line 2460
    :cond_24
    return-void
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$19(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V
    .registers 6

    .line 3506
    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    invoke-interface {p0, p4}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3507
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3508
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3511
    :cond_1d
    return-void
.end method

.method static synthetic lambda$updateRotationUnchecked$9(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    .line 1417
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return p0
.end method

.method static synthetic lambda$updateSystemUiVisibility$22(IILcom/android/server/wm/WindowState;)V
    .registers 6

    .line 3643
    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3644
    xor-int v1, v0, p0

    and-int/2addr p1, v1

    .line 3645
    not-int v1, p1

    and-int/2addr v1, v0

    and-int v2, p0, p1

    or-int/2addr v1, v2

    .line 3646
    if-eq v1, v0, :cond_14

    .line 3647
    iget v2, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 3648
    iput v1, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3650
    :cond_14
    if-ne v1, v0, :cond_1c

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v0, :cond_23

    .line 3651
    :cond_1c
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget p2, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v0, p2, p0, v1, p1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 3656
    :cond_23
    goto :goto_25

    .line 3654
    :catch_24
    move-exception p0

    .line 3657
    :goto_25
    return-void
.end method

.method static logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 5291
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_c

    .line 5292
    return v1

    .line 5294
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5295
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5296
    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_37

    const/4 v3, 0x3

    if-eq v2, v3, :cond_37

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_37

    .line 5300
    invoke-static {p0, v1}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5301
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasSideGestures()Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    .line 5296
    :goto_38
    return v1
.end method

.method private static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z
    .registers 6

    .line 5278
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5281
    const/16 v1, 0x1002

    and-int/2addr p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v3

    .line 5283
    :goto_e
    if-nez p1, :cond_20

    const/16 p1, 0x7db

    if-eq v0, p1, :cond_20

    const/16 p1, 0x7d0

    if-eq v0, p1, :cond_20

    .line 5284
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    .line 5283
    :goto_21
    return v2
.end method

.method private performLayoutNoTrace(ZZ)V
    .registers 8

    .line 3843
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3844
    return-void

    .line 3846
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 3848
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3849
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3856
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 3857
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 3856
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 3860
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 3861
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/DisplayPolicy;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 3863
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 3864
    const/4 v4, 0x0

    if-gez v2, :cond_38

    move v2, v4

    .line 3865
    :cond_38
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 3869
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3870
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 3873
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3877
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    .line 3878
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3883
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3886
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 3887
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3888
    if-eqz p2, :cond_60

    .line 3889
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3892
    :cond_60
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3893
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I
    .registers 14

    .line 1827
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 1828
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1829
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    iput v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1831
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p2

    iput p2, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1833
    const/4 p2, 0x0

    invoke-static {p4, p2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result p2

    .line 1834
    iget p3, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    iget p2, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p3, p2

    const/high16 p2, 0x3f000000  # 0.5f

    add-float/2addr p3, p2

    float-to-int p2, p3

    .line 1835
    if-eqz p1, :cond_31

    if-ge p2, p1, :cond_32

    .line 1836
    :cond_31
    move p1, p2

    .line 1838
    :cond_32
    return p1
.end method

.method private reduceConfigLayout(IIFIII)I
    .registers 16

    .line 1880
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1884
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 1885
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p2

    .line 1888
    nop

    .line 1889
    nop

    .line 1890
    if-ge v7, p2, :cond_20

    .line 1891
    nop

    .line 1892
    nop

    .line 1893
    goto :goto_23

    .line 1890
    :cond_20
    move v8, v7

    move v7, p2

    move p2, v8

    .line 1895
    :goto_23
    int-to-float p2, p2

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 1896
    int-to-float p4, v7

    div-float/2addr p4, p3

    float-to-int p3, p4

    .line 1897
    invoke-static {p1, p2, p3}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p1

    return p1
.end method

.method private resetAnimationBackgroundAnimator()V
    .registers 3

    .line 2551
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2552
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 2551
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2554
    :cond_18
    return-void
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    .line 3366
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_9

    .line 3367
    return-void

    .line 3370
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3371
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 3372
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3373
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/InsetsStateController;->onImeTargetChanged(Lcom/android/server/wm/WindowState;)V

    .line 3374
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 3375
    return-void
.end method

.method private skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 2129
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_10

    .line 2130
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasSplitScreenPrimaryStack()Z

    move-result p1

    if-nez p1, :cond_10

    .line 2131
    const/4 p1, 0x1

    return p1

    .line 2133
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .registers 10

    .line 2255
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 2256
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 2257
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    .line 2258
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_21

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_23

    :cond_21
    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2259
    :goto_23
    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_2e

    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2260
    :goto_2e
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2261
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2263
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v6, v3, :cond_51

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v6, v0, :cond_51

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v6, v7, :cond_51

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2266
    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_51

    :cond_4f
    move v6, v1

    goto :goto_52

    :cond_51
    :goto_51
    move v6, v2

    .line 2268
    :goto_52
    if-eqz v6, :cond_8d

    .line 2270
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v6, v7, :cond_63

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v6, v7, :cond_61

    goto :goto_63

    :cond_61
    move v6, v1

    goto :goto_64

    :cond_63
    :goto_63
    move v6, v2

    .line 2272
    :goto_64
    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v7, v8, :cond_6b

    move v1, v2

    .line 2275
    :cond_6b
    if-eqz v6, :cond_70

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_71

    :cond_70
    move v2, v3

    .line 2276
    :goto_71
    if-eqz v6, :cond_76

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_77

    :cond_76
    move v6, v0

    .line 2277
    :goto_77
    if-eqz v1, :cond_7c

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_7d

    :cond_7c
    move v1, v4

    .line 2275
    :goto_7d
    invoke-virtual {p0, v2, v6, v1}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2280
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2281
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2282
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2283
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2284
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2286
    :cond_8d
    return-void
.end method

.method private updateBounds()V
    .registers 4

    .line 3787
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 3788
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setBounds(Landroid/graphics/Rect;)I

    .line 3789
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_39

    .line 3790
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 3791
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 3792
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3793
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 3797
    :cond_39
    return-void
.end method

.method private updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .registers 16

    .line 1599
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    goto :goto_c

    :cond_a
    move v6, v2

    goto :goto_d

    :cond_c
    :goto_c
    move v6, v1

    .line 1600
    :goto_d
    if-eqz v6, :cond_12

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1601
    :goto_14
    if-eqz v6, :cond_19

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1b

    :cond_19
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1604
    :goto_1b
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v3

    .line 1605
    invoke-virtual {v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    .line 1607
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    move v8, v0

    move v9, v1

    move v11, p1

    move-object v12, v3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    .line 1609
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v5

    .line 1611
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v8, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1612
    iput v0, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1613
    iput v1, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1614
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v8, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1615
    iput v4, v7, Landroid/view/DisplayInfo;->appWidth:I

    .line 1616
    iput v5, v7, Landroid/view/DisplayInfo;->appHeight:I

    .line 1617
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v12, 0x0

    if-eqz v4, :cond_57

    .line 1618
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, v4, v5, v12}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1621
    :cond_57
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_60

    move-object v3, v12

    :cond_60
    iput-object v3, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1622
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1623
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_77

    .line 1624
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x40000000  # 2.0f

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    goto :goto_81

    .line 1626
    :cond_77
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    const v5, -0x40000001  # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1629
    :goto_81
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    move-object v4, p0

    move v7, p1

    move v8, v0

    move v9, v1

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 1636
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    if-eqz p1, :cond_96

    .line 1637
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    goto :goto_97

    :cond_96
    nop

    .line 1638
    :goto_97
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2, v12}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1641
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1643
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_b3

    .line 1644
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 1648
    :cond_b3
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p1
.end method

.method private updateImeParent()V
    .registers 4

    .line 3380
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 3382
    :goto_7
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 3383
    :goto_10
    if-eqz v0, :cond_20

    .line 3384
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3385
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3387
    :cond_20
    return-void
.end method

.method private updateOrientationFromAppTokens(Z)Z
    .registers 4

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v0

    .line 1326
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    if-ne v0, v1, :cond_d

    if-eqz p1, :cond_b

    goto :goto_d

    .line 1331
    :cond_b
    const/4 p1, 0x0

    return p1

    .line 1327
    :cond_d
    :goto_d
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1328
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->setCurrentOrientation(I)V

    .line 1329
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result p1

    return p1
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .registers 4

    .line 3622
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_6

    .line 3623
    const/4 p1, 0x0

    return p1

    .line 3625
    :cond_6
    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    .line 3632
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 3633
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_18

    .line 3634
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 3636
    :cond_18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    .line 3637
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .registers 3

    .line 2420
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "See DisplayChildWindowContainer"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2415
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "See DisplayChildWindowContainer"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 230
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 3

    .line 230
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method adjustForImeIfNeeded()V
    .registers 14

    .line 2665
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2666
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2667
    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v2

    if-nez v2, :cond_1c

    move v6, v1

    goto :goto_1d

    :cond_1c
    move v6, v0

    .line 2668
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 2669
    if-eqz v2, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v0

    .line 2670
    :goto_26
    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    .line 2671
    :goto_30
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .line 2672
    if-eqz v3, :cond_3f

    if-eqz v7, :cond_3f

    .line 2673
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    goto :goto_40

    :cond_3f
    const/4 v7, -0x1

    .line 2674
    :goto_40
    const/4 v8, 0x2

    if-ne v7, v8, :cond_45

    move v8, v1

    goto :goto_46

    :cond_45
    move v8, v0

    .line 2675
    :goto_46
    const/4 v9, 0x4

    if-ne v7, v9, :cond_4b

    move v7, v1

    goto :goto_4c

    :cond_4b
    move v7, v0

    .line 2676
    :goto_4c
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v10

    .line 2677
    if-eqz v6, :cond_5e

    iget-object v11, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2678
    invoke-virtual {v11}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v11

    if-eq v10, v11, :cond_5e

    move v11, v1

    goto :goto_5f

    :cond_5e
    move v11, v0

    .line 2683
    :goto_5f
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v12}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v12

    if-nez v12, :cond_86

    if-eqz v5, :cond_84

    if-eqz v7, :cond_84

    .line 2684
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v12

    if-nez v12, :cond_84

    .line 2685
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v2, v5, :cond_84

    goto :goto_86

    :cond_84
    move v2, v0

    goto :goto_87

    :cond_86
    :goto_86
    move v2, v1

    .line 2693
    :goto_87
    if-eqz v6, :cond_d6

    if-eqz v3, :cond_d6

    if-nez v8, :cond_8f

    if-eqz v7, :cond_d6

    :cond_8f
    if-nez v2, :cond_d6

    .line 2694
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_98
    if-ltz v2, :cond_cc

    .line 2695
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2696
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v5

    if-ne v5, v9, :cond_aa

    move v5, v1

    goto :goto_ab

    :cond_aa
    move v5, v0

    .line 2697
    :goto_ab
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_c6

    if-nez v7, :cond_b5

    if-eqz v5, :cond_c6

    .line 2698
    :cond_b5
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 2699
    if-eqz v7, :cond_c1

    if-eqz v11, :cond_c1

    move v5, v1

    goto :goto_c2

    :cond_c1
    move v5, v0

    :goto_c2
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_c9

    .line 2701
    :cond_c6
    invoke-virtual {v3, v0}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2694
    :goto_c9
    add-int/lit8 v2, v2, -0x1

    goto :goto_98

    .line 2704
    :cond_cc
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v1, v7

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_f7

    .line 2707
    :cond_d6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_dd
    if-ltz v0, :cond_ef

    .line 2708
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2709
    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2707
    add-int/lit8 v0, v0, -0x1

    goto :goto_dd

    .line 2711
    :cond_ef
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    .line 2714
    :goto_f7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0, v6, v10}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    .line 2715
    return-void
.end method

.method amendWindowTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 2537
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2538
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2539
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2537
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2541
    :cond_18
    return-void
.end method

.method animateForIme(FFF)Z
    .registers 12

    .line 2614
    nop

    .line 2616
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_57

    .line 2617
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 2618
    if-eqz v4, :cond_54

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2619
    goto :goto_54

    .line 2622
    :cond_1e
    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_32

    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    if-nez v7, :cond_32

    cmpl-float v6, p3, v6

    if-nez v6, :cond_32

    .line 2623
    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2624
    move v3, v1

    goto :goto_4f

    .line 2626
    :cond_32
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2627
    invoke-virtual {v6, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v7

    iput v7, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 2628
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2629
    invoke-virtual {v6, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v7

    iput v7, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 2630
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v6, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v7, v7, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    invoke-virtual {v4, v6, v7, v2}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v6

    or-int/2addr v3, v6

    .line 2635
    :goto_4f
    if-ltz v5, :cond_54

    .line 2636
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    .line 2616
    :cond_54
    :goto_54
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2640
    :cond_57
    return v3
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 6

    .line 4803
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    .line 4804
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_f

    .line 4806
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 4809
    :goto_f
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 4811
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4812
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4813
    return-void
.end method

.method applyRotationLocked(II)V
    .registers 14

    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayRotation;->setRotation(I)V

    .line 1491
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isRotatingSeamlessly()Z

    move-result v0

    .line 1492
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1493
    move-object v2, v1

    goto :goto_1a

    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 1499
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    .line 1503
    if-eqz v2, :cond_4c

    .line 1504
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const-wide/16 v6, 0x2710

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1506
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1505
    move-object v3, v2

    move v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1508
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1512
    :cond_4c
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$3g7y7M5XrDR3cz8tOp9f3pwWbyQ;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$3g7y7M5XrDR3cz8tOp9f3pwWbyQ;-><init>(Lcom/android/server/wm/DisplayContent;IIZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1517
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1518
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 1520
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$-XeeexVnAosqA0zfHVCT_Txqwl8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$-XeeexVnAosqA0zfHVCT_Txqwl8;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1530
    if-eqz v0, :cond_78

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x36

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, p0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1535
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_81
    if-ltz v0, :cond_9d

    .line 1536
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 1537
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 1538
    iget v1, p1, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v3, :cond_9a

    .line 1540
    :try_start_93
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {p1, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_98} :catch_99

    .line 1543
    goto :goto_9a

    .line 1541
    :catch_99
    move-exception p1

    .line 1535
    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, -0x1

    goto :goto_81

    .line 1549
    :cond_9d
    if-nez v2, :cond_ac

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz p1, :cond_ac

    .line 1550
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1552
    :cond_ac
    return-void
.end method

.method applySurfaceChangesTransaction(Z)V
    .registers 10

    .line 3698
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 3700
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 3702
    const/4 v0, 0x0

    move v1, v0

    .line 3704
    :cond_b
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3705
    const/4 v3, 0x6

    const-string v4, "WindowManager"

    const-wide/16 v5, 0x20

    if-le v1, v3, :cond_1d

    .line 3706
    const-string v0, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 3708
    goto :goto_7b

    .line 3714
    :cond_1d
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-eqz v3, :cond_28

    .line 3715
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 3718
    :cond_28
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3a

    .line 3720
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3721
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3722
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 3726
    :cond_3a
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_42

    .line 3727
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3731
    :cond_42
    if-ge v1, v7, :cond_4d

    .line 3732
    if-ne v1, v2, :cond_48

    move v3, v2

    goto :goto_49

    :cond_48
    move v3, v0

    :goto_49
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_52

    .line 3734
    :cond_4d
    const-string v3, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :goto_52
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3740
    const-string v3, "applyPostLayoutPolicy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3742
    :try_start_59
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 3743
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3744
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_da

    .line 3746
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3747
    nop

    .line 3750
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 3751
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v3, :cond_b

    .line 3753
    :goto_7b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 3755
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    .line 3757
    const-string p1, "applyWindowSurfaceChanges"

    invoke-static {v5, v6, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3759
    :try_start_87
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_d5

    .line 3761
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3762
    nop

    .line 3763
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 3765
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 3766
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, p1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, p1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 3772
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result p1

    .line 3773
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq p1, v0, :cond_c0

    .line 3774
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 3775
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3778
    :cond_c0
    :goto_c0
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d4

    .line 3779
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    .line 3782
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    .line 3783
    goto :goto_c0

    .line 3784
    :cond_d4
    return-void

    .line 3761
    :catchall_d5
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 3746
    :catchall_da
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 4833
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4834
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4835
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4837
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4838
    nop

    .line 4860
    if-eqz v0, :cond_41

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4861
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->hasStartingWindow()Z

    move-result v3

    if-nez v3, :cond_41

    .line 4862
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isAppAnimating()Z

    move-result v3

    if-nez v3, :cond_41

    .line 4863
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 4864
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v3, p1, v0, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4868
    goto :goto_42

    .line 4873
    :cond_41
    move v1, v2

    :goto_42
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4874
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4875
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 4876
    if-ne v1, v2, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    .line 4875
    :goto_54
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 4877
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4878
    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 4890
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4891
    return-void
.end method

.method assignStackOrdering()V
    .registers 3

    .line 4922
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 4923
    return-void
.end method

.method assignWindowLayers(Z)V
    .registers 5

    .line 3175
    const-wide/16 v0, 0x20

    const-string v2, "assignWindowLayers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3177
    if-eqz p1, :cond_13

    .line 3178
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3185
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3186
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3187
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 4

    .line 2656
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 2657
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2658
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2659
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 2656
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2662
    :cond_24
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4

    .line 1652
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p1
.end method

.method calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5189
    move-object/from16 v10, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Region;->setEmpty()V

    .line 5190
    if-eqz p2, :cond_a

    .line 5191
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->setEmpty()V

    .line 5193
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v11

    .line 5194
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12, v0, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 5196
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 5197
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    .line 5198
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 5199
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 5201
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v13

    .line 5202
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v14

    .line 5203
    const/4 v0, 0x2

    new-array v15, v0, [I

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    aput v0, v15, v12

    const/4 v9, 0x1

    aput v0, v15, v9

    .line 5208
    new-instance v6, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object v12, v6

    move-object/from16 v6, p1

    move-object/from16 v16, v15

    move v15, v9

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual {v10, v12, v15}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5266
    invoke-virtual {v14}, Landroid/graphics/Region;->recycle()V

    .line 5267
    invoke-virtual {v13}, Landroid/graphics/Region;->recycle()V

    .line 5268
    invoke-virtual {v11}, Landroid/graphics/Region;->recycle()V

    .line 5269
    const/4 v0, 0x0

    aget v1, v16, v0

    iget v2, v10, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-lt v1, v2, :cond_77

    aget v1, v16, v15

    if-ge v1, v2, :cond_76

    goto :goto_77

    :cond_76
    move v15, v0

    :cond_77
    :goto_77
    return v15
.end method

.method canAddToastWindowForUid(I)Z
    .registers 4

    .line 3003
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3005
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 3006
    return v1

    .line 3008
    :cond_d
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 3011
    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 2598
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    .line 2600
    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v0, :cond_f

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2602
    const/4 v0, 0x0

    return v0

    .line 2604
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method checkWaitingForWindows()Z
    .registers 5

    .line 3516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 3517
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 3518
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 3519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 3521
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3540
    if-eqz v2, :cond_16

    .line 3542
    return v1

    .line 3547
    :cond_16
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3549
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v2, :cond_40

    move v2, v1

    goto :goto_41

    :cond_40
    move v2, v0

    .line 3562
    :goto_41
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    if-nez v3, :cond_4c

    .line 3563
    return v1

    .line 3568
    :cond_4c
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v3, :cond_61

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v3, :cond_5a

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    if-eqz v3, :cond_60

    :cond_5a
    if-eqz v2, :cond_61

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    if-nez v2, :cond_61

    .line 3570
    :cond_60
    return v1

    .line 3573
    :cond_61
    return v0
.end method

.method clearImeAdjustAnimation()Z
    .registers 6

    .line 2644
    nop

    .line 2645
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_23

    .line 2646
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2647
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2648
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2649
    move v2, v1

    .line 2645
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2652
    :cond_23
    return v2
.end method

.method computeImeParent()Landroid/view/SurfaceControl;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3398
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3399
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3402
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3403
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 3407
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 7

    .line 3260
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 3262
    if-eqz p1, :cond_c

    .line 3265
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3267
    :cond_c
    return-object v1

    .line 3270
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3271
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3273
    return-object v0

    .line 3279
    :cond_16
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 3280
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3286
    if-eqz v2, :cond_32

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_32

    .line 3287
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3288
    if-eqz v3, :cond_32

    .line 3289
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 3290
    if-eqz v3, :cond_32

    .line 3291
    move-object v2, v3

    .line 3301
    :cond_32
    if-eqz v0, :cond_45

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3302
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3305
    return-object v0

    .line 3311
    :cond_45
    if-nez v2, :cond_4f

    .line 3312
    if-eqz p1, :cond_4e

    .line 3316
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3319
    :cond_4e
    return-object v1

    .line 3322
    :cond_4f
    if-eqz p1, :cond_77

    .line 3323
    if-nez v0, :cond_55

    move-object p1, v1

    goto :goto_57

    :cond_55
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3324
    :goto_57
    if-eqz p1, :cond_73

    .line 3329
    nop

    .line 3330
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 3331
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3334
    :cond_64
    if-eqz v1, :cond_73

    .line 3338
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 3341
    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3342
    return-object v1

    .line 3349
    :cond_73
    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3352
    :cond_77
    return-object v2
.end method

.method computeImeTargetIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .line 3360
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_c

    .line 3361
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3363
    :cond_c
    return-void
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 18

    .line 1680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1681
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 1682
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1684
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1685
    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1686
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-gt v3, v4, :cond_20

    move v5, v12

    goto :goto_21

    :cond_20
    move v5, v11

    :goto_21
    iput v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1687
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 1688
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 1689
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v6, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1691
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v5, Landroid/util/DisplayMetrics;->density:F

    .line 1692
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v8, v2, Landroid/view/DisplayInfo;->rotation:I

    iget v9, v1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v10, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1693
    move v6, v3

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v13

    float-to-int v5, v5

    iput v5, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1695
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v8, v2, Landroid/view/DisplayInfo;->rotation:I

    iget v9, v1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v10, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1696
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v13

    float-to-int v5, v5

    iput v5, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1699
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v6, v2, Landroid/view/DisplayInfo;->rotation:I

    iget-object v9, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move v7, v3

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 1701
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1702
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 1704
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v8, v2, Landroid/view/DisplayInfo;->appWidth:I

    add-int/2addr v8, v5

    iget v9, v2, Landroid/view/DisplayInfo;->appHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 1707
    iget v5, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x3

    if-eq v5, v12, :cond_90

    iget v5, v2, Landroid/view/DisplayInfo;->rotation:I

    if-ne v5, v6, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v5, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    move v5, v12

    .line 1710
    :goto_91
    iget v8, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, -0x301

    .line 1711
    iget v9, v2, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_9e

    .line 1712
    const/16 v9, 0x200

    goto :goto_a0

    .line 1713
    :cond_9e
    const/16 v9, 0x100

    :goto_a0
    or-int/2addr v8, v9

    iput v8, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 1715
    iget v8, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1716
    iget v8, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1717
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v0, v5, v8, v3, v4}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIII)I

    move-result v3

    iput v3, v1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1719
    iget v3, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1721
    nop

    .line 1722
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v3

    if-eqz v3, :cond_d3

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 1723
    const/16 v3, 0x8

    goto :goto_d4

    .line 1724
    :cond_d3
    const/4 v3, 0x4

    .line 1725
    :goto_d4
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v4

    if-eqz v4, :cond_e4

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 1726
    move v4, v11

    goto :goto_e5

    .line 1727
    :cond_e4
    move v4, v12

    :goto_e5
    or-int/2addr v3, v4

    iput v3, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 1731
    iput v12, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1732
    iput v12, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1733
    iput v12, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1735
    nop

    .line 1736
    nop

    .line 1737
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v3

    .line 1738
    if-eqz v3, :cond_fc

    array-length v4, v3

    goto :goto_fd

    :cond_fc
    const/4 v4, 0x0

    .line 1739
    :goto_fd
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_100
    if-ge v5, v4, :cond_167

    .line 1740
    aget-object v10, v3, v5

    .line 1742
    invoke-virtual {v10}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v13

    if-eqz v13, :cond_10b

    .line 1743
    goto :goto_164

    .line 1748
    :cond_10b
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v10}, Landroid/view/InputDevice;->getId()I

    move-result v14

    .line 1749
    iget v15, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v7, 0x5

    if-ne v15, v7, :cond_11a

    const/4 v7, 0x0

    goto :goto_11c

    :cond_11a
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1748
    :goto_11c
    invoke-virtual {v13, v14, v7}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v7

    if-nez v7, :cond_123

    .line 1750
    goto :goto_164

    .line 1753
    :cond_123
    invoke-virtual {v10}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    .line 1754
    invoke-virtual {v10}, Landroid/view/InputDevice;->isExternal()Z

    move-result v13

    if-eqz v13, :cond_12f

    .line 1755
    move v13, v11

    goto :goto_130

    :cond_12f
    move v13, v12

    .line 1757
    :goto_130
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v14, :cond_13f

    .line 1758
    and-int/lit16 v14, v7, 0x1002

    const/16 v15, 0x1002

    if-ne v14, v15, :cond_141

    .line 1759
    iput v6, v1, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_141

    .line 1762
    :cond_13f
    iput v12, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1765
    :cond_141
    :goto_141
    const v14, 0x10004

    and-int v15, v7, v14

    if-ne v15, v14, :cond_14c

    .line 1766
    iput v6, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1767
    or-int/2addr v8, v13

    goto :goto_159

    .line 1768
    :cond_14c
    and-int/lit16 v7, v7, 0x201

    const/16 v14, 0x201

    if-ne v7, v14, :cond_159

    iget v7, v1, Landroid/content/res/Configuration;->navigation:I

    if-ne v7, v12, :cond_159

    .line 1770
    iput v11, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1771
    or-int/2addr v8, v13

    .line 1774
    :cond_159
    :goto_159
    invoke-virtual {v10}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v7

    if-ne v7, v11, :cond_164

    .line 1775
    iput v11, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1776
    or-int v7, v9, v13

    move v9, v7

    .line 1739
    :cond_164
    :goto_164
    add-int/lit8 v5, v5, 0x1

    goto :goto_100

    .line 1780
    :cond_167
    iget v2, v1, Landroid/content/res/Configuration;->navigation:I

    if-ne v2, v12, :cond_175

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v2, :cond_175

    .line 1781
    iput v11, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1782
    or-int/lit8 v8, v8, 0x1

    .line 1787
    :cond_175
    iget v2, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v12, :cond_17b

    move v2, v12

    goto :goto_17c

    :cond_17b
    const/4 v2, 0x0

    .line 1788
    :goto_17c
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v2, v3, :cond_196

    .line 1789
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 1790
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1791
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1794
    :cond_196
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1797
    iput v12, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1798
    iput v12, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1799
    iput v12, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1800
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1, v9, v8}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 1801
    return-void
.end method

.method configureDisplayPolicy()V
    .registers 6

    .line 1555
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1556
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1559
    if-le v0, v1, :cond_a

    .line 1560
    nop

    .line 1561
    move v3, v0

    move v2, v1

    goto :goto_d

    .line 1563
    :cond_a
    nop

    .line 1564
    move v2, v0

    move v3, v1

    .line 1567
    :goto_d
    mul-int/lit16 v2, v2, 0xa0

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    div-int/2addr v2, v4

    .line 1568
    mul-int/lit16 v3, v3, 0xa0

    div-int/2addr v3, v4

    .line 1570
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1571
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/wm/DisplayRotation;->configure(IIII)V

    .line 1573
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 1574
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 1573
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1577
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wm/DisplayContent;->isNonDecorDisplayCloseToSquare(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    .line 1578
    return-void
.end method

.method continueUpdateImeTarget()V
    .registers 3

    .line 4937
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_5

    .line 4938
    return-void

    .line 4941
    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 4942
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_10

    .line 4943
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 4945
    :cond_10
    return-void
.end method

.method deferUpdateImeTarget()V
    .registers 2

    .line 4929
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 4930
    return-void
.end method

.method destroyLeakedSurfaces()Z
    .registers 3

    .line 3209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3210
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3234
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11

    .line 2833
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2834
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display: mDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2836
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2837
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2838
    const-string v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_59

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_59

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_76

    .line 2842
    :cond_59
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2843
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2844
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2846
    :cond_76
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_7f

    .line 2847
    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    :cond_7f
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2850
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2851
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2852
    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2853
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2854
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2855
    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2856
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2857
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2858
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "deferred="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLayoutNeeded="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTouchExcludeRegion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2864
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLayoutSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2865
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2866
    const-string v0, "mDeferredRotationPauseCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2868
    const-string v0, "  mCurrentFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2869
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v2, :cond_147

    .line 2870
    const-string v0, "  mLastFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2872
    :cond_147
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "    "

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-lez v0, :cond_18c

    .line 2873
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2874
    const-string v0, "  Windows losing focus:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_163
    if-ltz v0, :cond_18c

    .line 2876
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 2877
    const-string v6, "  Losing #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 2878
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2879
    if-eqz p3, :cond_186

    .line 2880
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_189

    .line 2883
    :cond_186
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2875
    :goto_189
    add-int/lit8 v0, v0, -0x1

    goto :goto_163

    .line 2887
    :cond_18c
    const-string v0, "  mFocusedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2888
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    if-eqz v0, :cond_1a8

    .line 2889
    const-string v0, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2890
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    :cond_1a8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2894
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2896
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2897
    const-string v0, "mSystemGestureExclusion="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2898
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_1c6

    .line 2899
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1cb

    .line 2901
    :cond_1c6
    const-string v0, "<no lstnrs>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    :goto_1cb
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Application tokens in top down Z order:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_1e9
    if-ltz v0, :cond_208

    .line 2907
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    .line 2908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3}, Lcom/android/server/wm/TaskStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2906
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e9

    .line 2911
    :cond_208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2912
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_245

    .line 2913
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2914
    const-string v0, "  Exiting tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_222
    if-ltz v0, :cond_245

    .line 2916
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 2917
    const-string v5, "  Exiting #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2918
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2919
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 2920
    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2915
    add-int/lit8 v0, v0, -0x1

    goto :goto_222

    .line 2924
    :cond_245
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object p3

    .line 2928
    if-eqz p3, :cond_269

    .line 2929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "homeStack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    :cond_269
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object p3

    .line 2932
    if-eqz p3, :cond_28a

    .line 2933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pinnedStack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    :cond_28a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object p3

    .line 2936
    if-eqz p3, :cond_2ab

    .line 2937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "splitScreenPrimaryStack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    :cond_2ab
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2941
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2942
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2943
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2945
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2946
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2947
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2948
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2949
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2950
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2951
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2952
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p3, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2953
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2954
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2955
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 6

    .line 3457
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3458
    return-void

    .line 3460
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3462
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_4e

    .line 3463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 3464
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3466
    if-eqz p2, :cond_4a

    .line 3467
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 3468
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_4d

    .line 3470
    :cond_4a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3472
    :goto_4d
    goto :goto_29

    .line 3474
    :cond_4e
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9f

    .line 3475
    :cond_66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3476
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_7b

    .line 3477
    const-string p2, "  mOpeningApps="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3479
    :cond_7b
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_8d

    .line 3480
    const-string p2, "  mClosingApps="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3482
    :cond_8d
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_9f

    .line 3483
    const-string p2, "  mChangingApps="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3487
    :cond_9f
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p2, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3488
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 3491
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3492
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3497
    return-void
.end method

.method executeAppTransition()V
    .registers 2

    .line 4989
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4994
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 4995
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 4997
    :cond_14
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 2099
    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 3038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3040
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3042
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_e

    .line 3044
    return-object v0

    .line 3046
    :cond_e
    return-object v1
.end method

.method findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .registers 3

    .line 3033
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_c

    .line 3034
    :cond_a
    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 3033
    :goto_10
    return-object p1
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .registers 8

    .line 2472
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 2473
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    .line 2474
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    const/4 v2, 0x0

    if-ltz v1, :cond_3e

    .line 2475
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2476
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 2477
    return-object v2

    .line 2480
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3, p1, p2, v0, v2}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    .line 2481
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v2, :cond_3b

    .line 2482
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object p1

    .line 2474
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 2485
    :cond_3e
    return-object v2
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2168
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    return p1
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2140
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_26

    .line 2141
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_b
    if-ltz v2, :cond_48

    .line 2142
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2143
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2144
    goto :goto_23

    .line 2147
    :cond_1c
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2148
    return v1

    .line 2141
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 2152
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 2153
    move v3, v0

    :goto_2d
    if-ge v3, v2, :cond_48

    .line 2154
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2155
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2156
    goto :goto_45

    .line 2159
    :cond_3e
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2160
    return v1

    .line 2153
    :cond_45
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 2164
    :cond_48
    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 2

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object p1

    .line 1010
    if-nez p1, :cond_8

    .line 1011
    const/4 p1, 0x0

    return-object p1

    .line 1013
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    return-object p1
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 2

    .line 1105
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .line 997
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    .line 1117
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .registers 2

    .line 1122
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .registers 2

    .line 1971
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 1990
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 2

    .line 4955
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .registers 2

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method getLastHasContent()Z
    .registers 2

    .line 4962
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return v0
.end method

.method getLastOrientation()I
    .registers 2

    .line 1158
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .registers 2

    .line 1162
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLocationInParentDisplay()Landroid/graphics/Point;
    .registers 8

    .line 5112
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5113
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_50

    .line 5116
    move-object v1, p0

    .line 5118
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5119
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 5120
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000  # 0.5f

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 5121
    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 5122
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    add-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 5123
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5124
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_a

    .line 5126
    :cond_50
    return-object v0
.end method

.method getLocationInParentWindow()Landroid/graphics/Point;
    .registers 2

    .line 5108
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 5411
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 5412
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 5414
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNaturalOrientation()I
    .registers 3

    .line 3829
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ge v0, v1, :cond_8

    .line 3830
    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    .line 3829
    :goto_9
    return v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 6

    .line 3411
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 3412
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne p1, v2, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 3416
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3419
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 3439
    if-eqz p1, :cond_25

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne p1, v2, :cond_25

    move v1, v2

    :cond_25
    return v1
.end method

.method getOrientation()I
    .registers 4

    .line 2173
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2175
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    if-eqz v1, :cond_a

    .line 2176
    const/4 v0, 0x2

    return v0

    .line 2179
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_1f

    .line 2180
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 2187
    return v1

    .line 2188
    :cond_16
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2196
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0

    .line 2199
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getOrientation()I

    move-result v0

    .line 2200
    const/4 v1, -0x2

    if-eq v0, v1, :cond_29

    .line 2201
    return v0

    .line 2206
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v0

    return v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 5082
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 2014
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .registers 2

    .line 1975
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getPreferredOptionsPanelGravity()I
    .registers 10

    .line 1940
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 1941
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const v3, 0x800053

    const/16 v4, 0x55

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x51

    if-ge v1, v2, :cond_1e

    .line 1943
    if-eq v0, v7, :cond_1d

    if-eq v0, v6, :cond_1c

    if-eq v0, v5, :cond_1b

    .line 1946
    return v8

    .line 1952
    :cond_1b
    return v3

    .line 1950
    :cond_1c
    return v8

    .line 1948
    :cond_1d
    return v4

    .line 1957
    :cond_1e
    if-eq v0, v7, :cond_27

    if-eq v0, v6, :cond_26

    if-eq v0, v5, :cond_25

    .line 1960
    return v4

    .line 1966
    :cond_25
    return v8

    .line 1964
    :cond_26
    return v3

    .line 1962
    :cond_27
    return v8
.end method

.method getRotation()I
    .registers 2

    .line 1148
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 4769
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 1997
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1998
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 2010
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 2386
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2387
    return-void
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 4

    .line 2034
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object p1

    return-object p1
.end method

.method getStacks()Lcom/android/server/wm/WindowList;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wm/WindowList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2044
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 2026
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object p1

    return-object p1
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 4

    .line 2974
    float-to-int p1, p1

    .line 2975
    float-to-int p2, p2

    .line 2976
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 2996
    return-object p1
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowCornerRadius()F
    .registers 2

    .line 1001
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    return v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 3

    .line 1005
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowToken;

    return-object p1
.end method

.method getWindowingLayer()Landroid/view/SurfaceControl;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5137
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransition()V
    .registers 5

    .line 5003
    nop

    .line 5005
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 5007
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_20

    .line 5008
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5009
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5007
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 5011
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5013
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    .line 5015
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 5017
    nop

    .line 5021
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5022
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 5025
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 5027
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5028
    return-void
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 1259
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v0

    return v0
.end method

.method hasAccess(I)Z
    .registers 3

    .line 1982
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result p1

    return p1
.end method

.method hasSecureWindowOnScreen()Z
    .registers 2

    .line 3610
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3612
    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .registers 2

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method initializeDisplayBaseInfo()V
    .registers 4

    .line 2232
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2233
    if-eqz v0, :cond_13

    .line 2235
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2236
    if-eqz v0, :cond_13

    .line 2237
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 2241
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2243
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2244
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2245
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2246
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2247
    return-void
.end method

.method initializeDisplayOverrideConfiguration()V
    .registers 3

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    if-eqz v0, :cond_b

    .line 1218
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1220
    :cond_b
    return-void
.end method

.method isInputMethodClientFocus(II)Z
    .registers 6

    .line 3589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3590
    if-nez v1, :cond_8

    .line 3591
    return v0

    .line 3606
    :cond_8
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    if-ne v2, p1, :cond_15

    iget-object p1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-ne p1, p2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method isLayoutNeeded()Z
    .registers 2

    .line 3453
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isNextTransitionForward()Z
    .registers 3

    .line 5032
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 5033
    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method isPrivate()Z
    .registers 2

    .line 1986
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isReady()Z
    .registers 2

    .line 993
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRemovalDeferred()Z
    .registers 2

    .line 2609
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .registers 2

    .line 2968
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 2969
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method isUntrustedVirtualDisplay()Z
    .registers 3

    .line 5053
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5054
    invoke-virtual {v0}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 5053
    :goto_16
    return v0
.end method

.method isVisible()Z
    .registers 2

    .line 2104
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$applyRotationLocked$10$DisplayContent(IIZLcom/android/server/wm/WindowState;)V
    .registers 6

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 1515
    return-void
.end method

.method public synthetic lambda$applyRotationLocked$11$DisplayContent(ZLcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1521
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 1523
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1524
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1525
    iput v0, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1527
    :cond_13
    iput-boolean v1, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 1528
    return-void
.end method

.method public synthetic lambda$calculateSystemGestureExclusion$27$DisplayContent(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 24

    .line 5209
    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v2

    if-nez v2, :cond_ce

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 5210
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_ce

    .line 5211
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_ce

    .line 5217
    :cond_29
    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 5218
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5220
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 5221
    invoke-virtual {v8, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_59

    .line 5223
    :cond_3b
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 5226
    iget v2, v11, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v8, v2}, Landroid/graphics/Region;->scale(F)V

    .line 5227
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 5228
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Region;->translate(II)V

    .line 5231
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5235
    :goto_59
    move-object v2, p0

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    invoke-static {v11, v2}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_9d

    .line 5238
    aget v5, p4, v12

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p9

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v2

    aput v2, p4, v12

    .line 5242
    const/4 v12, 0x1

    aget v5, p4, v12

    const/4 v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p7

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v2

    aput v2, p4, v12

    .line 5246
    invoke-static/range {p3 .. p3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v2

    .line 5247
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5248
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v13, p7

    invoke-virtual {v2, v13, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5249
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5250
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 5251
    goto :goto_c1

    .line 5252
    :cond_9d
    move-object/from16 v4, p6

    move-object/from16 v13, p7

    invoke-static {v11, v12}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z

    move-result v2

    .line 5253
    if-eqz v2, :cond_bc

    .line 5254
    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p9

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 5256
    const/4 v7, 0x1

    move-object/from16 v4, p7

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 5259
    :cond_bc
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v8, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5261
    :goto_c1
    if-eqz v10, :cond_c8

    .line 5262
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v8, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5264
    :cond_c8
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5265
    return-void

    .line 5212
    :cond_ce
    :goto_ce
    return-void
.end method

.method public synthetic lambda$checkWaitingForWindows$20$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 3522
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3523
    return v1

    .line 3525
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3526
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e5

    if-ne v0, v2, :cond_23

    .line 3527
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    goto :goto_52

    .line 3528
    :cond_23
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_50

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_32

    goto :goto_50

    .line 3531
    :cond_32
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_3d

    .line 3532
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_52

    .line 3533
    :cond_3d
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_52

    .line 3534
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_52

    .line 3530
    :cond_50
    :goto_50
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 3537
    :cond_52
    :goto_52
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$destroyLeakedSurfaces$16$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 8

    .line 3211
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3212
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_7

    .line 3213
    return-void

    .line 3215
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " token="

    const-string v3, " surface="

    const-string v4, "WindowManager"

    if-nez v1, :cond_62

    .line 3216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3222
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3223
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_97

    .line 3224
    :cond_62
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_97

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 3225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3230
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3232
    :cond_97
    :goto_97
    return-void
.end method

.method public synthetic lambda$getNeedsMenu$17$DisplayContent(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 3420
    if-ne p3, p1, :cond_4

    .line 3422
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3424
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 3425
    return v0

    .line 3428
    :cond_a
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    .line 3429
    return v1

    .line 3433
    :cond_12
    if-ne p3, p2, :cond_15

    .line 3434
    return v1

    .line 3436
    :cond_15
    return v0
.end method

.method public synthetic lambda$getTouchableWinAtPointLocked$13$DisplayContent(IILcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 2977
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2978
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2979
    return v2

    .line 2981
    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    .line 2982
    return v2

    .line 2985
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 2986
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2987
    return v2

    .line 2990
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2992
    and-int/lit8 p3, v0, 0x28

    .line 2993
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-nez p1, :cond_30

    if-nez p3, :cond_31

    :cond_30
    const/4 v2, 0x1

    :cond_31
    return v2
.end method

.method public synthetic lambda$new$0$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 591
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 592
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 593
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 594
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 595
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 596
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 604
    :cond_1d
    return-void
.end method

.method public synthetic lambda$new$2$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 629
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 630
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_27

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_27

    .line 631
    const/16 v0, 0x34

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 632
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 636
    :cond_27
    return-void
.end method

.method public synthetic lambda$new$3$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 643
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 644
    return v2

    .line 647
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 650
    if-eqz v1, :cond_17

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_16

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v3, :cond_17

    .line 653
    :cond_16
    return v2

    .line 656
    :cond_17
    const/4 v2, 0x1

    if-nez v0, :cond_1d

    .line 659
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 660
    return v2

    .line 663
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v3

    if-nez v3, :cond_26

    .line 667
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 668
    return v2

    .line 673
    :cond_26
    if-eqz v1, :cond_39

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_39

    .line 674
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-lez v0, :cond_39

    .line 678
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 679
    return v2

    .line 684
    :cond_39
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 685
    return v2
.end method

.method public synthetic lambda$new$4$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 692
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 712
    :goto_19
    if-eqz v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_5e

    :cond_23
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v0, :cond_5e

    .line 713
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_2e

    .line 714
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 716
    :cond_2e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v0, v3, :cond_38

    .line 719
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 721
    :cond_38
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 722
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 723
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v0

    .line 724
    xor-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 725
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 729
    if-eqz v0, :cond_55

    .line 730
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 733
    :cond_55
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_5e

    .line 734
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 741
    :cond_5e
    return-void
.end method

.method public synthetic lambda$new$5$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 744
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_44

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 752
    return-void

    .line 754
    :cond_13
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_25

    :cond_1d
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_50

    .line 756
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_2c

    .line 758
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 760
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 761
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 763
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    goto :goto_50

    .line 768
    :cond_44
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7e7

    if-ne p1, v0, :cond_50

    .line 771
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 773
    :cond_50
    :goto_50
    return-void
.end method

.method public synthetic lambda$new$6$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 778
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$new$7$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 782
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic lambda$new$8$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 10

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 787
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 789
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 792
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 793
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v3, :cond_94

    .line 794
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 796
    if-eqz v3, :cond_32

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 799
    iput-object p1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 800
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v2, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 803
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 804
    invoke-virtual {v1, p1, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v1

    or-int/2addr v1, v5

    iput-boolean v1, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 808
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_94

    if-eqz v3, :cond_94

    .line 809
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 810
    const/16 v3, 0x7d8

    if-eq v1, v3, :cond_5f

    const/16 v3, 0x7da

    if-eq v1, v3, :cond_5f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_63

    .line 812
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 814
    :cond_63
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v1, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7c

    .line 816
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 819
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v1

    .line 820
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 821
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v3, :cond_94

    if-eqz v1, :cond_94

    .line 823
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v1, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 828
    :cond_94
    if-eqz v0, :cond_a9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 834
    :cond_a9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 836
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 839
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 842
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_dd

    .line 844
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v0

    .line 845
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_dd

    if-eqz v0, :cond_dd

    .line 846
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_cc

    .line 850
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 857
    :cond_cc
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_dd

    .line 860
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 861
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 871
    :cond_dd
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 872
    if-eqz v0, :cond_f7

    .line 873
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 874
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 875
    if-eqz v1, :cond_f7

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    .line 876
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_f7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_117

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 884
    :cond_117
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    .line 885
    return-void
.end method

.method public synthetic lambda$onSeamlessRotationTimeout$25$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 3980
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_5

    .line 3981
    return-void

    .line 3983
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3984
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3985
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    .line 3986
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 3987
    return-void
.end method

.method public synthetic lambda$onWindowFreezeTimeout$23$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 3672
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3673
    return-void

    .line 3675
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 3676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing orientation change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    return-void
.end method

.method public synthetic lambda$waitForAllWindowsDrawn$24$DisplayContent(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 3686
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    .line 3687
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_12

    if-eqz p1, :cond_21

    .line 3688
    :cond_12
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3690
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 3691
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3693
    :cond_21
    return-void
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .registers 4

    .line 3193
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3194
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3196
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3198
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3201
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3202
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3204
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 4774
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 4775
    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4776
    if-nez p1, :cond_18

    .line 4777
    return-object v0

    .line 4780
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4781
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 4780
    return-object p1
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 4791
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 4792
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4791
    return-object v0
.end method

.method makeSurface(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 4763
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4764
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 4763
    return-object p1
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 7

    .line 2398
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2399
    const-string v1, "Trying to move stackId="

    if-eqz v0, :cond_3c

    .line 2403
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v2, v3, :cond_1b

    .line 2408
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    .line 2409
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 2410
    return-void

    .line 2404
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to its current displayId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2400
    :cond_3c
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not currently attached to any display"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method notifyLocationInParentDisplayChanged()V
    .registers 3

    .line 5130
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5133
    return-void
.end method

.method okToAnimate()Z
    .registers 2

    .line 4030
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4031
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4030
    :goto_17
    return v0
.end method

.method okToDisplay()Z
    .registers 5

    .line 4022
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 4023
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4024
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 4023
    :goto_1e
    return v1

    .line 4026
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 2109
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 2110
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2111
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2058
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2059
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz p1, :cond_10

    .line 2060
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2063
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_3e

    .line 2064
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x67b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2066
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x67c

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2064
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2072
    :cond_3e
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    if-eqz p1, :cond_51

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result p1

    if-nez p1, :cond_51

    .line 2073
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 2075
    :cond_51
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 7

    .line 1230
    nop

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1230
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object p1

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v0

    .line 1236
    if-nez p1, :cond_15

    .line 1237
    return v0

    .line 1240
    :cond_15
    if-eqz v0, :cond_38

    instance-of v2, p2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_38

    .line 1241
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 1242
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 1242
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    move-result p1

    .line 1244
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1245
    if-nez p1, :cond_37

    .line 1246
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1248
    :cond_37
    goto :goto_44

    .line 1251
    :cond_38
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 1251
    invoke-virtual {p2, p1, v2, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    .line 1254
    :goto_44
    return v0
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 4017
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4018
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4019
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 2221
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2222
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    .line 2223
    return-void
.end method

.method onParentChanged()V
    .registers 1

    .line 4827
    return-void
.end method

.method onSeamlessRotationTimeout()V
    .registers 3

    .line 3977
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3979
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3989
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    .line 3990
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3992
    :cond_17
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .registers 3

    .line 2052
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 2053
    return-void
.end method

.method onWindowFreezeTimeout()V
    .registers 3

    .line 3668
    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 3671
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3681
    return-void
.end method

.method pauseRotationLocked()V
    .registers 2

    .line 1179
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    .line 1180
    return-void
.end method

.method performLayout(ZZ)V
    .registers 6

    .line 3834
    const-wide/16 v0, 0x20

    const-string v2, "performLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3836
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 3838
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3839
    nop

    .line 3840
    return-void

    .line 3838
    :catchall_f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method pointWithinAppWindow(II)Z
    .registers 7

    .line 2450
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2451
    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;

    invoke-direct {v3, v1, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;-><init>([III)V

    const-class p1, Lcom/android/server/wm/WindowState;

    .line 2460
    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 2451
    invoke-static {v3, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 2461
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2462
    check-cast p1, Lcom/android/internal/util/function/pooled/PooledConsumer;

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2463
    aget p1, v1, v2

    if-gt v0, p1, :cond_2b

    aget p1, v1, v2

    const/16 p2, 0x63

    if-gt p1, p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .registers 4

    .line 2438
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2439
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 230
    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/TaskStack;Z)V
    .registers 5

    .line 2442
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 2443
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 2444
    return-void
.end method

.method preOnConfigurationChanged()V
    .registers 2

    .line 2084
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 2086
    if-eqz v0, :cond_d

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    .line 2090
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 2092
    if-eqz v0, :cond_1a

    .line 2093
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    .line 2095
    :cond_1a
    return-void
.end method

.method prepareAppTransition(IZ)V
    .registers 4

    .line 4975
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 4976
    return-void
.end method

.method prepareAppTransition(IZIZ)V
    .registers 6

    .line 4981
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result p1

    .line 4983
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4984
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 4986
    :cond_11
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 2718
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2719
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2720
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 2718
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2722
    :cond_18
    return-void
.end method

.method prepareSurfaces()V
    .registers 11

    .line 4895
    const-wide/16 v0, 0x20

    const-string v2, "prepareSurfaces"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4897
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 4898
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 4899
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    .line 4900
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 4901
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4902
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v5, 0x0

    aget v5, v3, v5

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v6, 0x3

    aget v6, v3, v6

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v7, 0x1

    aget v7, v3, v7

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v8, 0x4

    aget v8, v3, v8

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 4905
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-virtual {v9, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4907
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4908
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 4907
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 4911
    :cond_60
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 4915
    invoke-static {v9}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_6b

    .line 4917
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4918
    nop

    .line 4919
    return-void

    .line 4917
    :catchall_6b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 5

    .line 1065
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1066
    if-ne v0, p0, :cond_7

    .line 1067
    return-void

    .line 1069
    :cond_7
    if-eqz v0, :cond_2b

    .line 1070
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1075
    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowToken;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1079
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 1083
    :cond_2b
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1084
    return-void
.end method

.method reapplyMagnificationSpec()V
    .registers 3

    .line 4816
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_d

    .line 4817
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4819
    :cond_d
    return-void
.end method

.method reevaluateStatusBarVisibility()V
    .registers 3

    .line 3661
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 3662
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3663
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3665
    :cond_17
    return-void
.end method

.method registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3

    .line 4966
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4967
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3

    .line 1166
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransitionController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1167
    return-void
.end method

.method registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 5

    .line 5344
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5346
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 5347
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    goto :goto_14

    .line 5349
    :cond_13
    const/4 v0, 0x0

    .line 5352
    :goto_14
    if-nez v0, :cond_2e

    .line 5353
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v0, :cond_1d

    .line 5354
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 5358
    :goto_1e
    :try_start_1e
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v1, v2, v0}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 5362
    goto :goto_2e

    .line 5360
    :catch_26
    move-exception p1

    .line 5361
    const-string v0, "WindowManager"

    const-string v1, "Failed to notify SystemGestureExclusionListener during register"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5364
    :cond_2e
    :goto_2e
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .registers 6

    .line 1087
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1088
    const-string v1, "WindowManager"

    if-nez v0, :cond_1d

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void

    .line 1093
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1095
    if-nez v2, :cond_40

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-App token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void

    .line 1100
    :cond_40
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 1101
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .registers 3

    .line 2427
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_8

    .line 2428
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 2429
    return-void

    .line 2431
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "See DisplayChildWindowContainer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 230
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .registers 3

    .line 4004
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 4005
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 4006
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v1, :cond_1b

    .line 4007
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4004
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4012
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    .line 4013
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 2558
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 2560
    return-void

    .line 2562
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2563
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 2567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2569
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_d

    .line 2570
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowState;->removeEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z

    .line 2573
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2574
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2575
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2576
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 2577
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2578
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 2579
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 2580
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2582
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    .line 2583
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 2584
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2585
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2586
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_5b

    .line 2588
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2589
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2590
    nop

    .line 2592
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2593
    return-void

    .line 2588
    :catchall_5b
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2589
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    throw v1
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 3

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowToken;

    .line 1057
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1058
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 1060
    :cond_13
    return-object p1
.end method

.method reparentDisplayContent(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 5066
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    .line 5067
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->addEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z

    .line 5068
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 5069
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-nez p1, :cond_17

    .line 5070
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    .line 5072
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5073
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5074
    return-void
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 4799
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4800
    return-void
.end method

.method resumeRotationLocked()V
    .registers 2

    .line 1186
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_5

    .line 1187
    return-void

    .line 1190
    :cond_5
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    .line 1191
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_10

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    .line 1194
    :cond_10
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .registers 5

    .line 2725
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 2726
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 2727
    return-void
.end method

.method rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 6

    .line 2732
    invoke-static {p3, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p2

    .line 2733
    nop

    .line 2734
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 2733
    invoke-static {p2, p3, p1, v0}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 2736
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2737
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2738
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2739
    return-void
.end method

.method rotationNeedsUpdate()Z
    .registers 4

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    .line 1207
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v0

    .line 1208
    if-eq v1, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 3015
    if-eqz p1, :cond_14

    if-eqz p2, :cond_b

    iget p2, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne p2, v0, :cond_b

    goto :goto_14

    .line 3020
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3022
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3023
    return-void

    .line 3016
    :cond_14
    :goto_14
    return-void
.end method

.method screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10

    .line 3902
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 3906
    return-object v1

    .line 3909
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3910
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3912
    if-lez v0, :cond_5c

    if-gtz v2, :cond_19

    goto :goto_5c

    .line 3916
    :cond_19
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3919
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 3921
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2b

    if-ne v5, v6, :cond_30

    .line 3922
    :cond_2b
    if-ne v5, v7, :cond_2f

    move v5, v6

    goto :goto_30

    :cond_2f
    move v5, v7

    .line 3927
    :cond_30
    :goto_30
    invoke-static {v3, v5, v0, v2}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 3929
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 3930
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v6

    .line 3931
    if-eqz v6, :cond_45

    .line 3932
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_45

    move v4, v7

    goto :goto_46

    :cond_45
    nop

    .line 3938
    :goto_46
    invoke-static {v3, v0, v2, v4, v5}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3939
    if-nez v0, :cond_54

    .line 3940
    const-string p1, "WindowManager"

    const-string v0, "Failed to take screenshot"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    return-object v1

    .line 3946
    :cond_54
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3947
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3948
    return-object p1

    .line 3913
    :cond_5c
    :goto_5c
    return-object v1
.end method

.method sendNewConfiguration()V
    .registers 3

    .line 1224
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1225
    return-void
.end method

.method setDisplayRotation(Lcom/android/server/wm/DisplayRotation;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1144
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1145
    return-void
.end method

.method setDisplayWindowingMode(I)V
    .registers 2

    .line 2121
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 2122
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 4

    .line 3995
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_17

    .line 3996
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 3995
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4000
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    .line 4001
    return-void
.end method

.method setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 5

    .line 3157
    if-eqz p1, :cond_37

    .line 3158
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3159
    if-eq v0, p0, :cond_37

    .line 3160
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3161
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_2a
    const-string p1, "none"

    :goto_2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3164
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_3d

    .line 3165
    const/4 p1, 0x0

    return p1

    .line 3167
    :cond_3d
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3168
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3169
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 3170
    const/4 p1, 0x1

    return p1
.end method

.method setForcedDensity(II)V
    .registers 6

    .line 2333
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2334
    const/4 v0, -0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v1

    .line 2335
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v2, p2, :cond_11

    if-eqz v0, :cond_18

    .line 2336
    :cond_11
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2337
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2339
    :cond_18
    if-eqz v0, :cond_1b

    .line 2341
    return-void

    .line 2344
    :cond_1b
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne p1, v0, :cond_20

    .line 2345
    move p1, v1

    .line 2347
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 2348
    return-void
.end method

.method setForcedScalingMode(I)V
    .registers 4

    .line 2352
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    .line 2353
    move p1, v0

    .line 2356
    :cond_5
    if-eqz p1, :cond_8

    move v0, v1

    :cond_8
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using display scaling mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_1b

    const-string v1, "off"

    goto :goto_1d

    :cond_1b
    const-string v1, "auto"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2360
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    .line 2361
    return-void
.end method

.method setForcedSize(II)V
    .registers 7

    .line 2365
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v0, p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 2366
    :goto_c
    if-nez v0, :cond_28

    .line 2371
    const/16 v2, 0xc8

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2372
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2375
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2377
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2379
    if-eqz v0, :cond_54

    .line 2380
    move p1, v1

    move p2, p1

    .line 2382
    :cond_54
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 2383
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 3

    .line 5399
    if-nez p1, :cond_4

    .line 5400
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 5402
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getForwardedInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5403
    return-void

    .line 5405
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setForwardedInsets(Landroid/graphics/Insets;)V

    .line 5406
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5407
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5408
    return-void
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 3242
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3244
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    .line 3245
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 3246
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3247
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    .line 3246
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onImeWindowSetOnDisplay(II)V

    .line 3249
    :cond_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3250
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 3252
    return-void
.end method

.method setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1136
    return-void
.end method

.method setLayoutNeeded()V
    .registers 2

    .line 3444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3445
    return-void
.end method

.method setMaxUiWidth(I)V
    .registers 4

    .line 2294
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 2297
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2298
    return-void
.end method

.method setRotation(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1153
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->setRotation(I)V

    .line 1155
    return-void
.end method

.method setStackOnDisplay(IZLcom/android/server/wm/TaskStack;)V
    .registers 4

    .line 2394
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 2395
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 2

    .line 2115
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 2116
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setDisplayWindowingMode(I)V

    .line 2117
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZZ)V
    .registers 6

    .line 3504
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3505
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3512
    return-void
.end method

.method statusBarVisibilityChanged(I)V
    .registers 3

    .line 3616
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 3617
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 3618
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    .line 3619
    return-void
.end method

.method supportsSystemDecorations()Z
    .registers 3

    .line 5042
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5043
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_2a

    .line 5044
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_20
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-eq v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 5042
    :goto_2b
    return v0
.end method

.method switchUser()V
    .registers 3

    .line 2545
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2546
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2547
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    .line 2548
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3

    .line 4970
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4971
    return-void
.end method

.method unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 3

    .line 5367
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5368
    return-void
.end method

.method updateBackgroundForAnimator()V
    .registers 3

    .line 3584
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 3585
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3586
    return-void
.end method

.method updateBaseDisplayMetrics(III)V
    .registers 5

    .line 2302
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2303
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2304
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2306
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez p1, :cond_1c

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le p2, p1, :cond_1c

    .line 2307
    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr p3, p1

    div-int/2addr p3, p2

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2308
    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr p3, p1

    div-int/2addr p3, p2

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2309
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2318
    :cond_1c
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2320
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    .line 2321
    return-void
.end method

.method updateDisplayInfo()V
    .registers 3

    .line 2211
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 2213
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2214
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2216
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2217
    return-void
.end method

.method updateFocusedWindowLocked(IZI)Z
    .registers 11

    .line 3063
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3064
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_a

    .line 3065
    return v2

    .line 3067
    :cond_a
    nop

    .line 3068
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3069
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_24

    .line 3070
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3071
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 3072
    if-eq v1, v5, :cond_1b

    move v1, v4

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 3074
    :goto_1c
    if-eq p1, v4, :cond_25

    if-eq p1, v3, :cond_25

    .line 3076
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_25

    .line 3069
    :cond_24
    move v1, v2

    .line 3080
    :cond_25
    :goto_25
    if-eqz v1, :cond_32

    .line 3081
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3082
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3083
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3085
    :cond_32
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x2

    if-eq p3, v0, :cond_42

    .line 3086
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p3, v5, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 3089
    :cond_42
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3092
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3093
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3094
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3096
    if-eqz v0, :cond_63

    .line 3097
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3098
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3100
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 3104
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v2, v6, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 3108
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6, p3, v0}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v6

    .line 3110
    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq p3, v1, :cond_7e

    .line 3112
    if-ne p1, v5, :cond_79

    .line 3113
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 3114
    and-int/lit8 v6, v6, -0x2

    goto :goto_7e

    .line 3115
    :cond_79
    if-ne p1, v3, :cond_7e

    .line 3118
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3122
    :cond_7e
    :goto_7e
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_95

    .line 3124
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3125
    if-ne p1, v5, :cond_8b

    .line 3126
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_95

    .line 3127
    :cond_8b
    const/4 v1, 0x4

    if-ne p1, v1, :cond_95

    .line 3128
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 3132
    :cond_95
    :goto_95
    if-eq p1, v4, :cond_9e

    .line 3134
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 3137
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 3142
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3144
    if-ne p1, v5, :cond_ac

    .line 3145
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3147
    :cond_ac
    return v4
.end method

.method updateLocation(Lcom/android/server/wm/WindowState;II)V
    .registers 5

    .line 5094
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_22

    .line 5098
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->equals(II)Z

    move-result p1

    if-nez p1, :cond_21

    .line 5099
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 5100
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz p1, :cond_1e

    .line 5101
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 5103
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->notifyLocationInParentDisplayChanged()V

    .line 5105
    :cond_21
    return-void

    .line 5095
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given window is not the parent window of this display."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;
    .registers 6

    .line 1284
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1285
    return-object v1

    .line 1288
    :cond_6
    nop

    .line 1289
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Z)Z

    move-result p3

    if-eqz p3, :cond_29

    .line 1292
    if-eqz p2, :cond_20

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean p1, p1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez p1, :cond_20

    .line 1293
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 1294
    if-eqz p1, :cond_20

    .line 1295
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 1298
    :cond_20
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1299
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_63

    .line 1300
    :cond_29
    if-eqz p1, :cond_63

    .line 1306
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/res/Configuration;->unset()V

    .line 1307
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1308
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1309
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    if-eqz p1, :cond_63

    .line 1310
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1312
    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1315
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    aget v0, p2, v0

    aget p1, p2, p1

    invoke-virtual {p3, v0, p1, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1316
    new-instance v1, Landroid/content/res/Configuration;

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1320
    :cond_63
    :goto_63
    return-object v1
.end method

.method updateOrientationFromAppTokens()Z
    .registers 2

    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationAndSendNewConfigIfNeeded()Z
    .registers 2

    .line 1340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    .line 1341
    if-eqz v0, :cond_a

    .line 1342
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1344
    :cond_a
    return v0
.end method

.method updateRotationUnchecked()Z
    .registers 2

    .line 1354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .registers 9

    .line 1374
    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 1375
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_8

    .line 1379
    return v0

    .line 1382
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1383
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 1384
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1389
    return v0

    .line 1391
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_22

    .line 1397
    return v0

    .line 1401
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_29

    .line 1404
    return v0

    .line 1407
    :cond_29
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1408
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1409
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v2

    .line 1413
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->shouldRotateSeamlessly(Lcom/android/server/wm/DisplayRotation;II)Z

    move-result v3

    .line 1416
    if-eqz v3, :cond_70

    .line 1417
    sget-object v4, Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 1418
    if-eqz v4, :cond_48

    if-nez p1, :cond_48

    .line 1423
    return v0

    .line 1428
    :cond_48
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1429
    move v3, v0

    .line 1431
    :cond_4f
    move p1, v0

    :goto_50
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge p1, v4, :cond_70

    .line 1432
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Session;

    invoke-virtual {v4}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1433
    nop

    .line 1434
    move v3, v0

    goto :goto_70

    .line 1431
    :cond_6d
    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    .line 1438
    :cond_70
    :goto_70
    nop

    .line 1444
    if-ne v1, v2, :cond_74

    .line 1446
    return v0

    .line 1454
    :cond_74
    invoke-static {v2, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p1

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7e

    .line 1455
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1458
    :cond_7e
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1460
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v4, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1461
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xb

    const-wide/16 v5, 0x7d0

    invoke-virtual {p1, v2, p0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1465
    new-array p1, v1, [I

    .line 1466
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1468
    if-nez v3, :cond_a5

    .line 1469
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    aget v0, p1, v0

    aget p1, p1, v4

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    goto :goto_aa

    .line 1476
    :cond_a5
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->startSeamlessRotation()V

    .line 1479
    :goto_aa
    return v4
.end method

.method updateSystemGestureExclusion()Z
    .registers 8

    .line 5146
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 5148
    return v1

    .line 5151
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 5152
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 5155
    :try_start_16
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_5d

    if-eqz v2, :cond_23

    .line 5156
    nop

    .line 5173
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5156
    return v1

    .line 5158
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5159
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_2f

    .line 5160
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 5161
    :goto_30
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_5d

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_38
    if-ltz v2, :cond_53

    .line 5163
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5164
    invoke-interface {v4, v5, v0, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_48
    .catchall {:try_start_3a .. :try_end_47} :catchall_5d

    .line 5168
    goto :goto_50

    .line 5166
    :catch_48
    move-exception v4

    .line 5167
    :try_start_49
    const-string v5, "WindowManager"

    const-string v6, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5161
    :goto_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 5170
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_5d

    .line 5171
    nop

    .line 5173
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5171
    return v3

    .line 5173
    :catchall_5d
    move-exception v1

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    throw v1
.end method

.method updateSystemGestureExclusionLimit()V
    .registers 3

    .line 2226
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 2229
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .registers 4

    .line 3641
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;-><init>(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3658
    return-void
.end method

.method updateTouchExcludeRegion()V
    .registers 10

    .line 2489
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2490
    :goto_a
    if-nez v0, :cond_12

    .line 2491
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_5a

    .line 2493
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2494
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v7

    .line 2495
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2496
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_2f
    if-ltz v8, :cond_49

    .line 2498
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2499
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v5, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2497
    add-int/lit8 v8, v8, -0x1

    goto :goto_2f

    .line 2505
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2506
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2509
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2513
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2514
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2516
    :cond_74
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7c
    if-ltz v0, :cond_97

    .line 2517
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2518
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2519
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2516
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 2521
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->amendWindowTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2523
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_bd

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 2524
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 2525
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2526
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2528
    :cond_bd
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 2529
    return-void
.end method

.method updateWindowsForAnimator()V
    .registers 3

    .line 3577
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3578
    return-void
.end method

.method waitForAllWindowsDrawn()V
    .registers 3

    .line 3684
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3685
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3694
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 2781
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2782
    return-void

    .line 2785
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2786
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2787
    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2788
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_3d

    .line 2789
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2790
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/TaskStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2788
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 2792
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2793
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/PinnedStackController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2794
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_59
    if-ltz v0, :cond_6e

    .line 2795
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 2796
    const-wide v2, 0x20b00000006L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2794
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 2798
    :cond_6e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_76
    if-ltz v0, :cond_8b

    .line 2799
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 2800
    const-wide v2, 0x20b00000007L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2798
    add-int/lit8 v0, v0, -0x1

    goto :goto_76

    .line 2802
    :cond_8b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_93
    if-ltz v0, :cond_a8

    .line 2803
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 2804
    const-wide v2, 0x20b00000008L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2802
    add-int/lit8 v0, v0, -0x1

    goto :goto_93

    .line 2806
    :cond_a8
    const-wide v0, 0x10500000009L

    iget p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2807
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v0, 0x10b0000000aL

    invoke-virtual {p4, p1, v0, v1}, Landroid/view/DisplayInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2808
    const-wide v0, 0x1050000000bL

    iget p4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2809
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2810
    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object p4

    .line 2811
    if-eqz p4, :cond_da

    .line 2812
    const-wide v0, 0x10b0000000cL

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2814
    :cond_da
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v0, 0x10b0000000dL

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/DisplayFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2815
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v0, 0x10b00000010L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/AppTransition;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2816
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz p4, :cond_fa

    .line 2817
    const-wide v0, 0x1090000000fL

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2819
    :cond_fa
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_102
    if-ltz p4, :cond_119

    .line 2820
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v1, 0x20b00000011L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2819
    add-int/lit8 p4, p4, -0x1

    goto :goto_102

    .line 2822
    :cond_119
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_121
    if-ltz p4, :cond_138

    .line 2823
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v1, 0x20b00000012L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2822
    add-int/lit8 p4, p4, -0x1

    goto :goto_121

    .line 2825
    :cond_138
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_140
    if-ltz p4, :cond_157

    .line 2826
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v1, 0x20b00000013L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2825
    add-int/lit8 p4, p4, -0x1

    goto :goto_140

    .line 2828
    :cond_157
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2829
    return-void
.end method
