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
    .registers 12
    .param p1, "display"  # Landroid/view/Display;
    .param p2, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p3, "activityDisplay"  # Lcom/android/server/wm/ActivityDisplay;

    .line 914
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 260
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    .line 263
    new-instance v0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mAboveAppWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 267
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mBelowAppWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 273
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mImeWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 287
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 288
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 289
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 305
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 306
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 307
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 310
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v2}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 318
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 319
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 325
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 332
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 334
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 339
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 341
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 348
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 351
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 357
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 368
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 376
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 384
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    .line 392
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    .line 411
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 413
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 446
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 449
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 450
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 451
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 452
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 453
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 456
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    .line 458
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 468
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 470
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 471
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 472
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 473
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 475
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 477
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 479
    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$1;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 484
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 487
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 491
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 493
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 499
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 504
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 517
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 542
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 550
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    .line 559
    new-instance v2, Lcom/android/server/wm/utils/DisplayRotationUtil;

    invoke-direct {v2}, Lcom/android/server/wm/utils/DisplayRotationUtil;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    .line 582
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    .line 587
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 589
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 594
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 610
    sget-object v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$GuCKVzKP141d6J0gfRAjKtuBJUU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$GuCKVzKP141d6J0gfRAjKtuBJUU;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    .line 631
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 642
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 692
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 747
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 779
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 785
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 789
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 915
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 916
    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_356

    .line 922
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 923
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 924
    new-instance v2, Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, p0}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 925
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 926
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 927
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 929
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_1d6

    move v2, v1

    goto :goto_1d7

    :cond_1d6
    move v2, v0

    :goto_1d7
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 930
    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->rotation:I

    .line 931
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 932
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 934
    new-instance v2, Lcom/android/server/wm/AppTransition;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p2, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 935
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 936
    new-instance v2, Lcom/android/server/wm/AppTransitionController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/AppTransitionController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 937
    new-instance v2, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 939
    new-instance v2, Landroid/animation/AnimationHandler;

    invoke-direct {v2}, Landroid/animation/AnimationHandler;-><init>()V

    .line 940
    .local v2, "animationHandler":Landroid/animation/AnimationHandler;
    new-instance v4, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v5, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 941
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 943
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PointerEventDispatcher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v4

    .line 945
    .local v4, "inputChannel":Landroid/view/InputChannel;
    new-instance v5, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v5, v4}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 950
    new-instance v5, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v5, v6, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 951
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 952
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 953
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    if-eqz v5, :cond_271

    .line 954
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 955
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v5

    .line 954
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 958
    :cond_271
    new-instance v5, Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 959
    new-instance v5, Lcom/android/server/wm/DisplayRotation;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 960
    iget-object v5, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105009c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 962
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_299

    .line 965
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 967
    :cond_299
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v5, :cond_2a4

    .line 968
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 970
    :cond_2a4
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v5, :cond_2af

    .line 971
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 973
    :cond_2af
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getWindowCornerRadius()F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 974
    new-instance v5, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 975
    new-instance v5, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    .line 977
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 978
    invoke-virtual {v5, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 979
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 980
    .local v5, "b":Landroid/view/SurfaceControl$Builder;
    const-string v6, "Display Root"

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 981
    const-string v6, "Display Overlays"

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 983
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 984
    invoke-virtual {v0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 985
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 986
    invoke-virtual {v0, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 987
    invoke-virtual {v0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 988
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 989
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 992
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 993
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1002
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 1004
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 1005
    new-instance v0, Lcom/android/server/wm/InputMonitor;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1006
    new-instance v0, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1007
    return-void

    .line 917
    .end local v2  # "animationHandler":Landroid/animation/AnimationHandler;
    .end local v4  # "inputChannel":Landroid/view/InputChannel;
    .end local v5  # "b":Landroid/view/SurfaceControl$Builder;
    :cond_356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 918
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayContent;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;

    .line 236
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;

    .line 236
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayContent;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;

    .line 236
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayContent;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;

    .line 236
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;
    .param p1, "x1"  # I

    .line 236
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayContent;
    .param p1, "x1"  # I

    .line 236
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method private static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;I)I
    .registers 8
    .param p0, "local"  # Landroid/graphics/Region;
    .param p1, "global"  # Landroid/graphics/Region;
    .param p2, "edge"  # Landroid/graphics/Rect;
    .param p3, "limit"  # I

    .line 5355
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 5356
    .local v0, "r":Landroid/graphics/Region;
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5358
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    .line 5359
    .local v1, "remaining":[I
    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;

    invoke-direct {v3, v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;-><init>([ILandroid/graphics/Region;)V

    invoke-static {v0, v3}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 5370
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5371
    aget v2, v1, v2

    return v2
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 8
    .param p1, "binder"  # Landroid/os/IBinder;
    .param p2, "token"  # Lcom/android/server/wm/WindowToken;

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1037
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1038
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "WindowManager"

    const-string v3, "addWindowToken un lock mGlobalLock"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1041
    :cond_1e
    const-string v1, " to display="

    const-string v2, "Can\'t map token="

    if-nez v0, :cond_91

    .line 1049
    if-eqz p1, :cond_6d

    .line 1053
    if-eqz p2, :cond_4a

    .line 1057
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_49

    .line 1062
    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch v1, :pswitch_data_c2

    .line 1071
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_49

    .line 1064
    :pswitch_3e  #0x7dd
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1065
    goto :goto_49

    .line 1068
    :pswitch_44  #0x7db, 0x7dc
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1075
    :cond_49
    :goto_49
    return-void

    .line 1054
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_6d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " binder is null"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1046
    :cond_91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already mapped to display="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tokens="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_c2
    .packed-switch 0x7db
        :pswitch_44  #000007db
        :pswitch_44  #000007dc
        :pswitch_3e  #000007dd
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V
    .registers 14
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "rotation"  # I
    .param p3, "uiMode"  # I
    .param p4, "dw"  # I
    .param p5, "dh"  # I

    .line 1927
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 1928
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1929
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 1931
    .local v7, "width":I
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v7, v1, :cond_19

    .line 1932
    iput v7, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1934
    :cond_19
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v7, v1, :cond_1f

    .line 1935
    iput v7, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1937
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1939
    .local v1, "height":I
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v1, v2, :cond_30

    .line 1940
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1942
    :cond_30
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v1, v2, :cond_36

    .line 1943
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1945
    :cond_36
    return-void
.end method

.method private calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "out"  # Landroid/graphics/Rect;

    .line 3827
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 3828
    .local v0, "rotation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 3829
    .local v1, "rotated":Z
    :cond_a
    :goto_a
    if-eqz v1, :cond_f

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_11

    :cond_f
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3830
    .local v2, "physWidth":I
    :goto_11
    if-eqz v1, :cond_16

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_18

    :cond_16
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3831
    .local v3, "physHeight":I
    :goto_18
    iget v4, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3832
    .local v4, "width":I
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    .line 3833
    .local v5, "left":I
    iget v6, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3834
    .local v6, "height":I
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    .line 3835
    .local v7, "top":I
    add-int v8, v5, v4

    add-int v9, v7, v6

    invoke-virtual {p2, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 3836
    return-void
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 8
    .param p1, "cutout"  # Landroid/view/DisplayCutout;
    .param p2, "rotation"  # I

    .line 1683
    if-eqz p1, :cond_4b

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v0, :cond_7

    goto :goto_4b

    .line 1686
    :cond_7
    if-nez p2, :cond_12

    .line 1687
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0

    .line 1690
    :cond_12
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    const/4 v1, 0x3

    if-ne p2, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1691
    .local v0, "rotated":Z
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1692
    invoke-static {p1, v2, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 1694
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1691
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;

    move-result-object v1

    .line 1696
    .local v1, "newBounds":[Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds([Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v2

    .line 1697
    if-eqz v0, :cond_3d

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_3f

    :cond_3d
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1698
    :goto_3f
    if-eqz v0, :cond_44

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_46

    :cond_44
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1696
    :goto_46
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    return-object v2

    .line 1684
    .end local v0  # "rotated":Z
    .end local v1  # "newBounds":[Landroid/graphics/Rect;
    :cond_4b
    :goto_4b
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private canUpdateImeTarget()Z
    .registers 2

    .line 5062
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
    .registers 3

    .line 3475
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3477
    return-void
.end method

.method private computeCompatSmallestWidth(ZIIILandroid/view/DisplayCutout;)I
    .registers 19
    .param p1, "rotated"  # Z
    .param p2, "uiMode"  # I
    .param p3, "dw"  # I
    .param p4, "dh"  # I
    .param p5, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 1831
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1832
    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1834
    .local v9, "tmpDm":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_13

    .line 1835
    move/from16 v0, p4

    .line 1836
    .local v0, "unrotDw":I
    move/from16 v1, p3

    move v10, v0

    move v11, v1

    .local v1, "unrotDh":I
    goto :goto_19

    .line 1838
    .end local v0  # "unrotDw":I
    .end local v1  # "unrotDh":I
    :cond_13
    move/from16 v0, p3

    .line 1839
    .restart local v0  # "unrotDw":I
    move/from16 v1, p4

    move v10, v0

    move v11, v1

    .line 1841
    .end local v0  # "unrotDw":I
    .local v10, "unrotDw":I
    .local v11, "unrotDh":I
    :goto_19
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, v9

    move v5, v10

    move v6, v11

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v12

    .line 1843
    .local v12, "sw":I
    const/4 v2, 0x1

    move v1, v12

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v12

    .line 1845
    const/4 v2, 0x2

    move v1, v12

    move v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v12

    .line 1847
    const/4 v2, 0x3

    move v1, v12

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1849
    .end local v12  # "sw":I
    .local v0, "sw":I
    return v0
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V
    .registers 26
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "rotated"  # Z
    .param p3, "uiMode"  # I
    .param p4, "dw"  # I
    .param p5, "dh"  # I
    .param p6, "density"  # F
    .param p7, "outConfig"  # Landroid/content/res/Configuration;

    .line 1874
    move-object/from16 v6, p1

    move-object/from16 v7, p7

    if-eqz p2, :cond_f

    .line 1875
    move/from16 v0, p5

    .line 1876
    .local v0, "unrotDw":I
    move/from16 v1, p4

    move/from16 v16, v0

    move/from16 v17, v1

    .local v1, "unrotDh":I
    goto :goto_17

    .line 1878
    .end local v0  # "unrotDw":I
    .end local v1  # "unrotDh":I
    :cond_f
    move/from16 v0, p4

    .line 1879
    .restart local v0  # "unrotDw":I
    move/from16 v1, p5

    move/from16 v16, v0

    move/from16 v17, v1

    .line 1881
    .end local v0  # "unrotDw":I
    .local v16, "unrotDw":I
    .local v17, "unrotDh":I
    :goto_17
    const/high16 v0, 0x40000000  # 2.0f

    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1882
    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1883
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1884
    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1885
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1886
    const/4 v2, 0x1

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1887
    const/4 v2, 0x2

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1888
    const/4 v2, 0x3

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1890
    if-nez v7, :cond_4b

    .line 1891
    return-void

    .line 1893
    :cond_4b
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 1894
    .local v0, "sl":I
    const/4 v10, 0x0

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v8, p0

    move v9, v0

    move/from16 v11, p6

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, p3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1896
    const/4 v10, 0x1

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v9, v0

    move/from16 v12, v17

    move/from16 v13, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1898
    const/4 v10, 0x2

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v9, v0

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1900
    const/4 v10, 0x3

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v9, v0

    move/from16 v12, v17

    move/from16 v13, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1902
    iget v1, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p6

    float-to-int v1, v1

    iput v1, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1903
    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 1904
    return-void
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .registers 6
    .param p0, "crop"  # Landroid/graphics/Rect;
    .param p1, "rot"  # I
    .param p2, "dw"  # I
    .param p3, "dh"  # I

    .line 3978
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 3979
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3980
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3981
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3982
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3983
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 3984
    .end local v0  # "tmp":I
    goto :goto_4d

    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    .line 3985
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3986
    .restart local v0  # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3987
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3988
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 3989
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 3990
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .end local v0  # "tmp":I
    goto :goto_4c

    .line 3991
    :cond_34
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4c

    .line 3992
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 3993
    .restart local v0  # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 3994
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 3995
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3996
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_4d

    .line 3991
    .end local v0  # "tmp":I
    :cond_4c
    :goto_4c
    nop

    .line 3998
    :goto_4d
    return-void
.end method

.method private createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 5408
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    .line 5410
    .local v0, "portalWindowHandle":Landroid/view/InputWindowHandle;
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 5411
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 5412
    const v1, 0x800028

    iput v1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 5414
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 5415
    iget-object v1, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 5416
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 5417
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 5418
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 5419
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, v0, Landroid/view/InputWindowHandle;->portalToDisplayId:I

    .line 5420
    return-object v0
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .registers 8
    .param p0, "rotation"  # I
    .param p1, "rectLeft"  # F
    .param p2, "rectTop"  # F
    .param p3, "displayWidth"  # F
    .param p4, "displayHeight"  # F
    .param p5, "outMatrix"  # Landroid/graphics/Matrix;

    .line 2780
    if-eqz p0, :cond_2a

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    goto :goto_2e

    .line 2785
    :cond_d
    const/high16 v0, 0x43870000  # 270.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2786
    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2787
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2788
    goto :goto_2e

    .line 2790
    :cond_19
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2791
    goto :goto_2e

    .line 2793
    :cond_1d
    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2794
    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2795
    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2e

    .line 2782
    :cond_2a
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2783
    nop

    .line 2798
    :goto_2e
    return-void
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .registers 10
    .param p0, "rotation"  # I
    .param p1, "displayWidth"  # F
    .param p2, "displayHeight"  # F
    .param p3, "outMatrix"  # Landroid/graphics/Matrix;

    .line 2774
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 2776
    return-void
.end method

.method static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"  # I
    .param p1, "newRotation"  # I

    .line 2766
    sub-int v0, p1, p0

    .line 2767
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 2768
    :cond_6
    return v0
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .registers 8
    .param p1, "out"  # Landroid/graphics/Rect;
    .param p2, "orientation"  # I

    .line 3839
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 3842
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 3843
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 3844
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    .line 3845
    :cond_11
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 3846
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3847
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3848
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 3850
    :cond_2d
    return-void
.end method

.method private hasPinnedStack()Z
    .registers 2

    .line 2043
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
    .param p1, "rotation"  # I
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 1607
    nop

    .line 1608
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1609
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 1610
    .local v7, "uiMode":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v8

    .line 1612
    .local v8, "w":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1614
    .local v1, "h":I
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1615
    .local v2, "aspectRatio":F
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    return v3
.end method

.method static synthetic lambda$addToGlobalAndConsumeLimit$27([ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "remaining"  # [I
    .param p1, "global"  # Landroid/graphics/Region;
    .param p2, "rect"  # Landroid/graphics/Rect;

    .line 5360
    const/4 v0, 0x0

    aget v1, p0, v0

    if-gtz v1, :cond_6

    .line 5361
    return-void

    .line 5363
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 5364
    .local v1, "height":I
    aget v2, p0, v0

    if-le v1, v2, :cond_15

    .line 5365
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    aget v3, p0, v0

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 5367
    :cond_15
    aget v2, p0, v0

    sub-int/2addr v2, v1

    aput v2, p0, v0

    .line 5368
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5369
    return-void
.end method

.method static synthetic lambda$canAddToastWindowForUid$14(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "uid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 3028
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$15(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "uid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 3033
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$dumpWindowAnimators$18(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "subPrefix"  # Ljava/lang/String;
    .param p2, "index"  # [I
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 3520
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3521
    .local v0, "wAnim":Lcom/android/server/wm/WindowStateAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    aget v1, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v2

    .line 3523
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
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 3636
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 612
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2f

    .line 617
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_18

    .line 618
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_1c

    .line 619
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    :goto_1c
    nop

    .line 620
    .local v1, "anim":Lcom/android/server/wm/AnimationAdapter;
    if-eqz v1, :cond_2e

    .line 621
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v2

    .line 622
    .local v2, "color":I
    if-eqz v2, :cond_2e

    .line 623
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 624
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_2e

    .line 625
    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 629
    .end local v2  # "color":I
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2e
    return-void

    .line 613
    .end local v1  # "anim":Lcom/android/server/wm/AnimationAdapter;
    :cond_2f
    :goto_2f
    return-void
.end method

.method static synthetic lambda$pointWithinAppWindow$12([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 8
    .param p0, "targetWindowType"  # [I
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "w"  # Lcom/android/server/wm/WindowState;
    .param p4, "nonArg"  # Landroid/graphics/Rect;

    .line 2479
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 2480
    return-void

    .line 2483
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2484
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput v1, p0, v0

    .line 2485
    return-void

    .line 2487
    :cond_24
    return-void
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$19(Lcom/android/server/policy/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "onWallpaper"  # Z
    .param p2, "goingToShade"  # Z
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 3532
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    invoke-interface {p0, p3}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3533
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3534
    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3536
    :cond_1d
    return-void
.end method

.method static synthetic lambda$updateRotationUnchecked$9(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 1438
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method static synthetic lambda$updateSystemUiVisibility$22(IILcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "visibility"  # I
    .param p1, "globalDiff"  # I
    .param p2, "w"  # Lcom/android/server/wm/WindowState;

    .line 3668
    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3669
    .local v0, "curValue":I
    xor-int v1, v0, p0

    and-int/2addr v1, p1

    .line 3670
    .local v1, "diff":I
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, p0, v1

    or-int/2addr v2, v3

    .line 3671
    .local v2, "newValue":I
    if-eq v2, v0, :cond_14

    .line 3672
    iget v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 3673
    iput v2, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3675
    :cond_14
    if-ne v2, v0, :cond_1c

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v3, v3, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v3, :cond_23

    .line 3676
    :cond_1c
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v3, v4, p0, v2, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 3681
    .end local v0  # "curValue":I
    .end local v1  # "diff":I
    .end local v2  # "newValue":I
    :cond_23
    goto :goto_25

    .line 3679
    :catch_24
    move-exception v0

    .line 3682
    :goto_25
    return-void
.end method

.method private static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z
    .registers 9
    .param p0, "win"  # Lcom/android/server/wm/WindowState;
    .param p1, "sysUiVisibility"  # I

    .line 5335
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5336
    .local v0, "type":I
    const/16 v1, 0x1002

    .line 5338
    .local v1, "stickyHideNavFlags":I
    and-int/lit16 v2, p1, 0x1002

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1002

    if-ne v2, v5, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 5340
    .local v2, "stickyHideNav":Z
    :goto_11
    if-nez v2, :cond_23

    const/16 v5, 0x7db

    if-eq v0, v5, :cond_23

    const/16 v5, 0x7d0

    if-eq v0, v5, :cond_23

    .line 5341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_23

    goto :goto_24

    :cond_23
    move v3, v4

    .line 5340
    :goto_24
    return v3
.end method

.method private performLayoutNoTrace(ZZ)V
    .registers 9
    .param p1, "initial"  # Z
    .param p2, "updateInputWindows"  # Z

    .line 3868
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3869
    return-void

    .line 3871
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 3873
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3874
    .local v0, "dw":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3875
    .local v1, "dh":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_45

    .line 3876
    const-string v2, "WindowManager"

    const-string v3, "-------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performLayout: needed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_45
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 3882
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 3881
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 3885
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 3886
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/DisplayPolicy;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 3888
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 3889
    .local v2, "seq":I
    if-gez v2, :cond_6a

    const/4 v2, 0x0

    .line 3890
    :cond_6a
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 3894
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3895
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 3898
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3902
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    .line 3903
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3908
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3911
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 3912
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3913
    if-eqz p2, :cond_93

    .line 3914
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3917
    :cond_93
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3918
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I
    .registers 15
    .param p1, "curSize"  # I
    .param p2, "rotation"  # I
    .param p3, "uiMode"  # I
    .param p4, "dm"  # Landroid/util/DisplayMetrics;
    .param p5, "dw"  # I
    .param p6, "dh"  # I
    .param p7, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 1854
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, p5

    move v2, p6

    move v3, p2

    move v4, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1856
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1858
    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 1859
    .local v0, "scale":F
    iget v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1860
    .local v1, "size":I
    if-eqz p1, :cond_2e

    if-ge v1, p1, :cond_2f

    .line 1861
    :cond_2e
    move p1, v1

    .line 1863
    :cond_2f
    return p1
.end method

.method private reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I
    .registers 15
    .param p1, "curLayout"  # I
    .param p2, "rotation"  # I
    .param p3, "density"  # F
    .param p4, "dw"  # I
    .param p5, "dh"  # I
    .param p6, "uiMode"  # I
    .param p7, "displayCutout"  # Landroid/view/DisplayCutout;

    .line 1909
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1910
    .local v0, "w":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1913
    .local v1, "h":I
    move v2, v0

    .line 1914
    .local v2, "longSize":I
    move v3, v1

    .line 1915
    .local v3, "shortSize":I
    if-ge v2, v3, :cond_1d

    .line 1916
    move v4, v2

    .line 1917
    .local v4, "tmp":I
    move v2, v3

    .line 1918
    move v3, v4

    .line 1920
    .end local v4  # "tmp":I
    :cond_1d
    int-to-float v4, v2

    div-float/2addr v4, p3

    float-to-int v2, v4

    .line 1921
    int-to-float v4, v3

    div-float/2addr v4, p3

    float-to-int v3, v4

    .line 1922
    invoke-static {p1, v2, v3}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v4

    return v4
.end method

.method private resetAnimationBackgroundAnimator()V
    .registers 3

    .line 2578
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2579
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 2578
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2581
    .end local v0  # "stackNdx":I
    :cond_18
    return-void
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V
    .registers 4
    .param p1, "target"  # Lcom/android/server/wm/WindowState;
    .param p2, "targetWaitingAnim"  # Z

    .line 3393
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_9

    .line 3394
    return-void

    .line 3397
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3398
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 3399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3400
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->onImeTargetChanged(Lcom/android/server/wm/WindowState;)V

    .line 3401
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 3402
    return-void
.end method

.method private skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 2156
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasSplitScreenPrimaryStack()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2158
    const/4 v0, 0x1

    return v0

    .line 2160
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .registers 13

    .line 2282
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 2283
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 2284
    .local v0, "orientation":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    goto :goto_19

    :cond_17
    move v3, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v3, v2

    .line 2285
    .local v3, "rotated":Z
    :goto_1a
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_21

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_23

    :cond_21
    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2286
    .local v4, "newWidth":I
    :goto_23
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_2a

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_2c

    :cond_2a
    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2287
    .local v5, "newHeight":I
    :goto_2c
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2288
    .local v6, "newDensity":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2290
    .local v7, "newCutout":Landroid/view/DisplayCutout;
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v4, :cond_4f

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v8, v5, :cond_4f

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v8, v9, :cond_4f

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2293
    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    goto :goto_4f

    :cond_4d
    move v8, v1

    goto :goto_50

    :cond_4f
    :goto_4f
    move v8, v2

    .line 2295
    .local v8, "displayMetricsChanged":Z
    :goto_50
    if-eqz v8, :cond_8b

    .line 2297
    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v9, v10, :cond_61

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v9, v10, :cond_5f

    goto :goto_61

    :cond_5f
    move v9, v1

    goto :goto_62

    :cond_61
    :goto_61
    move v9, v2

    .line 2299
    .local v9, "isDisplaySizeForced":Z
    :goto_62
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v10, v11, :cond_69

    move v1, v2

    .line 2302
    .local v1, "isDisplayDensityForced":Z
    :cond_69
    if-eqz v9, :cond_6e

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_6f

    :cond_6e
    move v2, v4

    .line 2303
    :goto_6f
    if-eqz v9, :cond_74

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_75

    :cond_74
    move v10, v5

    .line 2304
    :goto_75
    if-eqz v1, :cond_7a

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_7b

    :cond_7a
    move v11, v6

    .line 2302
    :goto_7b
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2307
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2308
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2309
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2310
    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2311
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2313
    .end local v1  # "isDisplayDensityForced":Z
    .end local v9  # "isDisplaySizeForced":Z
    :cond_8b
    return-void
.end method

.method private updateBounds()V
    .registers 4

    .line 3812
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 3813
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setBounds(Landroid/graphics/Rect;)I

    .line 3814
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_39

    .line 3815
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 3816
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 3817
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3818
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 3822
    :cond_39
    return-void
.end method

.method private updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .registers 21
    .param p1, "uiMode"  # I
    .param p2, "outConfig"  # Landroid/content/res/Configuration;

    .line 1625
    move-object/from16 v8, p0

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    move v1, v9

    :cond_d
    :goto_d
    move v10, v1

    .line 1626
    .local v10, "rotated":Z
    if-eqz v10, :cond_13

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_15

    :cond_13
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_15
    move v11, v0

    .line 1627
    .local v11, "dw":I
    if-eqz v10, :cond_1b

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1d

    :cond_1b
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_1d
    move v12, v0

    .line 1630
    .local v12, "dh":I
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {v8, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v13

    .line 1631
    .local v13, "wmDisplayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {v13}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    .line 1633
    .local v14, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v4, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    move v2, v11

    move v3, v12

    move/from16 v5, p1

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v15

    .line 1635
    .local v15, "appWidth":I
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v4, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 1637
    .local v7, "appHeight":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1638
    iput v11, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1639
    iput v12, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1640
    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1641
    iput v15, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 1642
    iput v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 1643
    iget-boolean v1, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_5b

    .line 1644
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1647
    :cond_5b
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v14}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    move-object v1, v6

    goto :goto_66

    :cond_65
    move-object v1, v14

    :goto_66
    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1648
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1649
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_7d

    .line 1650
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x40000000  # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_87

    .line 1652
    :cond_7d
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001  # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1655
    :goto_87
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v3, p1

    move v4, v11

    move/from16 v16, v5

    move v5, v12

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7  # "appHeight":I
    .local v16, "appHeight":I
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 1662
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    if-eqz v0, :cond_aa

    .line 1663
    iget-object v6, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v17, v6

    goto :goto_ab

    :cond_aa
    nop

    :goto_ab
    move-object/from16 v0, v17

    .line 1664
    .local v0, "overrideDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1667
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1669
    iget-boolean v1, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_c9

    .line 1670
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v8, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 1674
    :cond_c9
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v1
.end method

.method private updateImeParent()V
    .registers 5

    .line 3407
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 3409
    .local v0, "shouldAttachToDisplay":Z
    :goto_7
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 3410
    .local v1, "newParent":Landroid/view/SurfaceControl;
    :goto_10
    if-eqz v1, :cond_20

    .line 3411
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3412
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3414
    :cond_20
    return-void
.end method

.method private updateOrientationFromAppTokens(Z)Z
    .registers 4
    .param p1, "forceUpdate"  # Z

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v0

    .line 1347
    .local v0, "req":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    if-ne v0, v1, :cond_d

    if-eqz p1, :cond_b

    goto :goto_d

    .line 1352
    :cond_b
    const/4 v1, 0x0

    return v1

    .line 1348
    :cond_d
    :goto_d
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1349
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->setCurrentOrientation(I)V

    .line 1350
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v1

    return v1
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .registers 4
    .param p1, "visibility"  # I

    .line 3647
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_6

    .line 3648
    const/4 v0, 0x0

    return v0

    .line 3650
    :cond_6
    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    .line 3657
    .local v0, "globalDiff":I
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 3658
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_18

    .line 3659
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 3661
    :cond_18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    .line 3662
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p2, "index"  # I

    .line 2447
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2442
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 236
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 3

    .line 236
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method adjustForImeIfNeeded()V
    .registers 20

    .line 2689
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2690
    .local v7, "imeWin":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2691
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v3

    if-nez v3, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    move v8, v3

    .line 2692
    .local v8, "imeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    .line 2693
    .local v9, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v9, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    :goto_29
    move v10, v3

    .line 2694
    .local v10, "dockVisible":Z
    if-eqz v10, :cond_33

    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    move-object v11, v3

    .line 2695
    .local v11, "topDockedTask":Lcom/android/server/wm/Task;
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    .line 2696
    .local v12, "imeTargetStack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_44

    if-eqz v12, :cond_44

    .line 2697
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v3

    goto :goto_45

    :cond_44
    const/4 v3, -0x1

    :goto_45
    move v13, v3

    .line 2698
    .local v13, "imeDockSide":I
    const/4 v3, 0x2

    if-ne v13, v3, :cond_4b

    move v3, v2

    goto :goto_4c

    :cond_4b
    move v3, v1

    :goto_4c
    move v14, v3

    .line 2699
    .local v14, "imeOnTop":Z
    const/4 v3, 0x4

    if-ne v13, v3, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v1

    :goto_53
    move v15, v4

    .line 2700
    .local v15, "imeOnBottom":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v6

    .line 2701
    .local v6, "imeHeight":I
    if-eqz v8, :cond_66

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2702
    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v4

    if-eq v6, v4, :cond_66

    move v4, v2

    goto :goto_67

    :cond_66
    move v4, v1

    :goto_67
    move/from16 v16, v4

    .line 2707
    .local v16, "imeHeightChanged":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v4

    if-nez v4, :cond_90

    if-eqz v11, :cond_8e

    if-eqz v15, :cond_8e

    .line 2708
    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-nez v4, :cond_8e

    .line 2709
    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_8e

    goto :goto_90

    :cond_8e
    move v4, v1

    goto :goto_91

    :cond_90
    :goto_90
    move v4, v2

    :goto_91
    move/from16 v17, v4

    .line 2717
    .local v17, "dockMinimized":Z
    if-eqz v8, :cond_ea

    if-eqz v10, :cond_ea

    if-nez v14, :cond_9f

    if-eqz v15, :cond_9c

    goto :goto_9f

    :cond_9c
    move/from16 v18, v6

    goto :goto_ec

    :cond_9f
    :goto_9f
    if-nez v17, :cond_ea

    .line 2718
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_a8
    if-ltz v4, :cond_de

    .line 2719
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    .line 2720
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    if-ne v2, v3, :cond_ba

    const/4 v2, 0x1

    goto :goto_bb

    :cond_ba
    move v2, v1

    .line 2721
    .local v2, "isDockedOnBottom":Z
    :goto_bb
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_d6

    if-nez v15, :cond_c5

    if-eqz v2, :cond_d6

    .line 2722
    :cond_c5
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v18

    if-eqz v18, :cond_d6

    .line 2723
    if-eqz v15, :cond_d1

    if-eqz v16, :cond_d1

    const/4 v3, 0x1

    goto :goto_d2

    :cond_d1
    move v3, v1

    :goto_d2
    invoke-virtual {v5, v7, v3}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_d9

    .line 2725
    :cond_d6
    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2718
    .end local v2  # "isDockedOnBottom":Z
    .end local v5  # "stack":Lcom/android/server/wm/TaskStack;
    :goto_d9
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x4

    goto :goto_a8

    .line 2728
    .end local v4  # "i":I
    :cond_de
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v2, v15

    move-object v5, v7

    move/from16 v18, v6

    .end local v6  # "imeHeight":I
    .local v18, "imeHeight":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_114

    .line 2717
    .end local v18  # "imeHeight":I
    .restart local v6  # "imeHeight":I
    :cond_ea
    move/from16 v18, v6

    .line 2731
    .end local v6  # "imeHeight":I
    .restart local v18  # "imeHeight":I
    :goto_ec
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f4
    if-ltz v2, :cond_109

    .line 2732
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 2733
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v10, :cond_102

    move v5, v3

    goto :goto_103

    :cond_102
    move v5, v1

    :goto_103
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2731
    .end local v4  # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_f4

    .line 2735
    .end local v2  # "i":I
    :cond_109
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v10

    move-object v5, v7

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    .line 2738
    :goto_114
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    move/from16 v2, v18

    .end local v18  # "imeHeight":I
    .local v2, "imeHeight":I
    invoke-virtual {v1, v8, v2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    .line 2739
    return-void
.end method

.method amendWindowTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "inOutRegion"  # Landroid/graphics/Region;

    .line 2564
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2565
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2566
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2564
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2568
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method animateForIme(FFF)Z
    .registers 12
    .param p1, "interpolatedValue"  # F
    .param p2, "animationTarget"  # F
    .param p3, "dividerAnimationTarget"  # F

    .line 2638
    const/4 v0, 0x0

    .line 2640
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_58

    .line 2641
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2642
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2643
    goto :goto_55

    .line 2646
    :cond_1c
    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_30

    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_30

    cmpl-float v5, p3, v5

    if-nez v5, :cond_30

    .line 2647
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2648
    const/4 v0, 0x1

    goto :goto_4e

    .line 2650
    :cond_30
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2651
    invoke-virtual {v5, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 2652
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2653
    invoke-virtual {v5, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 2654
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v5, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v6, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2659
    :goto_4e
    cmpl-float v4, p1, v4

    if-ltz v4, :cond_55

    .line 2660
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    .line 2640
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_55
    :goto_55
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2664
    .end local v1  # "i":I
    :cond_58
    return v0
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1, "spec"  # Landroid/view/MagnificationSpec;

    .line 4918
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    .line 4919
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_f

    .line 4921
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 4924
    :goto_f
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 4926
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4927
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4928
    return-void
.end method

.method applyRotationLocked(II)V
    .registers 14
    .param p1, "oldRotation"  # I
    .param p2, "rotation"  # I

    .line 1516
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayRotation;->setRotation(I)V

    .line 1517
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isRotatingSeamlessly()Z

    move-result v0

    .line 1518
    .local v0, "rotateSeamlessly":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1519
    move-object v2, v1

    goto :goto_1a

    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 1525
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    .line 1529
    if-eqz v2, :cond_4c

    .line 1530
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const-wide/16 v6, 0x2710

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1532
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1531
    move-object v3, v2

    move v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1534
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1538
    :cond_4c
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$3g7y7M5XrDR3cz8tOp9f3pwWbyQ;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$3g7y7M5XrDR3cz8tOp9f3pwWbyQ;-><init>(Lcom/android/server/wm/DisplayContent;IIZ)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1543
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 1546
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$-XeeexVnAosqA0zfHVCT_Txqwl8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$-XeeexVnAosqA0zfHVCT_Txqwl8;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1556
    if-eqz v0, :cond_78

    .line 1557
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x36

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, p0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1561
    :cond_78
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_81
    if-ltz v1, :cond_9d

    .line 1562
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 1563
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 1564
    .local v3, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget v4, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v4, v5, :cond_9a

    .line 1566
    :try_start_93
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_98} :catch_99

    .line 1569
    goto :goto_9a

    .line 1567
    :catch_99
    move-exception v4

    .line 1561
    .end local v3  # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_9a
    :goto_9a
    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    .line 1575
    .end local v1  # "i":I
    :cond_9d
    if-nez v2, :cond_ac

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_ac

    .line 1576
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1578
    :cond_ac
    return-void
.end method

.method applySurfaceChangesTransaction(Z)V
    .registers 11
    .param p1, "recoveringMemory"  # Z

    .line 3723
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 3725
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 3727
    const/4 v1, 0x0

    .line 3729
    .local v1, "repeats":I
    :cond_a
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3730
    const/4 v3, 0x6

    const-string v4, "WindowManager"

    const-wide/16 v5, 0x20

    if-le v1, v3, :cond_1d

    .line 3731
    const-string v3, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 3733
    goto/16 :goto_9b

    .line 3736
    :cond_1d
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_28

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v7, "On entry to LockedInner"

    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 3739
    :cond_28
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-eqz v3, :cond_33

    .line 3740
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 3743
    :cond_33
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4e

    .line 3744
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_42

    const-string v3, "Computing new config from layout"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3746
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3747
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 3751
    :cond_4e
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_56

    .line 3752
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3756
    :cond_56
    const/4 v3, 0x0

    if-ge v1, v7, :cond_62

    .line 3757
    if-ne v1, v2, :cond_5d

    move v4, v2

    goto :goto_5e

    :cond_5d
    move v4, v3

    :goto_5e
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_67

    .line 3759
    :cond_62
    const-string v7, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :goto_67
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3765
    const-string v3, "applyPostLayoutPolicy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3767
    :try_start_6e
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 3768
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3769
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_83
    .catchall {:try_start_6e .. :try_end_83} :catchall_fa

    .line 3771
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3772
    nop

    .line 3773
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_92

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v4, "after finishPostLayoutPolicyLw"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 3775
    :cond_92
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 3776
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v3, :cond_a

    .line 3778
    :goto_9b
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 3780
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    .line 3782
    const-string v3, "applyWindowSurfaceChanges"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3784
    :try_start_a7
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_f5

    .line 3786
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3787
    nop

    .line 3788
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 3790
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 3791
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v6, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 3797
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    .line 3798
    .local v2, "wallpaperVisible":Z
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v2, v3, :cond_e0

    .line 3799
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 3800
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3803
    :cond_e0
    :goto_e0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 3804
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 3807
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    .line 3808
    .end local v3  # "atoken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_e0

    .line 3809
    :cond_f4
    return-void

    .line 3786
    .end local v2  # "wallpaperVisible":Z
    :catchall_f5
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 3771
    :catchall_fa
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 4948
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4949
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4950
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4952
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4953
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x1

    .line 4972
    .local v2, "needAssignIme":Z
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4973
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isAppAnimating()Z

    move-result v3

    if-nez v3, :cond_35

    .line 4974
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 4975
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4979
    const/4 v2, 0x0

    .line 4984
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4985
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4986
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 4987
    if-ne v2, v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    .line 4986
    :goto_47
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 4988
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4989
    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 5001
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 5002
    return-void
.end method

.method assignStackOrdering()V
    .registers 3

    .line 5033
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 5034
    return-void
.end method

.method assignWindowLayers(Z)V
    .registers 5
    .param p1, "setLayoutNeeded"  # Z

    .line 3202
    const-wide/16 v0, 0x20

    const-string v2, "assignWindowLayers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3203
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3204
    if-eqz p1, :cond_13

    .line 3205
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3212
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3213
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3214
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 4

    .line 2680
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 2681
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2682
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2683
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 2680
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2686
    .end local v0  # "i":I
    :cond_24
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4
    .param p1, "rotation"  # I

    .line 1678
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method calculateSystemGestureExclusion()Landroid/graphics/Region;
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5260
    move-object/from16 v9, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v10

    .line 5261
    .local v10, "unhandled":Landroid/graphics/Region;
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v1, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v0, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 5263
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 5264
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v11

    .line 5265
    .local v11, "leftEdge":Landroid/graphics/Rect;
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 5266
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v12

    .line 5268
    .local v12, "rightEdge":Landroid/graphics/Rect;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v13

    .line 5269
    .local v13, "global":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v14

    .line 5270
    .local v14, "touchableRegion":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .line 5271
    .local v15, "local":Landroid/graphics/Region;
    const/4 v0, 0x2

    new-array v5, v0, [I

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    aput v0, v5, v2

    const/4 v8, 0x1

    aput v0, v5, v8

    .line 5276
    .local v5, "remainingLeftRight":[I
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move-object v4, v15

    move-object v6, v13

    move-object/from16 v16, v13

    move-object v13, v7

    .end local v13  # "global":Landroid/graphics/Region;
    .local v16, "global":Landroid/graphics/Region;
    move-object v7, v11

    move-object/from16 v17, v11

    move v11, v8

    .end local v11  # "leftEdge":Landroid/graphics/Rect;
    .local v17, "leftEdge":Landroid/graphics/Rect;
    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v13, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5324
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 5325
    invoke-virtual {v14}, Landroid/graphics/Region;->recycle()V

    .line 5326
    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    .line 5327
    return-object v16
.end method

.method canAddToastWindowForUid(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 3027
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3029
    .local v0, "focusedWindowForUid":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 3030
    return v1

    .line 3032
    :cond_d
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3035
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 3

    .line 2622
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    .line 2624
    .local v0, "stillDeferringRemoval":Z
    if-nez v0, :cond_f

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_f

    .line 2625
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2626
    const/4 v1, 0x0

    return v1

    .line 2628
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method checkWaitingForWindows()Z
    .registers 7

    .line 3541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 3542
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 3543
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 3544
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 3546
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3565
    .local v2, "visibleWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_16

    .line 3567
    return v1

    .line 3572
    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3574
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v3, :cond_40

    move v3, v1

    goto :goto_41

    :cond_40
    move v3, v0

    .line 3578
    .local v3, "wallpaperEnabled":Z
    :goto_41
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v4, :cond_49

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v4, :cond_9f

    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "******** booted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveWall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " wallEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveKeyguard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :cond_9f
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v4, :cond_aa

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    if-nez v4, :cond_aa

    .line 3588
    return v1

    .line 3593
    :cond_aa
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v4, :cond_bf

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v4, :cond_b8

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    if-eqz v4, :cond_be

    :cond_b8
    if-eqz v3, :cond_bf

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    if-nez v4, :cond_bf

    .line 3595
    :cond_be
    return v1

    .line 3598
    :cond_bf
    return v0
.end method

.method clearImeAdjustAnimation()Z
    .registers 6

    .line 2668
    const/4 v0, 0x0

    .line 2669
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_22

    .line 2670
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2671
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2672
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2673
    const/4 v0, 0x1

    .line 2669
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2676
    .end local v1  # "i":I
    :cond_22
    return v0
.end method

.method computeImeParent()Landroid/view/SurfaceControl;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3425
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3426
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3429
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3430
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 3434
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 13
    .param p1, "updateImeTarget"  # Z

    .line 3287
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "Moving IM target from "

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v0, :cond_2e

    .line 3289
    if-eqz p1, :cond_2d

    .line 3290
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to null since mInputMethodWindow is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3294
    :cond_2d
    return-object v2

    .line 3297
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3298
    .local v0, "curTarget":Lcom/android/server/wm/WindowState;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v4

    if-nez v4, :cond_40

    .line 3299
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_3f

    const-string v1, "Defer updating IME target"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    :cond_3f
    return-object v0

    .line 3306
    :cond_40
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 3307
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 3313
    .local v4, "target":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_5c

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5c

    .line 3314
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3315
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_5c

    .line 3316
    invoke-virtual {v5, v4}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 3317
    .local v6, "betterTarget":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_5c

    .line 3318
    move-object v4, v6

    .line 3323
    .end local v5  # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v6  # "betterTarget":Lcom/android/server/wm/WindowState;
    :cond_5c
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_82

    if-eqz p1, :cond_82

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proposed new IME target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3323
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_82
    if-eqz v0, :cond_9e

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v5, :cond_9e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 3329
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 3330
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_9d

    const-string v1, "Not changing target till current window is closing and not removed"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_9d
    return-object v0

    .line 3335
    :cond_9e
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_be

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Desired input method target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " updateImeTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    :cond_be
    const/4 v5, 0x4

    const-string v6, " Callers="

    const-string v7, ""

    if-nez v4, :cond_104

    .line 3339
    if-eqz p1, :cond_103

    .line 3340
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v8, :cond_fe

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to null."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3341
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_f3

    .line 3342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_f4

    :cond_f3
    nop

    :goto_f4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3340
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_fe
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3346
    :cond_103
    return-object v2

    .line 3349
    :cond_104
    if-eqz p1, :cond_18c

    .line 3350
    if-nez v0, :cond_109

    goto :goto_10b

    :cond_109
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3351
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    :goto_10b
    if-eqz v2, :cond_150

    .line 3356
    const/4 v8, 0x0

    .line 3357
    .local v8, "highestTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v9

    if-eqz v9, :cond_118

    .line 3358
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 3361
    :cond_118
    if-eqz v8, :cond_150

    .line 3362
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v9, :cond_143

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " animating="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3362
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :cond_143
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v9

    if-eqz v9, :cond_150

    .line 3368
    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3369
    return-object v8

    .line 3374
    .end local v8  # "highestTarget":Lcom/android/server/wm/WindowState;
    :cond_150
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v8, :cond_188

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3375
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_17e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_17e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3374
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_188
    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3379
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_18c
    return-object v4
.end method

.method computeImeTargetIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "candidate"  # Lcom/android/server/wm/AppWindowToken;

    .line 3387
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_c

    .line 3388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3390
    :cond_c
    return-void
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 23
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 1706
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v6, v0, v7}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v8

    .line 1707
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v8, v0}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 1708
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1710
    iget v15, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1711
    .local v15, "dw":I
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1712
    .local v5, "dh":I
    const/4 v4, 0x2

    const/4 v3, 0x1

    if-gt v15, v5, :cond_20

    move v0, v3

    goto :goto_21

    :cond_20
    move v0, v4

    :goto_21
    iput v0, v7, Landroid/content/res/Configuration;->orientation:I

    .line 1713
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 1714
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 1715
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v8, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1717
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1718
    .local v2, "density":F
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v12, v8, Landroid/view/DisplayInfo;->rotation:I

    iget v13, v7, Landroid/content/res/Configuration;->uiMode:I

    iget-object v14, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1719
    move v10, v15

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1721
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v12, v8, Landroid/view/DisplayInfo;->rotation:I

    iget v13, v7, Landroid/content/res/Configuration;->uiMode:I

    iget-object v14, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1722
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1725
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v10, v8, Landroid/view/DisplayInfo;->rotation:I

    iget-object v13, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v14, v6, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move v11, v15

    move v12, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 1727
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 1728
    .local v9, "leftInset":I
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1730
    .local v10, "topInset":I
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v8, Landroid/view/DisplayInfo;->appWidth:I

    add-int/2addr v1, v9

    iget v11, v8, Landroid/view/DisplayInfo;->appHeight:I

    add-int/2addr v11, v10

    invoke-virtual {v0, v9, v10, v1, v11}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 1733
    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v11, 0x3

    if-eq v0, v3, :cond_90

    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v11, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v1, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    move v1, v3

    .line 1736
    .local v1, "rotated":Z
    :goto_91
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0x301

    .line 1737
    iget v13, v8, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_9e

    .line 1738
    const/16 v13, 0x200

    goto :goto_a0

    .line 1739
    :cond_9e
    const/16 v13, 0x100

    :goto_a0
    or-int/2addr v0, v13

    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 1741
    iget v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v13

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1742
    iget v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v13

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1743
    iget v13, v7, Landroid/content/res/Configuration;->uiMode:I

    iget-object v14, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v0, p0

    move/from16 v16, v2

    .end local v2  # "density":F
    .local v16, "density":F
    move v2, v13

    move v13, v3

    move v3, v15

    move v12, v4

    move v4, v5

    move/from16 v18, v5

    .end local v5  # "dh":I
    .local v18, "dh":I
    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, v7, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1745
    iget v0, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 1747
    nop

    .line 1748
    invoke-virtual {v8}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_e1

    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1749
    const/16 v0, 0x8

    goto :goto_e2

    .line 1750
    :cond_e1
    const/4 v0, 0x4

    .line 1751
    :goto_e2
    invoke-virtual {v8}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v2

    if-eqz v2, :cond_f2

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 1752
    move v2, v12

    goto :goto_f3

    .line 1753
    :cond_f2
    move v2, v13

    :goto_f3
    or-int/2addr v0, v2

    iput v0, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 1757
    iput v13, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 1758
    iput v13, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 1759
    iput v13, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1761
    const/4 v0, 0x0

    .line 1762
    .local v0, "keyboardPresence":I
    const/4 v2, 0x0

    .line 1763
    .local v2, "navigationPresence":I
    iget-object v3, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v3

    .line 1764
    .local v3, "devices":[Landroid/view/InputDevice;
    if-eqz v3, :cond_10a

    array-length v4, v3

    goto :goto_10b

    :cond_10a
    const/4 v4, 0x0

    .line 1765
    .local v4, "len":I
    :goto_10b
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10c
    if-ge v5, v4, :cond_183

    .line 1766
    aget-object v14, v3, v5

    .line 1768
    .local v14, "device":Landroid/view/InputDevice;
    invoke-virtual {v14}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v19

    if-eqz v19, :cond_119

    .line 1769
    move/from16 v20, v1

    goto :goto_17b

    .line 1774
    :cond_119
    iget-object v12, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v14}, Landroid/view/InputDevice;->getId()I

    move-result v13

    .line 1775
    iget v11, v8, Landroid/view/DisplayInfo;->type:I

    move/from16 v20, v1

    .end local v1  # "rotated":Z
    .local v20, "rotated":Z
    const/4 v1, 0x5

    if-ne v11, v1, :cond_12a

    const/4 v1, 0x0

    goto :goto_12c

    :cond_12a
    iget v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1774
    :goto_12c
    invoke-virtual {v12, v13, v1}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v1

    if-nez v1, :cond_133

    .line 1776
    goto :goto_17b

    .line 1779
    :cond_133
    invoke-virtual {v14}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 1780
    .local v1, "sources":I
    invoke-virtual {v14}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_13f

    .line 1781
    const/4 v11, 0x2

    goto :goto_140

    :cond_13f
    const/4 v11, 0x1

    .line 1783
    .local v11, "presenceFlag":I
    :goto_140
    iget-object v12, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v12, :cond_150

    .line 1784
    and-int/lit16 v12, v1, 0x1002

    const/16 v13, 0x1002

    if-ne v12, v13, :cond_153

    .line 1785
    const/4 v12, 0x3

    iput v12, v7, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_153

    .line 1788
    :cond_150
    const/4 v12, 0x1

    iput v12, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 1791
    :cond_153
    :goto_153
    const v12, 0x10004

    and-int v13, v1, v12

    if-ne v13, v12, :cond_160

    .line 1792
    const/4 v12, 0x3

    iput v12, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1793
    or-int/2addr v2, v11

    const/4 v12, 0x2

    goto :goto_172

    .line 1794
    :cond_160
    const/4 v12, 0x3

    and-int/lit16 v13, v1, 0x201

    const/16 v12, 0x201

    if-ne v13, v12, :cond_171

    iget v12, v7, Landroid/content/res/Configuration;->navigation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_171

    .line 1796
    const/4 v12, 0x2

    iput v12, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1797
    or-int/2addr v2, v11

    goto :goto_172

    .line 1794
    :cond_171
    const/4 v12, 0x2

    .line 1800
    :goto_172
    invoke-virtual {v14}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v13

    if-ne v13, v12, :cond_17b

    .line 1801
    iput v12, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 1802
    or-int/2addr v0, v11

    .line 1765
    .end local v1  # "sources":I
    .end local v11  # "presenceFlag":I
    .end local v14  # "device":Landroid/view/InputDevice;
    :cond_17b
    :goto_17b
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_10c

    .end local v20  # "rotated":Z
    .local v1, "rotated":Z
    :cond_183
    move/from16 v20, v1

    .line 1806
    .end local v1  # "rotated":Z
    .end local v5  # "i":I
    .restart local v20  # "rotated":Z
    iget v1, v7, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_195

    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v1, :cond_195

    .line 1807
    const/4 v1, 0x2

    iput v1, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1808
    or-int/lit8 v2, v2, 0x1

    .line 1813
    :cond_195
    iget v1, v7, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_19d

    const/16 v17, 0x1

    goto :goto_19f

    :cond_19d
    const/16 v17, 0x0

    :goto_19f
    move/from16 v1, v17

    .line 1814
    .local v1, "hardKeyboardAvailable":Z
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v1, v5, :cond_1bb

    .line 1815
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v5, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 1816
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x16

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1817
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1820
    :cond_1bb
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1823
    const/4 v5, 0x1

    iput v5, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1824
    iput v5, v7, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1825
    iput v5, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1826
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5, v7, v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 1827
    return-void
.end method

.method configureDisplayPolicy()V
    .registers 10

    .line 1581
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1582
    .local v0, "width":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1585
    .local v1, "height":I
    if-le v0, v1, :cond_9

    .line 1586
    move v2, v1

    .line 1587
    .local v2, "shortSize":I
    move v3, v0

    .local v3, "longSize":I
    goto :goto_b

    .line 1589
    .end local v2  # "shortSize":I
    .end local v3  # "longSize":I
    :cond_9
    move v2, v0

    .line 1590
    .restart local v2  # "shortSize":I
    move v3, v1

    .line 1593
    .restart local v3  # "longSize":I
    :goto_b
    mul-int/lit16 v4, v2, 0xa0

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    div-int/2addr v4, v5

    .line 1594
    .local v4, "shortSizeDp":I
    mul-int/lit16 v6, v3, 0xa0

    div-int/2addr v6, v5

    .line 1596
    .local v6, "longSizeDp":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1597
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, v0, v1, v4, v6}, Lcom/android/server/wm/DisplayRotation;->configure(IIII)V

    .line 1599
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1600
    invoke-virtual {p0, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    .line 1599
    invoke-virtual {v5, v7, v8}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1603
    const/4 v5, 0x0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/wm/DisplayContent;->isNonDecorDisplayCloseToSquare(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    .line 1604
    return-void
.end method

.method continueUpdateImeTarget()V
    .registers 3

    .line 5048
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_5

    .line 5049
    return-void

    .line 5052
    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5053
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_10

    .line 5054
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5056
    :cond_10
    return-void
.end method

.method deferUpdateImeTarget()V
    .registers 2

    .line 5040
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5041
    return-void
.end method

.method destroyLeakedSurfaces()Z
    .registers 3

    .line 3236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3237
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3261
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 2857
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2858
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display: mDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2860
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2861
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2862
    const-string v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2863
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_59

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_59

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_76

    .line 2866
    :cond_59
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2867
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2868
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2870
    :cond_76
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_7f

    .line 2871
    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    :cond_7f
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2875
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2876
    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2878
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2879
    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2880
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2881
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2882
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLayoutNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTouchExcludeRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2888
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2889
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2890
    const-string v2, "mDeferredRotationPauseCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2892
    const-string v2, "  mCurrentFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2893
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v2, v3, :cond_147

    .line 2894
    const-string v2, "  mLastFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2896
    :cond_147
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "    "

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-lez v2, :cond_18c

    .line 2897
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2898
    const-string v2, "  Windows losing focus:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_163
    if-ltz v2, :cond_18c

    .line 2900
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 2901
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2902
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2903
    if-eqz p3, :cond_186

    .line 2904
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_189

    .line 2907
    :cond_186
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2899
    .end local v6  # "w":Lcom/android/server/wm/WindowState;
    :goto_189
    add-int/lit8 v2, v2, -0x1

    goto :goto_163

    .line 2911
    .end local v2  # "i":I
    :cond_18c
    const-string v2, "  mFocusedApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2912
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    if-eqz v2, :cond_1a8

    .line 2913
    const-string v2, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2914
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    :cond_1a8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2918
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2921
    const-string v2, "mSystemGestureExclusion="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2922
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_1c6

    .line 2923
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1cb

    .line 2925
    :cond_1c6
    const-string v2, "<no lstnrs>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    :goto_1cb
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Application tokens in top down Z order:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "stackNdx":I
    :goto_1e9
    if-ltz v2, :cond_208

    .line 2931
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 2932
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p3}, Lcom/android/server/wm/TaskStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2930
    .end local v6  # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e9

    .line 2935
    .end local v2  # "stackNdx":I
    :cond_208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2936
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_245

    .line 2937
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2938
    const-string v2, "  Exiting tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_222
    if-ltz v2, :cond_245

    .line 2940
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 2941
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    const-string v6, "  Exiting #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2942
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2943
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 2944
    invoke-virtual {v5, p1, v3, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2939
    .end local v5  # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_222

    .line 2948
    .end local v2  # "i":I
    :cond_245
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2951
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 2952
    .local v2, "homeStack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_269

    .line 2953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "homeStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    :cond_269
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 2956
    .local v3, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_28a

    .line 2957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pinnedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    :cond_28a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 2960
    .local v4, "splitScreenPrimaryStack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_2ab

    .line 2961
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "splitScreenPrimaryStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2964
    :cond_2ab
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2965
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2966
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2967
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2969
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2970
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2971
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2972
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2973
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2974
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2975
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2976
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2978
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2979
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z

    .line 3484
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3485
    return-void

    .line 3487
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

    .line 3488
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3489
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_4e

    .line 3490
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 3491
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3492
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3493
    if-eqz p2, :cond_4a

    .line 3494
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 3495
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_4d

    .line 3497
    :cond_4a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3499
    .end local v1  # "token":Lcom/android/server/wm/WindowToken;
    :goto_4d
    goto :goto_29

    .line 3501
    :cond_4e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 3502
    :cond_66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3503
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 3504
    const-string v1, "  mOpeningApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3506
    :cond_7b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_8d

    .line 3507
    const-string v1, "  mClosingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3509
    :cond_8d
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_9f

    .line 3510
    const-string v1, "  mChangingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3514
    :cond_9f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3515
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "subPrefix"  # Ljava/lang/String;

    .line 3518
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3519
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3524
    return-void
.end method

.method executeAppTransition()V
    .registers 3

    .line 5100
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 5101
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_3b

    .line 5102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execute app transition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 5103
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5102
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 5106
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5108
    :cond_47
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 2126
    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 3062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3064
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3066
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_19

    .line 3067
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v1, :cond_18

    const-string v1, "WindowManager"

    const-string v2, "findFocusedWindow: No focusable windows."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :cond_18
    return-object v0

    .line 3070
    :cond_19
    return-object v1
.end method

.method findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .registers 3
    .param p1, "topFocusedDisplayId"  # I

    .line 3057
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_c

    .line 3058
    :cond_a
    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3057
    :goto_10
    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .registers 8
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 2499
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 2500
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    .line 2501
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_15
    const/4 v2, 0x0

    if-ltz v1, :cond_3e

    .line 2502
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2503
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 2504
    return-object v2

    .line 2507
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3, p1, p2, v0, v2}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    .line 2508
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v2, :cond_3b

    .line 2509
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v2

    .line 2501
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 2512
    .end local v1  # "stackNdx":I
    :cond_3e
    return-object v2
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2195
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 8
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2167
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_26

    .line 2168
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_25

    .line 2169
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2170
    .local v2, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2171
    goto :goto_22

    .line 2174
    :cond_1b
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2175
    return v0

    .line 2168
    .end local v2  # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1  # "i":I
    :cond_25
    goto :goto_48

    .line 2179
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 2180
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v1, :cond_48

    .line 2181
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2182
    .local v3, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2183
    goto :goto_45

    .line 2186
    :cond_3e
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2187
    return v0

    .line 2180
    .end local v3  # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 2191
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_48
    :goto_48
    const/4 v0, 0x0

    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1028
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_8

    .line 1029
    const/4 v1, 0x0

    return-object v1

    .line 1031
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 2

    .line 1126
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .line 1015
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1130
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    .line 1138
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .registers 2

    .line 1143
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .registers 2

    .line 1996
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 2

    .line 5066
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .registers 2

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method getLastHasContent()Z
    .registers 2

    .line 5073
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return v0
.end method

.method getLastOrientation()I
    .registers 2

    .line 1179
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .registers 2

    .line 1183
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLocationInParentWindow()Landroid/graphics/Point;
    .registers 2

    .line 5218
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 5439
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 5440
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 5442
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 2987
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

    .line 3854
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ge v0, v1, :cond_8

    .line 3855
    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    .line 3854
    :goto_9
    return v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 7
    .param p1, "top"  # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3438
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 3439
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 3443
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3446
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3466
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_25

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v2, :cond_25

    move v1, v2

    :cond_25
    return v1
.end method

.method getOrientation()I
    .registers 6

    .line 2200
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2202
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    if-eqz v1, :cond_a

    .line 2203
    const/4 v1, 0x2

    return v1

    .line 2206
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_69

    .line 2207
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v2, -0x1

    const-string v3, "Display id="

    const-string v4, "WindowManager"

    if-eq v1, v2, :cond_3e

    .line 2208
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is frozen, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_3b
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v1

    .line 2215
    :cond_3e
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 2221
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is frozen while keyguard locked, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :cond_66
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v1

    .line 2226
    :cond_69
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getOrientation()I

    move-result v1

    .line 2227
    .local v1, "orientation":I
    const/4 v2, -0x2

    if-eq v1, v2, :cond_73

    .line 2228
    return v1

    .line 2233
    .end local v1  # "orientation":I
    :cond_73
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v1

    return v1
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 5192
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 2039
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .registers 2

    .line 2000
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getPreferredOptionsPanelGravity()I
    .registers 10

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 1966
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const v3, 0x800053

    const/16 v4, 0x55

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x51

    if-ge v1, v2, :cond_1e

    .line 1968
    if-eq v0, v7, :cond_1d

    if-eq v0, v6, :cond_1c

    if-eq v0, v5, :cond_1b

    .line 1971
    return v8

    .line 1977
    :cond_1b
    return v3

    .line 1975
    :cond_1c
    return v8

    .line 1973
    :cond_1d
    return v4

    .line 1982
    :cond_1e
    if-eq v0, v7, :cond_27

    if-eq v0, v6, :cond_26

    if-eq v0, v5, :cond_25

    .line 1985
    return v4

    .line 1991
    :cond_25
    return v8

    .line 1989
    :cond_26
    return v3

    .line 1987
    :cond_27
    return v8
.end method

.method getRotation()I
    .registers 2

    .line 1169
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 4884
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2023
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 2035
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 2413
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2414
    return-void
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 4
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 2059
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
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

    .line 2064
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;
    .registers 3
    .param p1, "windowingMode"  # I

    .line 2051
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 6
    .param p1, "xf"  # F
    .param p2, "yf"  # F

    .line 2998
    float-to-int v0, p1

    .line 2999
    .local v0, "x":I
    float-to-int v1, p2

    .line 3000
    .local v1, "y":I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3020
    .local v2, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v2
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

    .line 2073
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowCornerRadius()F
    .registers 2

    .line 1019
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    return v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 3
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 1023
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method getWindowingLayer()Landroid/view/SurfaceControl;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5223
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransition()V
    .registers 6

    .line 5114
    const/4 v0, 0x0

    .line 5116
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 5118
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_20

    .line 5119
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 5120
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5118
    .end local v3  # "token":Landroid/os/IBinder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 5122
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5124
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    .line 5126
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 5128
    or-int/2addr v0, v2

    .line 5129
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_39

    .line 5130
    const-string v1, "WindowManager"

    const-string v3, "Wallpaper layer changed: assigning layers + relayout"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_39
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5133
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 5136
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 5138
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5139
    return-void
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v0

    return v0
.end method

.method hasAccess(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 2007
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .registers 3

    .line 3635
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3637
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method hasSplitScreenPrimaryStack()Z
    .registers 2

    .line 2027
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
    .registers 5

    .line 2259
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2260
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_13

    .line 2262
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2263
    .local v1, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_13

    .line 2264
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 2268
    .end local v1  # "newDisplayInfo":Landroid/view/DisplayInfo;
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2270
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2271
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2272
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2273
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2274
    return-void
.end method

.method initializeDisplayOverrideConfiguration()V
    .registers 3

    .line 1238
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    if-eqz v0, :cond_b

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1241
    :cond_b
    return-void
.end method

.method isInputMethodClientFocus(II)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "pid"  # I

    .line 3614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3615
    .local v1, "imFocus":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_8

    .line 3616
    return v0

    .line 3619
    :cond_8
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_60

    .line 3620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last focus: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    :cond_60
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_a2

    .line 3626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IM target uid/pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting client uid/pid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    :cond_a2
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    if-ne v2, p1, :cond_af

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-ne v2, p2, :cond_af

    const/4 v0, 0x1

    :cond_af
    return v0
.end method

.method isLayoutNeeded()Z
    .registers 2

    .line 3480
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isNextTransitionForward()Z
    .registers 3

    .line 5143
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 5144
    .local v0, "transit":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method isPrivate()Z
    .registers 2

    .line 2011
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

    .line 1011
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

    .line 2633
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .registers 4
    .param p1, "windowingMode"  # I

    .line 2992
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2993
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isUntrustedVirtualDisplay()Z
    .registers 3

    .line 5164
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5165
    invoke-virtual {v0}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 5164
    :goto_16
    return v0
.end method

.method isVisible()Z
    .registers 2

    .line 2131
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$applyRotationLocked$10$DisplayContent(IIZLcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "oldRotation"  # I
    .param p2, "rotation"  # I
    .param p3, "rotateSeamlessly"  # Z
    .param p4, "w"  # Lcom/android/server/wm/WindowState;

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 1541
    return-void
.end method

.method public synthetic lambda$applyRotationLocked$11$DisplayContent(ZLcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "rotateSeamlessly"  # Z
    .param p2, "w"  # Lcom/android/server/wm/WindowState;

    .line 1547
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    if-nez p1, :cond_2d

    .line 1548
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set mOrientationChanging of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_21
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1550
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1551
    iput v2, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1553
    :cond_2d
    iput-boolean v1, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 1554
    return-void
.end method

.method public synthetic lambda$calculateSystemGestureExclusion$26$DisplayContent(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "unhandled"  # Landroid/graphics/Region;
    .param p2, "touchableRegion"  # Landroid/graphics/Region;
    .param p3, "local"  # Landroid/graphics/Region;
    .param p4, "remainingLeftRight"  # [I
    .param p5, "global"  # Landroid/graphics/Region;
    .param p6, "leftEdge"  # Landroid/graphics/Rect;
    .param p7, "rightEdge"  # Landroid/graphics/Rect;
    .param p8, "w"  # Lcom/android/server/wm/WindowState;

    .line 5277
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5278
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_89

    .line 5279
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_89

    .line 5285
    :cond_1d
    invoke-virtual {p8, p2}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 5286
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5288
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 5289
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_4d

    .line 5291
    :cond_2f
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 5294
    iget v0, p8, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p3, v0}, Landroid/graphics/Region;->scale(F)V

    .line 5295
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 5296
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 5299
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5303
    .end local v0  # "frame":Landroid/graphics/Rect;
    :goto_4d
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    invoke-static {p8, v0}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 5306
    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-static {p3, p5, p6, v1}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;I)I

    move-result v1

    aput v1, p4, v0

    .line 5310
    const/4 v0, 0x1

    aget v1, p4, v0

    invoke-static {p3, p5, p7, v1}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;I)I

    move-result v1

    aput v1, p4, v0

    .line 5314
    invoke-static {p3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 5315
    .local v0, "middle":Landroid/graphics/Region;
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p6, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5316
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p7, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5317
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5318
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5319
    .end local v0  # "middle":Landroid/graphics/Region;
    goto :goto_83

    .line 5320
    :cond_7e
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p5, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5322
    :goto_83
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5323
    return-void

    .line 5280
    :cond_89
    :goto_89
    return-void
.end method

.method public synthetic lambda$checkWaitingForWindows$20$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 3547
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3548
    return v1

    .line 3550
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3551
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e5

    if-ne v0, v2, :cond_23

    .line 3552
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    goto :goto_52

    .line 3553
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

    .line 3556
    :cond_32
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_3d

    .line 3557
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_52

    .line 3558
    :cond_3d
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_52

    .line 3559
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_52

    .line 3555
    :cond_50
    :goto_50
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 3562
    :cond_52
    :goto_52
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$destroyLeakedSurfaces$16$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 3238
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3239
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_7

    .line 3240
    return-void

    .line 3242
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

    .line 3243
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

    .line 3248
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3249
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3250
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_a1

    .line 3251
    :cond_62
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 3252
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

    .line 3255
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_9c

    const/4 v1, 0x0

    const-string v2, "LEAK DESTROY"

    invoke-static {p1, v2, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 3256
    :cond_9c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3257
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3259
    :cond_a1
    :goto_a1
    return-void
.end method

.method public synthetic lambda$getNeedsMenu$17$DisplayContent(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "top"  # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 3447
    if-ne p3, p1, :cond_4

    .line 3449
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3451
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 3452
    return v1

    .line 3455
    :cond_a
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 3456
    return v2

    .line 3460
    :cond_12
    if-ne p3, p2, :cond_15

    .line 3461
    return v2

    .line 3463
    :cond_15
    return v1
.end method

.method public synthetic lambda$getTouchableWinAtPointLocked$13$DisplayContent(IILcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 3001
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3002
    .local v0, "flags":I
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3003
    return v2

    .line 3005
    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    .line 3006
    return v2

    .line 3009
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 3010
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3011
    return v2

    .line 3014
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3016
    and-int/lit8 v1, v0, 0x28

    .line 3017
    .local v1, "touchFlags":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_30

    if-nez v1, :cond_31

    :cond_30
    const/4 v2, 0x1

    :cond_31
    return v2
.end method

.method public synthetic lambda$new$0$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 595
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 596
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 597
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    .line 598
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 599
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 600
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 601
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_2c

    .line 602
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 608
    :cond_2c
    return-void
.end method

.method public synthetic lambda$new$2$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 633
    .local v0, "lostFocusUid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 634
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_27

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_27

    .line 635
    const/16 v2, 0x34

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 636
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 640
    :cond_27
    return-void
.end method

.method public synthetic lambda$new$3$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 644
    .local v0, "focusedApp":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for focus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", canReceive="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3c

    .line 648
    return v3

    .line 651
    :cond_3c
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 654
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_72

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v4, :cond_48

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v4, :cond_72

    .line 655
    :cond_48
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v4, :cond_71

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v5, :cond_65

    const-string v5, "removed"

    goto :goto_67

    :cond_65
    const-string v5, "sendingToBottom"

    :goto_67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_71
    return v3

    .line 660
    :cond_72
    const/4 v3, 0x1

    if-nez v0, :cond_90

    .line 661
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_8d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp=null using new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_8d
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 664
    return v3

    .line 667
    :cond_90
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v4

    if-nez v4, :cond_b1

    .line 669
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_ae

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp windows not focusable using new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_ae
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 672
    return v3

    .line 677
    :cond_b1
    if-eqz v1, :cond_dc

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_dc

    .line 678
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_dc

    .line 680
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_d8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Reached focused app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_d8
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 683
    return v3

    .line 687
    :cond_dc
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_f4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Found new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_f4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 689
    return v3
.end method

.method public synthetic lambda$new$4$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 13
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 696
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 698
    .local v0, "gone":Z
    :goto_19
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_f2

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_f2

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1ST PASS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": gone="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mHaveFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLayoutAttached="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " config reported="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 703
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    const-string v5, " parentHidden="

    const-string v6, " hiddenRequested="

    const-string v7, " hidden="

    const-string v8, " mRelayoutCalled="

    if-eqz v0, :cond_af

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  GONE: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 704
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_99

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_99

    move v6, v2

    goto :goto_9a

    :cond_99
    move v6, v1

    :goto_9a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 703
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 707
    :cond_af
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  VIS: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 708
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_dd

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_dd

    move v6, v2

    goto :goto_de

    :cond_dd
    move v6, v1

    :goto_de
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 707
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v3  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_f2
    :goto_f2
    if-eqz v0, :cond_fc

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v3, :cond_fc

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v3, :cond_16b

    :cond_fc
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_16b

    .line 717
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v3, :cond_107

    .line 718
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 720
    :cond_107
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v3, v5, :cond_111

    .line 723
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 725
    :cond_111
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 726
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 727
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 728
    .local v1, "firstLayout":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 729
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 733
    if-eqz v1, :cond_12e

    .line 734
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 737
    :cond_12e
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_137

    .line 738
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 741
    :cond_137
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_16b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LAYOUT: mFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mContainingFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v1  # "firstLayout":Z
    :cond_16b
    return-void
.end method

.method public synthetic lambda$new$5$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 748
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_b0

    .line 749
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2ND PASS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHaveFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mViewVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRelayoutCalled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 756
    return-void

    .line 758
    :cond_4b
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_55

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_5d

    :cond_55
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_5d

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_bc

    .line 760
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_64

    .line 762
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 764
    :cond_64
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 765
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 766
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 767
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 768
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_bc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LAYOUT: mFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContainingFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 772
    :cond_b0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_bc

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 777
    :cond_bc
    :goto_bc
    return-void
.end method

.method public synthetic lambda$new$6$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 780
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking window @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 781
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$7$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 786
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
    .registers 12
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 791
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 793
    .local v1, "obscuredChanged":Z
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 796
    .local v2, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 797
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v5, 0x0

    if-nez v4, :cond_94

    .line 798
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    .line 800
    .local v4, "isDisplayed":Z
    if-eqz v4, :cond_33

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 803
    iput-object p1, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 804
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v3, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 807
    :cond_33
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 808
    invoke-virtual {v2, p1, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v8

    or-int/2addr v7, v8

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 812
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_94

    if-eqz v4, :cond_94

    .line 813
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 814
    .local v6, "type":I
    const/16 v7, 0x7d8

    if-eq v6, v7, :cond_60

    const/16 v7, 0x7da

    if-eq v6, v7, :cond_60

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_64

    .line 816
    :cond_60
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v3, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 818
    :cond_64
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_7c

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_7c

    .line 820
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 823
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v7

    .line 824
    invoke-virtual {v7, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v7

    .line 825
    .local v7, "preferredModeId":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v8, :cond_94

    if-eqz v7, :cond_94

    .line 827
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v7, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 832
    .end local v4  # "isDisplayed":Z
    .end local v6  # "type":I
    .end local v7  # "preferredModeId":I
    :cond_94
    if-eqz v1, :cond_a9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_a9

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 835
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 838
    :cond_a9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 840
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 843
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 846
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_13d

    .line 848
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v6

    .line 849
    .local v6, "committed":Z
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_13d

    if-eqz v6, :cond_13d

    .line 850
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v7, v8, :cond_d7

    .line 854
    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v7, v3

    iput v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 855
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v7, :cond_d7

    .line 856
    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v8, "dream and commitFinishDrawingLocked true"

    invoke-virtual {v0, v8, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 861
    :cond_d7
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_10d

    .line 862
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_fa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First draw done in potential wallpaper target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WindowManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_fa
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 865
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 866
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_10d

    .line 867
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v7, "wallpaper and commitFinishDrawingLocked true"

    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 874
    :cond_10d
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_125

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_125

    .line 876
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v5, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 879
    :cond_125
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v3

    .line 880
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v3

    .line 881
    .local v3, "preferredModeId":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v5, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v5, :cond_13d

    if-eqz v3, :cond_13d

    .line 883
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v3, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 889
    .end local v3  # "preferredModeId":I
    .end local v6  # "committed":Z
    :cond_13d
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 890
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_157

    .line 891
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 892
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 893
    .local v5, "updateAllDrawn":Z
    if-eqz v5, :cond_157

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_157

    .line 894
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 898
    .end local v5  # "updateAllDrawn":Z
    :cond_157
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_177

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_177

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_177

    .line 899
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 902
    :cond_177
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    .line 903
    return-void
.end method

.method public synthetic lambda$onSeamlessRotationTimeout$25$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 4005
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_5

    .line 4006
    return-void

    .line 4008
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4009
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 4010
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    .line 4011
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 4012
    return-void
.end method

.method public synthetic lambda$onWindowFreezeTimeout$23$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 3697
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3698
    return-void

    .line 3700
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 3701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing orientation change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    return-void
.end method

.method public synthetic lambda$waitForAllWindowsDrawn$24$DisplayContent(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "policy"  # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "w"  # Lcom/android/server/wm/WindowState;

    .line 3711
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    .line 3712
    .local v0, "keyguard":Z
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_12

    if-eqz v0, :cond_21

    .line 3713
    :cond_12
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3715
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 3716
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3718
    :cond_21
    return-void
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .registers 4

    .line 3220
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3221
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3223
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3225
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3228
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3229
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3230
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3231
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 6
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 4889
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 4890
    .local v0, "s":Landroid/view/SurfaceSession;
    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 4891
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    if-nez p1, :cond_18

    .line 4892
    return-object v1

    .line 4895
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4896
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 4895
    return-object v2
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 4906
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 4907
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4906
    return-object v0
.end method

.method makeSurface(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 4
    .param p1, "s"  # Landroid/view/SurfaceSession;

    .line 4878
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 4879
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4878
    return-object v0
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 7
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"  # Z

    .line 2425
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2426
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    const-string v1, "Trying to move stackId="

    if-eqz v0, :cond_3c

    .line 2430
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v2, v3, :cond_1b

    .line 2435
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    .line 2436
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 2437
    return-void

    .line 2431
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to its current displayId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2427
    :cond_3c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " which is not currently attached to any display"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method okToAnimate()Z
    .registers 2

    .line 4055
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4056
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4055
    :goto_17
    return v0
.end method

.method okToDisplay()Z
    .registers 5

    .line 4047
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 4048
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4049
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 4048
    :goto_1e
    return v1

    .line 4051
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

    .line 2136
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 2137
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2138
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2082
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2083
    .local v0, "lastOrientation":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2084
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v1, :cond_10

    .line 2085
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2088
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3e

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x67b

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x67c

    .line 2092
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2089
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2095
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onConfigurationChanged(Lcom/android/server/wm/DisplayContent;II)V

    .line 2099
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    if-eqz v1, :cond_5e

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 2100
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 2102
    :cond_5e
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 9
    .param p1, "freezeDisplayToken"  # Landroid/os/IBinder;
    .param p2, "requestingContainer"  # Lcom/android/server/wm/ConfigurationContainer;

    .line 1251
    nop

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1251
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1256
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v2

    .line 1257
    .local v2, "handled":Z
    if-nez v0, :cond_15

    .line 1258
    return v2

    .line 1261
    :cond_15
    if-eqz v2, :cond_39

    instance-of v3, p2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_39

    .line 1262
    move-object v3, p2

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1263
    .local v3, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 1263
    invoke-virtual {v4, v0, v3, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    move-result v1

    .line 1265
    .local v1, "kept":Z
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1266
    if-nez v1, :cond_38

    .line 1267
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1269
    .end local v1  # "kept":Z
    .end local v3  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_38
    goto :goto_45

    .line 1272
    :cond_39
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x0

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 1272
    invoke-virtual {v3, v0, v4, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    .line 1275
    :goto_45
    return v2
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 4042
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4043
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4044
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 2248
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    .line 2250
    return-void
.end method

.method onParentChanged()V
    .registers 1

    .line 4942
    return-void
.end method

.method onSeamlessRotationTimeout()V
    .registers 3

    .line 4002
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4004
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4014
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    .line 4015
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4017
    :cond_17
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 2077
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 2078
    return-void
.end method

.method onWindowFreezeTimeout()V
    .registers 3

    .line 3693
    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 3696
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3705
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3706
    return-void
.end method

.method pauseRotationLocked()V
    .registers 2

    .line 1200
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    .line 1201
    return-void
.end method

.method performLayout(ZZ)V
    .registers 6
    .param p1, "initial"  # Z
    .param p2, "updateInputWindows"  # Z

    .line 3859
    const-wide/16 v0, 0x20

    const-string v2, "performLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3861
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 3863
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3864
    nop

    .line 3865
    return-void

    .line 3863
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method pointWithinAppWindow(II)Z
    .registers 9
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 2477
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2478
    .local v1, "targetWindowType":[I
    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;

    invoke-direct {v3, v1, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;-><init>([III)V

    const-class v4, Lcom/android/server/wm/WindowState;

    .line 2487
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 2478
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    .line 2488
    .local v3, "fn":Ljava/util/function/Consumer;
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2489
    move-object v4, v3

    check-cast v4, Lcom/android/internal/util/function/pooled/PooledConsumer;

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2490
    aget v4, v1, v2

    if-gt v0, v4, :cond_2c

    aget v4, v1, v2

    const/16 v5, 0x63

    if-gt v4, v5, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .registers 5
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p3, "includingParents"  # Z

    .line 2465
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2466
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 236
    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/TaskStack;Z)V
    .registers 5
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/TaskStack;
    .param p3, "includingParents"  # Z

    .line 2469
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 2470
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 2471
    return-void
.end method

.method preOnConfigurationChanged()V
    .registers 4

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 2113
    .local v0, "dividerController":Lcom/android/server/wm/DockedStackDividerController;
    if-eqz v0, :cond_d

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    .line 2117
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 2119
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-eqz v1, :cond_1a

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    .line 2122
    :cond_1a
    return-void
.end method

.method prepareAppTransition(IZ)V
    .registers 4
    .param p1, "transit"  # I
    .param p2, "alwaysKeepCurrent"  # Z

    .line 5086
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 5087
    return-void
.end method

.method prepareAppTransition(IZIZ)V
    .registers 7
    .param p1, "transit"  # I
    .param p2, "alwaysKeepCurrent"  # Z
    .param p3, "flags"  # I
    .param p4, "forceOverride"  # Z

    .line 5092
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v0

    .line 5094
    .local v0, "prepared":Z
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5095
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 5097
    :cond_11
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 2742
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2743
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2744
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 2742
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2746
    .end local v0  # "stackNdx":I
    :cond_18
    return-void
.end method

.method prepareSurfaces()V
    .registers 11

    .line 5006
    const-wide/16 v0, 0x20

    const-string v2, "prepareSurfaces"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5008
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5009
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 5010
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 5011
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 5012
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5013
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v6, v4, v6

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v7, v4, v7

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v8, v4, v8

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v9, v4, v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 5016
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 5018
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5019
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    .line 5018
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 5022
    :cond_60
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 5026
    invoke-static {v3}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_6b

    .line 5028
    .end local v2  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v3  # "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5029
    nop

    .line 5030
    return-void

    .line 5028
    :catchall_6b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 5
    .param p1, "token"  # Lcom/android/server/wm/WindowToken;

    .line 1087
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1088
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-ne v0, p0, :cond_7

    .line 1089
    return-void

    .line 1091
    :cond_7
    if-eqz v0, :cond_29

    .line 1092
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1095
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1097
    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_29

    .line 1100
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 1104
    :cond_29
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1105
    return-void
.end method

.method reapplyMagnificationSpec()V
    .registers 3

    .line 4931
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_d

    .line 4932
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4934
    :cond_d
    return-void
.end method

.method reevaluateStatusBarVisibility()V
    .registers 3

    .line 3686
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 3687
    .local v0, "visibility":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3688
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3690
    :cond_17
    return-void
.end method

.method registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5077
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5078
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3
    .param p1, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransitionController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1188
    return-void
.end method

.method registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 6
    .param p1, "listener"  # Landroid/view/ISystemGestureExclusionListener;

    .line 5375
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5377
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 5378
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    .local v0, "changed":Z
    goto :goto_14

    .line 5380
    .end local v0  # "changed":Z
    :cond_13
    const/4 v0, 0x0

    .line 5383
    .restart local v0  # "changed":Z
    :goto_14
    if-nez v0, :cond_26

    .line 5387
    :try_start_16
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v1, v2}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 5390
    goto :goto_26

    .line 5388
    :catch_1e
    move-exception v1

    .line 5389
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to notify SystemGestureExclusionListener during register"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5392
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1109
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    const-string v1, "WindowManager"

    if-nez v0, :cond_1d

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void

    .line 1114
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1116
    .local v2, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_40

    .line 1117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return-void

    .line 1121
    :cond_40
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 1122
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2454
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_8

    .line 2455
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 2456
    return-void

    .line 2458
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 236
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .registers 4

    .line 4029
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 4030
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 4031
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_1b

    .line 4032
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4029
    .end local v1  # "token":Lcom/android/server/wm/WindowToken;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4037
    .end local v0  # "i":I
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    .line 4038
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 2587
    return-void

    .line 2589
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2590
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 2594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2597
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2598
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2599
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2600
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 2601
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 2603
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 2604
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2605
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_42

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :cond_42
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    .line 2607
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 2608
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2609
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2610
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_6c

    .line 2612
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2613
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2614
    nop

    .line 2616
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2617
    return-void

    .line 2612
    :catchall_6c
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2613
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    throw v1
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 4
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 1078
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 1079
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_13

    .line 1080
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 1082
    :cond_13
    return-object v0
.end method

.method reparentDisplayContent(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "sc"  # Landroid/view/SurfaceControl;

    .line 5177
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    .line 5178
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 5179
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-nez v0, :cond_12

    .line 5180
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    .line 5182
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5183
    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5184
    return-void
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"  # Landroid/view/SurfaceControl;

    .line 4914
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4915
    return-void
.end method

.method resumeRotationLocked()V
    .registers 2

    .line 1207
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_5

    .line 1208
    return-void

    .line 1211
    :cond_5
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    .line 1212
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_10

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    .line 1215
    :cond_10
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "oldRotation"  # I
    .param p2, "newRotation"  # I
    .param p3, "bounds"  # Landroid/graphics/Rect;

    .line 2749
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 2750
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 2751
    return-void
.end method

.method rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "parentBounds"  # Landroid/graphics/Rect;
    .param p2, "oldRotation"  # I
    .param p3, "newRotation"  # I
    .param p4, "bounds"  # Landroid/graphics/Rect;

    .line 2756
    invoke-static {p3, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 2757
    .local v0, "deltaRotation":I
    nop

    .line 2758
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 2757
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 2760
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2761
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2762
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2763
    return-void
.end method

.method rotationNeedsUpdate()Z
    .registers 5

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    .line 1226
    .local v0, "lastOrientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    .line 1228
    .local v1, "oldRotation":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v2

    .line 1229
    .local v2, "rotation":I
    if-eq v1, v2, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "oldFocus"  # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"  # Lcom/android/server/wm/WindowState;

    .line 3039
    if-eqz p1, :cond_14

    if-eqz p2, :cond_b

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 3044
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3046
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3047
    return-void

    .line 3040
    :cond_14
    :goto_14
    return-void
.end method

.method screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "config"  # Landroid/graphics/Bitmap$Config;

    .line 3927
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 3928
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 3929
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    :cond_16
    return-object v2

    .line 3934
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 3935
    .local v0, "dw":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 3937
    .local v3, "dh":I
    if-lez v0, :cond_70

    if-gtz v3, :cond_24

    goto :goto_70

    .line 3941
    :cond_24
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3944
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 3946
    .local v6, "rot":I
    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_36

    if-ne v6, v7, :cond_3b

    .line 3947
    :cond_36
    if-ne v6, v8, :cond_39

    goto :goto_3a

    :cond_39
    move v7, v8

    :goto_3a
    move v6, v7

    .line 3952
    :cond_3b
    invoke-static {v4, v6, v0, v3}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 3954
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 3955
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v7

    .line 3956
    .local v7, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v7, :cond_50

    .line 3957
    invoke-virtual {v7}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_50

    move v5, v8

    goto :goto_51

    :cond_50
    nop

    .line 3958
    .local v5, "inRotation":Z
    :goto_51
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v8, :cond_5c

    if-eqz v5, :cond_5c

    const-string v8, "Taking screenshot while rotating"

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    :cond_5c
    invoke-static {v4, v0, v3, v5, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3964
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_68

    .line 3965
    const-string v9, "Failed to take screenshot"

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    return-object v2

    .line 3971
    :cond_68
    invoke-virtual {v8, p1}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3972
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 3973
    return-object v1

    .line 3938
    .end local v1  # "ret":Landroid/graphics/Bitmap;
    .end local v4  # "frame":Landroid/graphics/Rect;
    .end local v5  # "inRotation":Z
    .end local v6  # "rot":I
    .end local v7  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v8  # "bitmap":Landroid/graphics/Bitmap;
    :cond_70
    :goto_70
    return-object v2
.end method

.method sendNewConfiguration()V
    .registers 3

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1246
    return-void
.end method

.method setDisplayRotation(Lcom/android/server/wm/DisplayRotation;)V
    .registers 2
    .param p1, "displayRotation"  # Lcom/android/server/wm/DisplayRotation;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1165
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1166
    return-void
.end method

.method setDisplayWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"  # I

    .line 2148
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 2149
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 4
    .param p1, "hasVisible"  # Z

    .line 4020
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_17

    .line 4021
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 4020
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4025
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    .line 4026
    return-void
.end method

.method setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 6
    .param p1, "newFocus"  # Lcom/android/server/wm/AppWindowToken;

    .line 3181
    if-eqz p1, :cond_37

    .line 3182
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3183
    .local v0, "appDisplay":Lcom/android/server/wm/DisplayContent;
    if-eq v0, p0, :cond_37

    .line 3184
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2a
    const-string v3, "none"

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3188
    .end local v0  # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_3d

    .line 3189
    const/4 v0, 0x0

    return v0

    .line 3192
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 3194
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3196
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 3197
    const/4 v0, 0x1

    return v0
.end method

.method setForcedDensity(II)V
    .registers 7
    .param p1, "density"  # I
    .param p2, "userId"  # I

    .line 2360
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2361
    .local v0, "clear":Z
    :goto_9
    const/4 v3, -0x2

    if-ne p2, v3, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    .line 2362
    .local v1, "updateCurrent":Z
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v2, p2, :cond_16

    if-eqz v1, :cond_1d

    .line 2363
    :cond_16
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2364
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2366
    :cond_1d
    if-eqz v1, :cond_20

    .line 2368
    return-void

    .line 2371
    :cond_20
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne p1, v2, :cond_25

    .line 2372
    const/4 p1, 0x0

    .line 2374
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 2375
    return-void
.end method

.method setForcedScalingMode(I)V
    .registers 4
    .param p1, "mode"  # I

    .line 2379
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 2380
    const/4 p1, 0x0

    .line 2383
    :cond_4
    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 2384
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

    .line 2385
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    .line 2388
    return-void
.end method

.method setForcedSize(II)V
    .registers 10
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 2392
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v0, p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 2393
    .local v0, "clear":Z
    :goto_c
    if-nez v0, :cond_2b

    .line 2396
    const/16 v2, 0xc8

    .line 2397
    .local v2, "minSize":I
    const/4 v3, 0x2

    .line 2398
    .local v3, "maxScale":I
    const/16 v4, 0xc8

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2399
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2402
    .end local v2  # "minSize":I
    .end local v3  # "maxScale":I
    :cond_2b
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

    .line 2403
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2404
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2406
    if-eqz v0, :cond_57

    .line 2407
    move p2, v1

    move p1, v1

    .line 2409
    :cond_57
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 2410
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 3
    .param p1, "insets"  # Landroid/graphics/Insets;

    .line 5427
    if-nez p1, :cond_4

    .line 5428
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 5430
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getForwardedInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5431
    return-void

    .line 5433
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setForwardedInsets(Landroid/graphics/Insets;)V

    .line 5434
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5435
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5436
    return-void
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 3269
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3271
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    .line 3272
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 3273
    .local v0, "imePid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3274
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    .line 3273
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onImeWindowSetOnDisplay(II)V

    .line 3276
    .end local v0  # "imePid":I
    :cond_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3277
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 3279
    return-void
.end method

.method setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .param p1, "type"  # I
    .param p2, "win"  # Lcom/android/server/wm/WindowState;
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

    .line 1156
    .local p3, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1157
    return-void
.end method

.method setLayoutNeeded()V
    .registers 3

    .line 3470
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3472
    return-void
.end method

.method setMaxUiWidth(I)V
    .registers 5
    .param p1, "width"  # I

    .line 2317
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_26

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting max ui width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_26
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 2324
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2325
    return-void
.end method

.method setRotation(I)V
    .registers 3
    .param p1, "newRotation"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1174
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->setRotation(I)V

    .line 1176
    return-void
.end method

.method setStackOnDisplay(IZLcom/android/server/wm/TaskStack;)V
    .registers 6
    .param p1, "stackId"  # I
    .param p2, "onTop"  # Z
    .param p3, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 2417
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_24

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 2422
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"  # I

    .line 2142
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 2143
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setDisplayWindowingMode(I)V

    .line 2144
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZ)V
    .registers 6
    .param p1, "onWallpaper"  # Z
    .param p2, "goingToShade"  # Z

    .line 3530
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3531
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3537
    return-void
.end method

.method statusBarVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"  # I

    .line 3641
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 3642
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 3643
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    .line 3644
    return-void
.end method

.method supportsSystemDecorations()Z
    .registers 3

    .line 5153
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5154
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_2a

    .line 5155
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

    .line 5153
    :goto_2b
    return v0
.end method

.method switchUser()V
    .registers 3

    .line 2572
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2573
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2574
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    .line 2575
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2983
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
    .param p1, "listener"  # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5081
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5082
    return-void
.end method

.method unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/ISystemGestureExclusionListener;

    .line 5395
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5396
    return-void
.end method

.method updateBackgroundForAnimator()V
    .registers 3

    .line 3609
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 3610
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3611
    return-void
.end method

.method updateBaseDisplayMetrics(III)V
    .registers 8
    .param p1, "baseWidth"  # I
    .param p2, "baseHeight"  # I
    .param p3, "baseDensity"  # I

    .line 2329
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2330
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2331
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2333
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_58

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le v1, v0, :cond_58

    .line 2334
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2335
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2336
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2338
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_58

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying config restraints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2339
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2347
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    .line 2348
    return-void
.end method

.method updateDisplayInfo()V
    .registers 3

    .line 2238
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 2240
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2241
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2243
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2244
    return-void
.end method

.method updateFocusedWindowLocked(IZI)Z
    .registers 15
    .param p1, "mode"  # I
    .param p2, "updateInputWindows"  # Z
    .param p3, "topFocusedDisplayId"  # I

    .line 3087
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3088
    .local v0, "newFocus":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_a

    .line 3089
    return v2

    .line 3091
    :cond_a
    const/4 v1, 0x0

    .line 3092
    .local v1, "imWindowChanged":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3093
    .local v3, "imWindow":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_24

    .line 3094
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3095
    .local v6, "prevTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 3096
    .local v7, "newTarget":Lcom/android/server/wm/WindowState;
    if-eq v6, v7, :cond_1b

    move v8, v5

    goto :goto_1c

    :cond_1b
    move v8, v2

    :goto_1c
    move v1, v8

    .line 3098
    if-eq p1, v5, :cond_24

    if-eq p1, v4, :cond_24

    .line 3100
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3104
    .end local v6  # "prevTarget":Lcom/android/server/wm/WindowState;
    .end local v7  # "newTarget":Lcom/android/server/wm/WindowState;
    :cond_24
    if-eqz v1, :cond_31

    .line 3105
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3106
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3107
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3109
    :cond_31
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x2

    if-eq v6, v0, :cond_41

    .line 3110
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3113
    :cond_41
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    const/4 v8, 0x4

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v6, :cond_84

    :cond_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changing focus from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " displayId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Callers="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3113
    const-string v9, "WindowManager"

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_84
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3117
    .local v6, "oldFocus":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3118
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3120
    if-eqz v0, :cond_a3

    .line 3121
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3122
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3124
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 3128
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v2, v9, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 3132
    :cond_a3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v9

    invoke-virtual {v9, v6, v0}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v9

    .line 3134
    .local v9, "focusChanged":I
    if-eqz v1, :cond_be

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v6, v10, :cond_be

    .line 3136
    if-ne p1, v7, :cond_b9

    .line 3137
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 3138
    and-int/lit8 v9, v9, -0x2

    goto :goto_be

    .line 3139
    :cond_b9
    if-ne p1, v4, :cond_be

    .line 3142
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3146
    :cond_be
    :goto_be
    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_d4

    .line 3148
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3149
    if-ne p1, v7, :cond_cb

    .line 3150
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_d4

    .line 3151
    :cond_cb
    if-ne p1, v8, :cond_d4

    .line 3152
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 3156
    :cond_d4
    :goto_d4
    if-eq p1, v5, :cond_dd

    .line 3158
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 3161
    :cond_dd
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 3166
    invoke-virtual {p0, v6, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3168
    if-ne p1, v7, :cond_eb

    .line 3169
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3171
    :cond_eb
    return v5
.end method

.method updateLocation(Lcom/android/server/wm/WindowState;II)V
    .registers 6
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 5204
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_24

    .line 5208
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p2, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p3, :cond_23

    .line 5209
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 5210
    iput p3, v0, Landroid/graphics/Point;->y:I

    .line 5211
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_23

    .line 5212
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 5215
    :cond_23
    return-void

    .line 5205
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given window is not the parent window of this display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;
    .registers 9
    .param p1, "currentConfig"  # Landroid/content/res/Configuration;
    .param p2, "freezeDisplayToken"  # Landroid/os/IBinder;
    .param p3, "forceUpdate"  # Z

    .line 1305
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-nez v0, :cond_6

    .line 1306
    const/4 v0, 0x0

    return-object v0

    .line 1309
    :cond_6
    const/4 v0, 0x0

    .line 1310
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1313
    if-eqz p2, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_20

    .line 1314
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 1315
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_20

    .line 1316
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 1319
    .end local v1  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_20
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    move-object v0, v1

    .line 1320
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_65

    .line 1321
    :cond_2a
    if-eqz p1, :cond_65

    .line 1327
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 1328
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1329
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1330
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_65

    .line 1331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1333
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1334
    .local v2, "anim":[I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1336
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    aget v4, v2, v4

    aget v1, v2, v1

    invoke-virtual {v3, v4, v1, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1337
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v1

    .line 1341
    .end local v2  # "anim":[I
    :cond_65
    :goto_65
    return-object v0
.end method

.method updateOrientationFromAppTokens()Z
    .registers 2

    .line 1293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationAndSendNewConfigIfNeeded()Z
    .registers 2

    .line 1361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    .line 1362
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1365
    :cond_a
    return v0
.end method

.method updateRotationUnchecked()Z
    .registers 2

    .line 1375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .registers 13
    .param p1, "forceUpdate"  # Z

    .line 1395
    const/4 v0, 0x0

    const-string v1, "WindowManager"

    if-nez p1, :cond_3f

    .line 1396
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-lez v2, :cond_13

    .line 1399
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_12

    const-string v2, "Deferring rotation, rotation is paused."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_12
    return v0

    .line 1403
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1404
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 1405
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1409
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_2e

    const-string v3, "Deferring rotation, animation in progress."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_2e
    return v0

    .line 1412
    :cond_2f
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v3, :cond_3f

    .line 1416
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_3e

    const-string v3, "Deferring rotation, still finishing previous rotation"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_3e
    return v0

    .line 1422
    .end local v2  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_3f
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v2, :cond_4f

    .line 1424
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_4e

    const-string v2, "Deferring rotation, display is not enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_4e
    return v0

    .line 1428
    :cond_4f
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1429
    .local v2, "oldRotation":I
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1430
    .local v3, "lastOrientation":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v4

    .line 1431
    .local v4, "rotation":I
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_8b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Computed rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for display id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " based on lastOrientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and oldRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_8b
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/server/wm/DisplayPolicy;->shouldRotateSeamlessly(Lcom/android/server/wm/DisplayRotation;II)Z

    move-result v5

    .line 1437
    .local v5, "mayRotateSeamlessly":Z
    if-eqz v5, :cond_c7

    .line 1438
    sget-object v6, Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 1439
    .local v6, "seamlessRotated":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_a0

    if-nez p1, :cond_a0

    .line 1444
    return v0

    .line 1449
    :cond_a0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 1450
    const/4 v5, 0x0

    .line 1452
    :cond_a7
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a8
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_c7

    .line 1453
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Session;

    invoke-virtual {v8}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 1454
    const/4 v5, 0x0

    .line 1455
    goto :goto_c7

    .line 1452
    :cond_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 1459
    .end local v6  # "seamlessRotated":Lcom/android/server/wm/WindowState;
    .end local v7  # "i":I
    :cond_c7
    :goto_c7
    move v6, v5

    .line 1461
    .local v6, "rotateSeamlessly":Z
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const-string v8, "Display id="

    if-eqz v7, :cond_f2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " selected orientation "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", got rotation "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_f2
    if-ne v2, v4, :cond_f5

    .line 1467
    return v0

    .line 1470
    :cond_f5
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_125

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rotation changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", lastOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1484
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1486
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v1, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1487
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, p0, v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1490
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1491
    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 1492
    .local v7, "anim":[I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1494
    if-nez v6, :cond_150

    .line 1495
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    aget v0, v7, v0

    aget v9, v7, v1

    invoke-virtual {v8, v0, v9, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    goto :goto_155

    .line 1502
    :cond_150
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->startSeamlessRotation()V

    .line 1505
    :goto_155
    return v1
.end method

.method updateSystemGestureExclusion()Z
    .registers 7

    .line 5232
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 5234
    return v1

    .line 5237
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion()Landroid/graphics/Region;

    move-result-object v0

    .line 5239
    .local v0, "systemGestureExclusion":Landroid/graphics/Region;
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_4d

    if-eqz v2, :cond_1b

    .line 5240
    nop

    .line 5254
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5240
    return v1

    .line 5242
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5243
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_4d

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_43

    .line 5245
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5246
    invoke-interface {v3, v4, v0}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_38
    .catchall {:try_start_2a .. :try_end_37} :catchall_4d

    .line 5249
    goto :goto_40

    .line 5247
    :catch_38
    move-exception v3

    .line 5248
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_39
    const-string v4, "WindowManager"

    const-string v5, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5243
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 5251
    .end local v1  # "i":I
    :cond_43
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_4d

    .line 5252
    nop

    .line 5254
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5252
    return v2

    .line 5254
    :catchall_4d
    move-exception v1

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    throw v1
.end method

.method updateSystemGestureExclusionLimit()V
    .registers 3

    .line 2253
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 2255
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 2256
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .registers 5
    .param p1, "visibility"  # I
    .param p2, "globalDiff"  # I

    .line 3666
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3683
    return-void
.end method

.method updateTouchExcludeRegion()V
    .registers 11

    .line 2516
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2517
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_a
    if-nez v0, :cond_12

    .line 2518
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_5c

    .line 2520
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2521
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v7

    .line 2522
    .local v7, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2523
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "stackNdx":I
    :goto_2f
    if-ltz v8, :cond_4b

    .line 2525
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/TaskStack;

    .line 2526
    .local v9, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v1, v9

    move-object v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2524
    .end local v9  # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v8, v8, -0x1

    goto :goto_2f

    .line 2532
    .end local v8  # "stackNdx":I
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 2533
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2536
    .end local v7  # "delta":I
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 2540
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2541
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2543
    :cond_76
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7e
    if-ltz v1, :cond_99

    .line 2544
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2545
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2546
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2543
    .end local v2  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_7e

    .line 2548
    .end local v1  # "i":I
    :cond_99
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->amendWindowTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2550
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_bf

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 2551
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 2552
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2553
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2555
    :cond_bf
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 2556
    return-void
.end method

.method updateWindowsForAnimator()V
    .registers 3

    .line 3602
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3603
    return-void
.end method

.method waitForAllWindowsDrawn()V
    .registers 4

    .line 3709
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3710
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3719
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 12
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 2805
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2806
    return-void

    .line 2809
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2810
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2811
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2812
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_28
    if-ltz v2, :cond_3d

    .line 2813
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2814
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/TaskStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2812
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 2816
    .end local v2  # "stackNdx":I
    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2817
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/PinnedStackController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2818
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_59
    if-ltz v2, :cond_6e

    .line 2819
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2820
    .local v3, "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000006L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2818
    .end local v3  # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_59

    .line 2822
    .end local v2  # "i":I
    :cond_6e
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2  # "i":I
    :goto_76
    if-ltz v2, :cond_8b

    .line 2823
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2824
    .restart local v3  # "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000007L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2822
    .end local v3  # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_76

    .line 2826
    .end local v2  # "i":I
    :cond_8b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2  # "i":I
    :goto_93
    if-ltz v2, :cond_a8

    .line 2827
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2828
    .restart local v3  # "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000008L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2826
    .end local v3  # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_93

    .line 2830
    .end local v2  # "i":I
    :cond_a8
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2831
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2832
    const-wide v2, 0x1050000000bL

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2833
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2834
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 2835
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_da

    .line 2836
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ScreenRotationAnimation;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2838
    :cond_da
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/DisplayFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2839
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v4, 0x10b00000010L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/AppTransition;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2840
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_fa

    .line 2841
    const-wide v4, 0x1090000000fL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2843
    :cond_fa
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_102
    if-ltz v3, :cond_119

    .line 2844
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000011L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2843
    add-int/lit8 v3, v3, -0x1

    goto :goto_102

    .line 2846
    .end local v3  # "i":I
    :cond_119
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3  # "i":I
    :goto_121
    if-ltz v3, :cond_138

    .line 2847
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000012L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2846
    add-int/lit8 v3, v3, -0x1

    goto :goto_121

    .line 2849
    .end local v3  # "i":I
    :cond_138
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3  # "i":I
    :goto_140
    if-ltz v3, :cond_157

    .line 2850
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000013L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2849
    add-int/lit8 v3, v3, -0x1

    goto :goto_140

    .line 2852
    .end local v3  # "i":I
    :cond_157
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2853
    return-void
.end method
